unit frmDM;

interface

uses
  SysUtils, Classes, DB, ADODB,Dialogs,Controls,cxTextEdit,cxDropDownEdit,
  cxMaskEdit,StdCtrls,cxCheckListBox, cxButtons, frxClass, frxDBSet,
  BMDThread, frxBarcode;

type
  TDM = class(TDataModule)
    Connection: TADOConnection;
    ADOCom: TADOCommand;
    ADORun: TADODataSet;
    DataS: TDataSource;
    ADOStored: TADOStoredProc;
    ADOReport: TADODataSet;
    frxDBDataset1: TfrxDBDataset;
    ADOspReport: TADOStoredProc;
    frxDBInvoicePrint: TfrxDBDataset;
    frxReport1: TfrxReport;
    BMDThread1: TBMDThread;
    CnnAlarmStore: TADOConnection;
    ADOAlarmStore: TADODataSet;
    ADOSPAlarmStore: TADOStoredProc;
    frxBarCodeObject1: TfrxBarCodeObject;
    procedure BMDThread1Execute(Sender: TObject; Thread: TBMDExecuteThread;
      var Data: Pointer);
  private

  public
      Function GetAlarm(Combo : TcxComboBox ;lab : string):Boolean;overload;
      Function GetAlarm(msk : TcxMaskEdit ;lab : string):Boolean;overload;
      Function GetAlarm(Edit : TcxTextEdit ;lab : string):Boolean;overload;

      Procedure FixDate(Msk : TcxMaskEdit);overload;
      Procedure FixYear13(Msk : TcxMaskEdit);overload;
      Function  FixDate(SDate : String):String;overload;


      Procedure FillReportDay(Stype,Srep : String);
      Function  DateTODays(DateOne:string;DateTwo:string):Integer;
      Procedure FillCombo(Combo1,Combo2 : TcxComboBox;F1,F2,Table,Where,Field:string);
      Procedure AlarmStorage;
      Procedure AlarmQuchSend;
      Procedure AlarmQuchResive;
      Function  MathSandogh(Userid,DateIN:string):integer;
      Procedure FillDailyReport(user,Datesave:String);
      Procedure ApplyPermission();
      procedure Julian2Persian(Y,M,D:Word;var FY,FM,FD:Word);

      Procedure BTNState(Btn1,Btn2,Btn3,Btn4,Btn5:TcxButton;V1,V2,V3,V4,V5:String);

      function AlignField (a:TADODataSet):TADODataSet;
      function GetMax(Table,fmax,Where:string):integer;
      function GetFieldMax(fmax:string):integer;
      function GetCount(Table,fCount,Where:string):integer;

      procedure Select (Table,Field,Where:string);
      procedure Delete (Table,Where:string;Qustion:integer=1);
      procedure Update (Table,NewVal,Where:string);
      procedure insert (Table,Field,Value:string);

      Function Conn():Boolean;
  end;

var
  DM: TDM;

implementation

uses frmMain, frmPermission;

{$R *.dfm}

Function TDM.Conn():Boolean;
var
    Server,User,pass:string;
    MyFile: TextFile;
    Exists : Boolean;
begin
    AssignFile(MyFile,'Setting.txt');
    Reset(MyFile);
    Readln(MyFile,Server);
    Readln(MyFile,user);
    Readln(MyFile,pass);
    CloseFile(MyFile);

    try
       begin
           Connection.Connected := False;
           Connection.ConnectionString :='Provider=SQLOLEDB.1;Password=' + pass + ';Persist Security Info=True;User ID=' + user + ';Initial Catalog=ParsaSM;Data Source=' + Server +
                                         ';Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Use Encryption for Data=False;Tag with column collation when possible=False';
           Connection.Connected := True;

           CnnAlarmStore.Connected := False;
           CnnAlarmStore.ConnectionString := Connection.ConnectionString;
           CnnAlarmStore.Connected := True;
       end;
    except
       Connection.Connected := False;
       Connection.ConnectionString:='Provider=SQLOLEDB.1;Password=' + pass + ';Persist Security Info=True;User ID=' + user + ';Initial Catalog=master;Data Source=' + Server +
                                      ';Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Use Encryption for Data=False;Tag with column collation when possible=False';
       Connection.Connected := True;
       if Connection.Connected = True then
       Begin
           DM.ADORun.Close;
           DM.ADORun.CommandText:='sp_databases';
           DM.ADORun.Open;
           Exists := False;
           while not DM.ADORun.Eof do
           begin
               if LowerCase(DM.ADORun.Fields[0].AsString)='parsasm' then
               Begin
                   Exists := True;
                   Break;
               End;
               DM.ADORun.Next;
           end;
           if Exists=False then
           begin
               DM.ADOCom.Cancel;
               DM.ADOCom.CommandText:='EXEC sp_attach_db @dbname = N'+QuotedStr('ParsaSM')+',@filename1 = N'+QuotedStr(Main.WPath+'Bank\ParsaSM_Data.mdf')+',@filename2 = N'+QuotedStr(Main.WPath+'Bank\ParsaSM_Log.ldf');
               DM.ADOCom.Execute;

               Connection.Connected := False;
               Connection.ConnectionString :='Provider=SQLOLEDB.1;Password=' + pass + ';Persist Security Info=True;User ID=' + user + ';Initial Catalog=ParsaSM;Data Source=' + Server +
                                             ';Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Use Encryption for Data=False;Tag with column collation when possible=False';
               Connection.Connected := True;
               CnnAlarmStore.Connected := False;
               CnnAlarmStore.ConnectionString := Connection.ConnectionString;
               CnnAlarmStore.Connected := True;
           end;
       End;
    end;
    Conn := Connection.Connected;
end;

procedure TDM.Julian2Persian(Y,M,D:Word;var FY,FM,FD:Word);
const
 ShamsiDays : array[1..12] of Word = (31,31,31,31,31,31,30,30,30,30,30,29) ;
 MiladiDays : array[1..12] of Word = (31,28,31,30,31,30,31,31,30,31,30,31) ;
var
  R                : Real ;
  Kabiseh,Kably    : Boolean ;
  DaysSum,Days     : Word ;
  Sal,Mah,Rooz     : Word ;
  I                : Integer ;
begin
  DaysSum := 0 ;
  if Y=0 then
    Y:=2000
  else if Y<1900 then
    Y:=1900+Y;
  R:=Abs(y-1996)/4 ;
  Rooz:=0;
  Mah:=0;
  Days:=0;
  if R = Trunc(R) then Kabiseh := True
                  else Kabiseh := False ;
  R := Abs(y-1-1996) / 4 ;
  if R = Trunc(R) then Kably := True
  else Kably := False ;
  if m > 1 then
     begin
       for I := m downto 2 do
           DaysSum := DaysSum + MiladiDays[I-1] ;
       DaysSum := DaysSum + d;
     end
       else
       DaysSum := DaysSum + d ;
  if kabiseh and (DaysSum>=59) then Inc(DaysSum);
  if (Kabiseh and(DaysSum<80))
     or(not Kabiseh and (DaysSum<79))
     or(not Kabiseh and Kably and (DaysSum<80))
     then
         Sal := y - 622
  else
     Sal := y - 621 ;
  if Kabiseh and (DaysSum>79) then days := DaysSum - 79  ;
  if Kabiseh and (DaysSum<80) then Days := DaysSum + 286 ;
  if not Kabiseh and not Kably and (DaysSum>79) then Days := DaysSum - 79 ;
  if not Kabiseh and not Kably and (DaysSum<80) then Days := DaysSum + 286;
  if not Kabiseh and Kably and (DaysSum>79) then Days := DaysSum - 79 ;
  if not Kabiseh and Kably and (DaysSum<80) then Days := DaysSum + 287;
  DaysSum := Days ;
  if daysSum <=186 then
                   begin
                      Mah  := (DaysSum div 31) + 1 ;
                      Rooz := DaysSum mod 31 ;
                      If Rooz=0 then Rooz := 31 ;
                      If Rooz=31then Mah  := Mah-1 ;
                   end;
  if DaysSum > 186 then
                   begin
                      DaysSum := DaysSum - 186 ;
                      if DaysSum mod 30 = 0 then
                         Mah := (DaysSum div 30) + 6
                      else
                         Mah := (DaysSum div 30) + 7 ;
                      Rooz := DaysSum mod 30 ;
                      If Rooz=0 then Rooz := 30 ;
                   end;
  FY:=Sal;
  FD:=Rooz;
  FM:=Mah;
end;

Procedure TDM.ApplyPermission();
begin
    Main.CmdStorage.Enabled := False;
    Main.CmdKala.Enabled := False;
    Main.CmdBanks.Enabled := False;
    Main.CmdAccounts.Enabled := False;
    Main.CmdShop.Enabled := False;
    Main.dxBarLargeButton24.Enabled := False;
    Main.CmdGroupingKala.Enabled := False;
    Main.dxBarLargeButton31.Enabled := False;
    Main.dxBarLargeButton33.Enabled := False;
    Main.dxBarLargeButton32.Enabled := False;
    Main.dxBarLargeButton34.Enabled := False;
    Main.dxBarLargeButton6.Enabled := False;
    Main.dxBarLargeButton7.Enabled := False;
    Main.dxBarLargeButton4.Enabled := False;
    Main.dxBarLargeButton5.Enabled := False;
    Main.dxBarLargeButton28.Enabled := False;
    Main.dxBarLargeButton36.Enabled := False;
    Main.dxBarLargeButton27.Enabled := False;
    Main.dxBarLargeButton20.Enabled := False;
    Main.dxBarLargeButton21.Enabled := False;
    Main.dxBarLargeButton22.Enabled := False;
    Main.dxBarLargeButton23.Enabled := False;
    Main.dxBarButton26.Enabled := False;
    Main.dxBarButton100.Enabled := False;
    Main.dxBarLargeButton35.Enabled := False;
    Main.dxBarSubItem14.Enabled := False;
    Main.dxBarSubItem18.Enabled := False;
    Main.dxBarSubItem13.Enabled := False;
    Main.dxBarSubItem12.Enabled := False;
    Main.dxBarSubItem10.Enabled := False;
    Main.dxBarSubItem1.Enabled := False;
    Main.dxBarSubItem19.Enabled := False;
    Main.dxBarSubItem17.Enabled := False;
    Main.dxBarSubItem9.Enabled := False;
    Main.dxBarSubItem8.Enabled := False;
    Main.dxBarSubItem3.Enabled := False;
    Main.dxBarSubItem7.Enabled := False;
    Main.dxBarSubItem6.Enabled := False;
    Main.dxBarSubItem5.Enabled := False;
    Main.dxBarSubItem4.Enabled := False;
    Main.dxBarSubItem20.Enabled := False;
    Main.dxBarLargeButton18.Enabled := False;
    Main.dxBarLargeButton16.Enabled := False;
    Main.dxBarLargeButton15.Enabled := False;
    Main.dxBarLargeButton14.Enabled := False;
    Main.dxBarCombo1.Enabled := False;
    Main.dxBarCombo2.Enabled := False;
    Main.dxBarLargeButton13.Enabled := False;
    Main.dxBarLargeButton12.Enabled := False;
    Main.dxBarLargeButton8.Enabled := False;
    Main.dxBarLargeButton10.Enabled := False;
    Main.dxBarLargeButton11.Enabled := False;
    Main.dxBarLargeButton30.Enabled := False;
    if main.UserNow='admin' then
    begin
        Main.dxBarLargeButton8.Enabled := True;
        Main.dxBarLargeButton10.Enabled := True;
    end;
    Main.dxBarLargeButton11.Enabled := False;
    Main.dxBarLargeButton30.Enabled := False;

    if Length(Main.Permission)<=0 then
       Exit;

    Main.CmdStorage.Enabled := StrToBool(Main.Permission[3]);
    Main.CmdKala.Enabled := StrToBool(Main.Permission[8]);
    Main.CmdBanks.Enabled := StrToBool(Main.Permission[13]);
    Main.CmdAccounts.Enabled := StrToBool(Main.Permission[18]);
    Main.CmdShop.Enabled := StrToBool(Main.Permission[23]);
    Main.dxBarLargeButton24.Enabled := StrToBool(Main.Permission[28]);
    Main.CmdGroupingKala.Enabled := StrToBool(Main.Permission[33]);
    Main.dxBarLargeButton31.Enabled := StrToBool(Main.Permission[39]);
    Main.dxBarLargeButton33.Enabled := StrToBool(Main.Permission[44]);
    Main.dxBarLargeButton32.Enabled := StrToBool(Main.Permission[49]);
    Main.dxBarLargeButton34.Enabled := StrToBool(Main.Permission[54]);
    Main.dxBarLargeButton6.Enabled := StrToBool(Main.Permission[60]);
    Main.dxBarLargeButton7.Enabled := StrToBool(Main.Permission[65]);
    Main.dxBarLargeButton4.Enabled := StrToBool(Main.Permission[70]);
    Main.dxBarLargeButton5.Enabled := StrToBool(Main.Permission[75]);
    Main.dxBarLargeButton28.Enabled := StrToBool(Main.Permission[80]);
    Main.dxBarLargeButton36.Enabled := StrToBool(Main.Permission[85]);
    Main.dxBarLargeButton27.Enabled := StrToBool(Main.Permission[91]);
    Main.dxBarLargeButton20.Enabled := StrToBool(Main.Permission[93]);
    Main.dxBarLargeButton21.Enabled := StrToBool(Main.Permission[95]);
    Main.dxBarLargeButton22.Enabled := StrToBool(Main.Permission[97]);
    Main.dxBarLargeButton23.Enabled := StrToBool(Main.Permission[99]);
    Main.dxBarButton26.Enabled := StrToBool(Main.Permission[101]);
    Main.dxBarButton100.Enabled := StrToBool(Main.Permission[103]);
    Main.dxBarLargeButton35.Enabled := StrToBool(Main.Permission[105]);
    Main.dxBarSubItem14.Enabled := StrToBool(Main.Permission[108]);
    Main.dxBarSubItem18.Enabled := StrToBool(Main.Permission[110]);
    Main.dxBarSubItem13.Enabled := StrToBool(Main.Permission[112]);
    Main.dxBarSubItem12.Enabled := StrToBool(Main.Permission[114]);
    Main.dxBarSubItem10.Enabled := StrToBool(Main.Permission[116]);
    Main.dxBarSubItem1.Enabled := StrToBool(Main.Permission[118]);
    Main.dxBarSubItem19.Enabled := StrToBool(Main.Permission[120]);
    Main.dxBarSubItem17.Enabled := StrToBool(Main.Permission[122]);
    Main.dxBarSubItem9.Enabled := StrToBool(Main.Permission[124]);
    Main.dxBarSubItem8.Enabled := StrToBool(Main.Permission[126]);
    Main.dxBarSubItem3.Enabled := StrToBool(Main.Permission[128]);
    Main.dxBarSubItem7.Enabled := StrToBool(Main.Permission[130]);
    Main.dxBarSubItem6.Enabled := StrToBool(Main.Permission[132]);
    Main.dxBarSubItem5.Enabled := StrToBool(Main.Permission[134]);
    Main.dxBarSubItem4.Enabled := StrToBool(Main.Permission[136]);
    Main.dxBarSubItem20.Enabled := StrToBool(Main.Permission[138]);
    Main.dxBarLargeButton18.Enabled := StrToBool(Main.Permission[141]);
    Main.dxBarLargeButton16.Enabled := StrToBool(Main.Permission[143]);
    Main.dxBarLargeButton15.Enabled := StrToBool(Main.Permission[145]);
    Main.dxBarLargeButton14.Enabled := StrToBool(Main.Permission[147]);
    Main.dxBarCombo1.Enabled := StrToBool(Main.Permission[149]);
    Main.dxBarCombo2.Enabled := Main.dxBarCombo1.Enabled;
    Main.dxBarLargeButton13.Enabled := StrToBool(Main.Permission[151]);
    Main.dxBarLargeButton12.Enabled := StrToBool(Main.Permission[153]);
    Main.dxBarLargeButton8.Enabled := StrToBool(Main.Permission[156]);
    Main.dxBarLargeButton10.Enabled := StrToBool(Main.Permission[158]);
    Main.dxBarLargeButton11.Enabled := StrToBool(Main.Permission[160]);
    Main.dxBarLargeButton30.Enabled := StrToBool(Main.Permission[162]);
end;

Function TDM.DateTODays(DateOne:string;DateTwo:string):Integer;
var
   Year1,Mon1,day1,sum1,m1,y1:integer;
   Year2,Mon2,day2,sum2,m2,y2:integer;
begin
   year1:=strtoint(copy(DateOne,1,4));
   y1:=year1 * 365;
   mon1 :=strtoint(copy(DateOne,6,2));
   if (mon1>=1) and (mon1<=6) then
      m1:=mon1 * 31;
   if (mon1>=7) and (mon1<=11) then
      m1:=(mon1 * 30)+6;
   if mon1=12 then
      m1:=(mon1 * 29)+17;
   day1 := strtoint(copy(DateOne,9,2));
   sum1 := y1 + m1 + day1;
   year2:=strtoint(copy(DateTwo,1,4));
   y2:=year2 * 365;
   mon2 :=strtoint(copy(DateTwo,6,2));
   if (mon2>=1) and (mon2<=6) then
      m2:=mon2 * 31;
   if (mon2>=7) and (mon2<=11) then
      m2:=(mon2 * 30)+6;
   if mon2=12 then
      m2:=(mon2 * 29)+17;
   day2 := strtoint(copy(DateTwo,9,2));
   sum2 := y2+ m2 + day2;
   DateTODays:= sum2 - sum1;
end;

Procedure TDM.FillReportDay(Stype,Srep : String);
begin
    with Main.ReportDay.Items.Add do
    begin
        Caption := Stype;
        SubItems.Insert(0,Srep);
        SubItems.Insert(1,inttostr(Main.ReportDay.Items.Count));
    end;
end;

Procedure TDM.FixDate(Msk : TcxMaskEdit);
VAR
    Y,D,M,T : String;
    i , X   : byte;
BEGIN
    if (length(Msk.Text)>=6) and (length(Msk.Text)<10) and (Msk.Text<>'') then
    begin
        x := 0;
        T := msk.Text;
        For i:=1 to length(t) do
        begin
            case X of
               0 :  if Copy(T,i,1) <> '/' then
                       Y := Y + Copy(T,i,1)
                       else
                       X := 1;
               1 :  if Copy(T,i,1) <> '/' then
                       M := M + Copy(T,i,1)
                       else
                       X := 2;
               2 :  if Copy(T,i,1) <> '/' then
                       D := D + Copy(T,i,1);
            end;
        end;
        if length(Y) <= 2 then
           Y := Copy(Main.DateNow,1,2) + Y;
        if length(M) < 2 then
           M := '0' + M;
        if length(D) < 2 then
           D := '0' + D;
        Msk.Text := Y + '/' + M + '/' + D;
    end;
END;

Procedure TDM.FixYear13(Msk : TcxMaskEdit);
VAR
    Y,T : String;
    i : byte;
BEGIN
    if (length(Msk.Text)>=3) and (Msk.Text<>'') then
    begin
        T := msk.Text;
        For i:=1 to length(t) do
            if Copy(T,i,1) <> '/' then
               Y := Y + Copy(T,i,1)
               else
               Break;
        If length(Y) <= 2 then
        begin
           Y := Copy(Main.DateNow,1,2) + Msk.Text;
           Msk.Text := Y;
        end;
    end;
END;

Function TDM.FixDate(SDate : String):String;
VAR
    Y,D,M,T : String;
    i , X   : byte;
BEGIN
    if (length(SDate)>=6) and (length(SDate)<=10) then
    begin
        x := 0;
        T := SDate;
        For i:=1 to length(t) do
        begin
            case X of
               0 :  if Copy(T,i,1) <> '/' then
                       Y := Y + Copy(T,i,1)
                       else
                       X := 1;
               1 :  if Copy(T,i,1) <> '/' then
                       M := M + Copy(T,i,1)
                       else
                       X := 2;
               2 :  if Copy(T,i,1) <> '/' then
                       D := D + Copy(T,i,1);
            end;
        end;
        if length(Y) <= 2 then
           Y := '13' + Y;
        if length(M) < 2 then
           M := '0' + M;
        if length(D) < 2 then
           D := '0' + D;
        SDate := Y + '/' + M + '/' + D;
        FixDate := SDate;
    end
    else
    FixDate := '';
end;

Procedure TDM.BTNState(Btn1,Btn2,Btn3,Btn4,Btn5:TcxButton;V1,V2,V3,V4,V5:String);
begin
    Btn1.Enabled := StrToBool(V1);
    Btn2.Enabled := StrToBool(V2);
    Btn3.Enabled := StrToBool(V3);
    Btn4.Enabled := StrToBool(V4);
    if Btn5 <> nil then
       Btn5.Enabled := StrToBool(V5);
end;

Procedure TDM.AlarmQuchSend;
Var
    ADO : TADODataSet;
    ToAlarm ,ToDay : integer;
begin
    Main.LVQuchSend.Items.Clear;
    Select('QuchSend q,banks b, StorageL3 s','q.code,q.serial,q.date,q.cost,q.number,q.description,b.name bankname,s.name sellername','q.bank=b.code and q.seller=s.Sn3 and q.state='+QuotedStr('Å«” ‰‘œÂ'));
    if ADORun.RecordCount > 0 then
    begin
       ADO := TADODataSet.Create(Self);
       ADO.Connection := Connection;
       ADO.CommandText :='Select QuchSendToAlarm from Settings';
       ADO.Open;
       if ADO.RecordCount > 0 then
          ToAlarm := ADO.Fields[0].AsInteger;
       ADO.Close;
       while not ADORun.Eof do
       begin
           ToDay := DateTODays(Main.DateNow,ADORun.FieldValues['Date']);
           if ToDay <= ToAlarm then
           begin
               with Main.LVQuchSend.Items.Add do
               begin
                   if ToDay < 0 then
                   begin
                      Caption := inttostr(ABS(ToDay)) + ' —Ê“ ê–‘ Â';
                      ImageIndex := 2;
                   end;
                   if ToDay = 0 then
                   begin
                      Caption := '«„—Ê“';
                      ImageIndex := 1;
                   end;
                   if ToDay > 0 then
                   begin
                      Caption := inttostr(ToDay) + ' —Ê“';
                      ImageIndex := 0;
                   end;
                   SubItems.Insert(0,ADORun.FieldValues['description']);
                   SubItems.Insert(1,ADORun.FieldValues['code']);
                   SubItems.Insert(2,ADORun.FieldValues['sellername']);
                   SubItems.Insert(3,ADORun.FieldValues['bankname']);
                   SubItems.Insert(4,ADORun.FieldValues['cost']);
                   SubItems.Insert(5,ADORun.FieldValues['Date']);
                   SubItems.Insert(6,ADORun.FieldValues['serial']);
                   SubItems.Insert(7,inttostr(Main.LVQuchSend.Items.Count));
               end;
           end;
           ADORun.Next;
       end;
    end;   
end;

Procedure TDM.AlarmQuchResive;
Var
    ADO : TADODataSet;
    ToAlarm ,ToDay : integer;
begin
    Main.LVQuchResive.Items.Clear;
    Select('QuchResive q,banks b, Customer s','q.code,q.serial,q.date,q.cost,q.number,q.description,b.name bankname,s.name buyername','q.bank=b.code and q.buyer=s.code and q.state='+QuotedStr('Å«” ‰‘œÂ'));
    if ADORun.RecordCount > 0 then
    begin
       ADO := TADODataSet.Create(Self);
       ADO.Connection := Connection;
       ADO.CommandText :='Select QuchResiveToAlarm from Settings';
       ADO.Open;
       if ADO.RecordCount > 0 then
          ToAlarm := ADO.Fields[0].AsInteger;
       ADO.Close;
       while not ADORun.Eof do
       begin
           ToDay := DateTODays(Main.DateNow,ADORun.FieldValues['Date']);
           if ToDay <= ToAlarm then
           begin
               with Main.LVQuchResive.Items.Add do
               begin
                   if ToDay < 0 then
                   begin
                      Caption := inttostr(ABS(ToDay)) + ' —Ê“ ê–‘ Â';
                      ImageIndex := 5;
                   end;
                   if ToDay = 0 then
                   begin
                      Caption := '«„—Ê“';
                      ImageIndex := 4;
                   end;
                   if ToDay > 0 then
                   begin
                      Caption := inttostr(ToDay) + ' —Ê“';
                      ImageIndex := 3;
                   end;
                   SubItems.Insert(0,ADORun.FieldValues['description']);
                   SubItems.Insert(1,ADORun.FieldValues['code']);
                   SubItems.Insert(2,ADORun.FieldValues['buyername']);
                   SubItems.Insert(3,ADORun.FieldValues['bankname']);
                   SubItems.Insert(4,ADORun.FieldValues['cost']);
                   SubItems.Insert(5,ADORun.FieldValues['Date']);
                   SubItems.Insert(6,ADORun.FieldValues['serial']);
                   SubItems.Insert(7,inttostr(Main.LVQuchResive.Items.Count));
               end;
           end;
           ADORun.Next;
       end;
    end;   
end;

Function TDM.MathSandogh(Userid,DateIN:string):integer;
Begin
    ADOStored.Active := False;
    ADOStored.Parameters.Clear;
    ADOStored.ProcedureName:='dbo.DailySandogh';
    ADOStored.Parameters.Refresh;
    ADOStored.Parameters.ParamValues['@username'] := Userid;
    ADOStored.Parameters.ParamValues['@D1'] := DateIN;
    ADOStored.ExecProc;
    MathSandogh := ADOStored.Parameters.ParamValues['@RETURN_VALUE'];
end;

Procedure TDM.FillDailyReport(user,Datesave:String);
begin
    Main.ReportDay.Items.Clear;
    ADOReport.Close;
    ADOReport.CommandText:='select [id],Kind,[description] from dailyreport where UserSave=' + QuotedStr(user) + ' and datesave=' + QuotedStr(Datesave);
    ADOReport.open;
    if ADOReport.RecordCount > 0 then
    begin
       while not ADOReport.Eof do
       begin
           with Main.ReportDay.Items.Add do
           begin
               Caption := ADOReport.FieldValues['Kind'];
               SubItems.Insert(0,ADOReport.FieldValues['Description']);
               SubItems.Insert(1,inttostr(Main.ReportDay.Items.Count));
           end;
           ADOReport.Next;
       end;
    end;
end;

Procedure TDM.AlarmStorage;
Begin
    BMDThread1.Start;
end;

procedure TDM.BMDThread1Execute(Sender: TObject; Thread: TBMDExecuteThread;
  var Data: Pointer);
var
    Count : Double;
begin
    Main.LVStorage.Items.Clear;
    ADOAlarmStore.Close;
    ADOAlarmStore.CommandText:='select s.StorageNO,sl.[name] nameanbar,s.code CodeKala,k.[name] namekala,s.requestpoint,k.code '+
                               'from kala k , Storage s , Storagel3 sl '+
                               'where k.codekala=s.code and s.storageNO=sl.SN3 and Alarm=1 order by sl.[name] ';
    ADOAlarmStore.Open;
    //Select('kala k , Storage s , Storagel3 sl','s.StorageNO,sl.[name] nameanbar,s.code CodeKala,k.[name] namekala,s.requestpoint,k.code','k.codekala=s.code and s.storageNO=sl.SN3 and Alarm=1 order by sl.[name]');
    if ADOAlarmStore.RecordCount > 0 then
    begin
       while not ADOAlarmStore.Eof do
       begin
           Count := 0;
           ADOSPAlarmStore.Active := False;
           ADOSPAlarmStore.Parameters.Clear;
           ADOSPAlarmStore.ProcedureName:='dbo.CountKala';
           ADOSPAlarmStore.Parameters.Refresh;
           ADOSPAlarmStore.Parameters.ParamValues['@SNO'] := ADOAlarmStore.FieldValues['StorageNO'];
           ADOSPAlarmStore.Parameters.ParamValues['@Kcode'] := ADOAlarmStore.FieldValues['CodeKala'];
           ADOSPAlarmStore.Parameters.ParamValues['@DNO']:= Main.DocNumber;
           ADOSPAlarmStore.ExecProc;
           Count := ADOSPAlarmStore.Parameters.ParamValues['@RETURN_VALUE'];
           if Count <= ADOAlarmStore.FieldValues['requestpoint'] then
              with Main.LVStorage.Items.Add do
              begin
                  ImageIndex := 6;
                  Caption := FloattoStr(Count);
                  SubItems.Insert(0,ADOAlarmStore.FieldValues['namekala']);
                  SubItems.Insert(1,ADOAlarmStore.FieldValues['code']);
                  SubItems.Insert(2,ADOAlarmStore.FieldValues['nameanbar']);
                  SubItems.Insert(3,ADOAlarmStore.FieldValues['StorageNO']);
                  SubItems.Insert(4,ADOAlarmStore.FieldValues['Codekala']);
                  SubItems.Insert(5,inttostr(Main.LVStorage.Items.Count));
              end;
           ADOAlarmStore.Next;
       end;
    end;   
end;

Function TDM.GetAlarm(Edit : TcxTextEdit ;lab : string):Boolean;
begin
   if Edit.Text='' then
   begin
      MessageDlg(lab ,mtInformation, [mbok], 0);
      GetAlarm:=false;
   end
   else
   GetAlarm:=True;
end;

Function TDM.GetAlarm(msk : TcxMaskEdit ;lab : string):Boolean;
begin
   if msk.Text='' then
   begin
      MessageDlg(lab ,mtInformation, [mbok], 0);
      GetAlarm:=false;
   end
   else
   GetAlarm:=True;
end;

Function TDM.GetAlarm(Combo : TcxComboBox ;lab : string):Boolean;
begin
   if Combo.Text='' then
   begin
      MessageDlg(lab ,mtInformation, [mbok], 0);
      GetAlarm:=false;
   end
   else
   GetAlarm:=True;
end;

function TDM.GetCount(Table,fcount,Where:string):integer;
var
   ADO : TADODataSet;
begin
   ADO := TADODataSet.Create(self);
   ADO.Connection := DM.Connection;
   ADO.Close;
   ADO.CommandType:=cmdText;
   if Where <>'' then
      ADO.CommandText:='Select Count(' + Fcount + ') From dbo.' + Table + ' Where ' + Where
      else
      ADO.CommandText:='Select Count(' + Fcount + ') From dbo.' + Table;
   //ShowMessage(ADO.CommandText);
   ADO.Open;
   GetCount := Ado.Fields[0].AsInteger;
end;

function TDM.GetFieldMax(fmax:string):integer;
var
   ADO : TADODataSet;
   MaxFind : Integer;
begin
   ADO := TADODataSet.Create(self);
   ADO.Connection := DM.Connection;
   ADO.Close;
   ADO.CommandText:='Select ' + Fmax + ' From MAXField';
   //ShowMessage(ADO.CommandText);
   ADO.Open;
   MaxFind := ADO.Fields[0].AsInteger;
   if (MaxFind < 1) AND (LowerCase(Fmax)<>'kala') AND
      (LowerCase(Fmax)<>'level1') AND (LowerCase(Fmax)<>'level2') AND
      (LowerCase(Fmax)<>'storagel1') AND (LowerCase(Fmax)<>'storagel2') AND
      (LowerCase(Fmax)<>'storagel3') AND (LowerCase(Fmax)<>'customer') AND
      (LowerCase(Fmax)<>'acounts') AND (LowerCase(Fmax)<>'banks') AND
      (LowerCase(Fmax)<>'invoicebuy') then
   begin
       ADO.Close;
       ADO.CommandType:=cmdText;
       ADO.CommandText:='Select ' + Fmax + ' From Settings';
       ADO.Open;
       MaxFind := ADO.Fields[0].AsInteger;
   end;
   MaxFind := MaxFind + 1;
   DM.Update('MAXField',Fmax+'='+inttostr(MaxFind),'');
   GetFieldMax := MaxFind;
end;

function TDM.GetMax(Table,fmax,Where:string):integer;
var
   ADO : TADODataSet;
   MaxFind : Integer;
begin
   ADO := TADODataSet.Create(self);
   ADO.Connection := DM.Connection;
   ADO.Close;
   ADO.CommandType:=cmdText;
   if Where <>'' then
      ADO.CommandText:='Select MAX(' + Fmax + ') From ' + Table + ' Where ' + Where
      else
      ADO.CommandText:='Select MAX(' + Fmax + ') From ' + Table;
   //ShowMessage(ADO.CommandText);
   ADO.Open;
   MaxFind := ADO.Fields[0].AsInteger;
   if (MaxFind < 1) AND (LowerCase(Table)<>'kala') AND
      (LowerCase(Table)<>'level1') AND (LowerCase(Table)<>'level2') AND
      (LowerCase(Table)<>'storagel1') AND (LowerCase(Table)<>'storagel2') AND
      (LowerCase(Table)<>'storagel3') AND (LowerCase(Table)<>'customer') AND
      (LowerCase(Table)<>'acounts') AND (LowerCase(Table)<>'banks') AND
      (LowerCase(Table)<>'users') AND (LowerCase(Table)<>'units') then
   begin
       ADO.Close;
       ADO.CommandType:=cmdText;
       ADO.CommandText:='Select ' + Table + ' From Settings';
       ADO.Open;
       MaxFind := ADO.Fields[0].AsInteger;
   end;
   GetMax := MaxFind + 1
end;

Procedure TDM.FillCombo(Combo1,Combo2 : TcxComboBox;F1,F2,Table,Where,Field:string);
var
   ADO : TADODataSet;
begin
   ADO := TADODataSet.Create(self);
   ADO.Connection := DM.Connection;
   ADO.CommandType:=cmdText;
   if Where <>'' then
      ADO.CommandText:='Select ' + Field + ' From ' + Table + ' Where ' + Where
      else
      ADO.CommandText:='Select ' + Field + ' From ' + Table;
   //ShowMessage(ADO.CommandText);
   ADO.Open;
   Combo1.Properties.Items.Clear;
   Combo2.Properties.Items.Clear;
   While Not ADO.Eof do
   begin
       Combo1.Properties.Items.Add(ADO.FieldValues[F1]);
       Combo2.Properties.Items.Add(ADO.FieldValues[F2]);
       ADO.next;
   end;
   ADO.Destroy;
end;

function TDM.AlignField (a:TADODataSet):TADODataSet;
var
    i : integer;
begin
    for i:=0 to a.FieldCount-1 do
       a.Fields[i].Alignment:=taRightJustify;
    a.Last;
    AlignField := a;
end;

procedure TDM.Select(Table,Field,Where:string);
begin
    {if GetCount(table,'*','')>3000 then
    begin
       ShowMessage('»—‰«„Â ‰”ŒÂ ¬“„«Ì‘Ì „Ì »«‘œ. «⁄ »«— «” ›«œÂ Å«Ì«‰ Ì«› Â «” '+
                    #13+#13+'·ÿ›« »« ÿ—«Õ  „«” Õ«’· ›—„«∆Ìœ');
       Exit;
    End; }
    ADORun.Close;
    if Where <>'' then
       ADORun.CommandText := 'Select ' + Field + ' From ' + Table + ' Where ' + Where
       else
       ADORun.CommandText := 'Select ' + Field + ' From ' + Table ;
    //ShowMessage(ADORun.CommandText);
    ADORun.Open;
end;

procedure TDM.Delete (Table,Where:string;Qustion:integer=1);
begin
    {if GetCount(table,'*','')>1000 then
    begin
       ShowMessage('»—‰«„Â ‰”ŒÂ ¬“„«Ì‘Ì „Ì »«‘œ. «⁄ »«— «” ›«œÂ Å«Ì«‰ Ì«› Â «” '+
                    #13+#13+'·ÿ›« »« ÿ—«Õ  „«” Õ«’· ›—„«∆Ìœ');
       Exit;
    End;  }
    if Qustion = 1 then
    begin
       If MessageDlg('„«Ì· »Â Õ–› «ÿ·«⁄«  ›Êﬁ „Ì »«‘Ìœø',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
          begin
              ADOCom.Cancel;
              ADOCom.CommandType:=cmdStoredProc;
              ADOCom.CommandText := 'dbo.Deletion';
              ADOCom.Parameters.Refresh;
              ADOCom.Parameters.ParamValues['@T'] := Table;
              ADOCom.Parameters.ParamValues['@W'] := Where;
              ADOCom.Execute;
          end
          else
          Abort;
    end;
    if Qustion = 0 then
    begin
        ADOCom.Cancel;
        ADOCom.CommandType:=cmdStoredProc;
        ADOCom.CommandText := 'dbo.Deletion';
        ADOCom.Parameters.Refresh;
        ADOCom.Parameters.ParamValues['@T'] := Table;
        ADOCom.Parameters.ParamValues['@W'] := Where;
        ADOCom.Execute;
    end;
end;

procedure TDM.Update (Table,NewVal,Where:string);
begin
    {if GetCount(table,'*','')>1000 then
    begin
       ShowMessage('»—‰«„Â ‰”ŒÂ ¬“„«Ì‘Ì „Ì »«‘œ. «⁄ »«— «” ›«œÂ Å«Ì«‰ Ì«› Â «” '+
                    #13+#13+'·ÿ›« »« ÿ—«Õ  „«” Õ«’· ›—„«∆Ìœ');
       Exit;
    End; }
    ADOCom.Cancel;
    ADOCom.CommandType:=cmdStoredProc;
    ADOCom.CommandText := 'dbo.Modification';
    ADOCom.Parameters.Refresh;
    ADOCom.Parameters.ParamValues['@T']      := Table;
    ADOCom.Parameters.ParamValues['@NewVal'] := NewVal;
    ADOCom.Parameters.ParamValues['@W']      := Where;
//    ShowMessage(Table+'       '+NewVal+'         '+Where);
    ADOCom.Execute;
end;

procedure TDM.insert (Table,Field,Value:string);
begin
   { if GetCount(table,'*','')>1000 then
    begin
       ShowMessage('»—‰«„Â ‰”ŒÂ ¬“„«Ì‘Ì „Ì »«‘œ. «⁄ »«— «” ›«œÂ Å«Ì«‰ Ì«› Â «” '+
                    #13+#13+'·ÿ›« »« ÿ—«Õ  „«” Õ«’· ›—„«∆Ìœ');
       Exit;
    End;  }
    ADOCom.Cancel;
    ADOCom.CommandType:=cmdStoredProc;
    ADOCom.CommandText := 'dbo.Insertion';
    ADOCom.Parameters.Refresh;
    ADOCom.Parameters.ParamValues['@T'] := Table;
    ADOCom.Parameters.ParamValues['@F'] := Field;
    ADOCom.Parameters.ParamValues['@V'] := Value;
    ADOCom.Execute;
end;

end.
