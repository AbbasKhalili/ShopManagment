unit frmAnbarGardany;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, frxClass, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, Menus, cxLookAndFeelPainters, cxDropDownEdit, cxLabel,
  cxContainer, cxTextEdit, cxMaskEdit, StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter;

Const
     TableName = 'AnbarGardany';
     FieldName = 'StorageNO,Codekala,ExistsCount,Counter';

type
  TAnbarGardany = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton3: TcxButton;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel1: TcxLabel;
    cxButton5: TcxButton;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    cxGrid2DBTableView1Column6: TcxGridDBColumn;
    cxGrid2DBTableView1Column7: TcxGridDBColumn;
    cxGrid2DBTableView1Column8: TcxGridDBColumn;
    cxGrid2DBTableView1Column9: TcxGridDBColumn;
    cxGrid2DBTableView1Column10: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxMaskEdit2: TcxMaskEdit;
    cxLabel2: TcxLabel;
    cxButton4: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxMaskEdit3: TcxMaskEdit;
    cxLabel4: TcxLabel;
    cxButton8: TcxButton;
    cxComboBox1: TcxComboBox;
    cxLabel5: TcxLabel;
    cxButton9: TcxButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    cxLabel3: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton5Click(Sender: TObject);
    procedure cxGrid2DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxMaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton4Click(Sender: TObject);
    procedure cxMaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure cxMaskEdit1PropertiesChange(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxMaskEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
  private
        CodeKala,ExistsCount,Counter,SNO,RecSelect,Count : Integer;
        ADO , ADO2 ,ADO3,ADOAll : TADODataSet;
        DS : TDataSource;
        procedure RefreshGridDwon();
  public

  end;

var
  AnbarGardany: TAnbarGardany;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TAnbarGardany.RefreshGridDwon();
begin
    ADO.Close;
    ADO.CommandText:=' SELECT A.StorageNO,A.Counter,s.code,u.unitname,k.code CodeKala,k.[name] NameKala,k.saleprice,k.buyprice,S2.SN2,S2.[name] S2Name,S3.SN3,S3.[name] S3Name ' +
                     ' FROM   anbargardany A, storage S,Kala K,Units u,StorageL3 S3,StorageL2 S2,StorageL1 S1 ' +
                     ' WHERE  A.Codekala=s.code and A.StorageNO=s.storageNO and s.code=k.codekala And u.code=k.unit And S3.SN3=s.storageNO And S2.SN2=S3.SN2 And S1.SN1=S2.SN1 '+
                     ' ORDER BY S2.[name],S3.[name],k.code';
    ADO.Open;
    DataSource2.DataSet := ADO;
    DataSource2.DataSet := DM.AlignField(ADO);
end;

procedure TAnbarGardany.FormShow(Sender: TObject);
begin
    ADO := TADODataSet.Create(Self);
    ADO.Connection:=DM.Connection;
    ADOAll := TADODataSet.Create(Self);
    ADOAll.Connection:=DM.Connection;
    ADO2 := TADODataSet.Create(Self);
    ADO2.Connection:=DM.Connection;
    ADO3 := TADODataSet.Create(Self);
    ADO3.Connection:=DM.Connection;
    DS := TDataSource.Create(self);

    cxComboBox1.Properties.Items.Add('ÃœÌœ');
    ADO3.Close;
    ADO3.CommandText:='select distinct [date] from Archive_AnbarGardany order by [date]';
    ADO3.Open;
    While Not ADO3.Eof Do
    begin
        cxComboBox1.Properties.Items.Add(ADO3.Fields[0].AsString);
        ADO3.Next;
    end;
//    RefreshGridUP();
    RefreshGridDwon();
end;

procedure TAnbarGardany.cxButton3Click(Sender: TObject);
Var
    OldValue : integer;
    TLO : TLocateOptions;
begin
    if CodeKala > 0 then
    begin
        if DM.GetAlarm(cxMaskEdit1,'„ÊÃÊœÌ ‘„«—‘ ‘œÂ —« Ê«—œ ò‰Ìœ')=False then
        begin
            cxMaskEdit1.SetFocus;
            Exit;
        end;

        if Codekala <= 0 then
        begin
            MessageDlg('ò«·«ÌÌ »« òœ Ê«—œ ‘œÂ œ— «‰»«— ”ÿÕ 2 «‰ Œ«» ‘œÂ „ÊÃÊœ ‰Ì” ',mtWarning, [mbOK], 0);
            cxMaskEdit2.SetFocus;
            Exit;
        end;


        Counter := strtoint(cxMaskEdit1.text);

        ADO3.close;
        ADO3.CommandText:='Select counter From ' + TableName +' Where Codekala='+inttostr(CodeKala);
        ADO3.Open;
        if ADO3.RecordCount>0 then
        begin
            If MessageDlg('«Ì‰ ò«·« ﬁ»·« ‘„«—‘ Ê À»  ‘œÂ «” . „ﬁœ«— Ê—ÊœÌ »Â „ﬁœ«— ﬁ»·Ì «÷«›Â ‘Êœø'+#13#13+'„Ì“«‰ ‘„«—‘ ‘œÂ ﬁ»·Ì  '+ADO3.Fields[0].AsString+'  »ÊœÂ Ê  '+cxMaskEdit1.Text +' ⁄œœ »Â ¬‰ «÷«›Â ŒÊ«Âœ ‘œ',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
            begin
                OldValue:=ADO3.FieldValues['counter'];
                ADO3.Close;
                OldValue := OldValue + Counter;
                DM.Update(TableName,'Counter='+intTostr(OldValue),'Codekala='+inttostr(CodeKala));
                RefreshGridDwon();
                ADO.Locate('CodeKala',cxMaskEdit2.Text,TLO);
                cxMaskEdit1.Text:='';
                SNO := 0;
                CodeKala :=0 ;
                Counter:=0;
                cxMaskEdit2.Text:='';
                cxMaskEdit2.SetFocus;
                Exit;
            end
            else
            Abort;
        end;
                  //'StorageNO,Codekala,ExistsCount,Counter';
        Dm.insert(TableName,FieldName,inttostr(SNO) + ',' +
                                      inttostr(CodeKala) + ',' +
                                      inttostr(ExistsCount) + ',' +
                                      inttostr(Counter));
        RefreshGridDwon();
        ADO.Locate('CodeKala',cxMaskEdit2.Text,TLO);
        cxMaskEdit1.Text:='';
        cxMaskEdit2.Text:='';
        SNO := 0;
        CodeKala :=0;
        Counter:=0;
        cxMaskEdit2.SetFocus;
    end;
end;

procedure TAnbarGardany.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    ExistsCount := 0;
    Counter := 0;
    CodeKala := ADOAll.FieldValues['code'];
    SNO := ADOAll.FieldValues['SN3'];
    cxMaskEdit2.Text := DM.ADORun.FieldValues['CodeKala'];
    cxMaskEdit1.SetFocus;
end;

procedure TAnbarGardany.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    ExistsCount := 0;
    Counter := 0;
    CodeKala := DM.ADORun.FieldValues['code'];
    SNO := DM.ADORun.FieldValues['SN3'];
    cxMaskEdit1.SetFocus;
end;

procedure TAnbarGardany.cxGrid2DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    RecSelect := ADO.FieldValues['code'];
    cxButton5.SetFocus;
end;

procedure TAnbarGardany.cxButton5Click(Sender: TObject);
begin
    if RecSelect > 0 then
    begin
        DM.Delete(TableName,'Codekala=' + inttostr(RecSelect),1);
        RefreshGridDwon();
        cxGrid2.SetFocus;
        cxMaskEdit2.Text:='';
        cxMaskEdit1.Text:='';
        SNO := 0;
        CodeKala :=0;
        Counter:=0;
        ExistsCount:=0;
    end;
end;          

procedure TAnbarGardany.cxGrid2DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    RecSelect := ADO.FieldValues['code'];
    cxButton5.SetFocus;
end;

procedure TAnbarGardany.cxButton1Click(Sender: TObject);
var
    Mem : TfrxMemoView;
    Pic : TfrxPictureView;
    DD , Title : String;
begin

    If MessageDlg('‰ ÌÃÂ «‰»«— ê—œ«‰Ì „Õ«”»Â Ê ‰„«Ì‘ œ«œÂ ‘Êœø',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    begin

        DM.ADOStored.Active:=False;
        DM.ADOStored.Parameters.Clear;
        DM.ADOStored.ProcedureName:='dbo.Fill_AnbarGardany';
        DM.ADOStored.Parameters.Refresh;
        DM.ADOStored.ExecProc;

        ADO2.Close;
        ADO2.CommandText:='select * from ' + TableName;
        ADO2.Open;
        While NOT ADO2.Eof do
        begin
            Count:=0;
            CodeKala := ADO2.FieldValues['CodeKala'];
            SNO := ADO2.FieldValues['StorageNO'];
            DM.ADOStored.Active:=False;
            DM.ADOStored.Parameters.Clear;
            DM.ADOStored.ProcedureName:='dbo.CountKala';
            DM.ADOStored.Parameters.Refresh;
            DM.ADOStored.Parameters.ParamValues['@SNO']:= SNO;
            DM.ADOStored.Parameters.ParamValues['@Kcode']:= CodeKala;
            DM.ADOStored.Parameters.ParamValues['@DNO']:= Main.DocNumber;
            DM.ADOStored.ExecProc;
            Count := DM.ADOStored.Parameters.ParamValues['@RETURN_VALUE'];
            DM.Update(TableName,'ExistsCount='+inttostr(Count),'Codekala='+inttostr(CodeKala)+' and StorageNO='+inttostr(SNO));
            ADO2.Next;
        end;
        RefreshGridDwon;
        CodeKala:=0;
        SNO:=0;
        Title := '«‰»«— ê—œ«‰Ì';
        DM.ADOspReport.Active:=False;
        DM.ADOspReport.Parameters.Clear;
        DM.ADOspReport.ProcedureName:='dbo.Report_AnbarGardany';
        DM.ADOspReport.Parameters.Refresh;
        DD := 'ê“«—‘ «‰»«— ê—œ«‰Ì œ—  «—ÌŒ  ' + Main.DateNow;
        DM.frxReport1.LoadFromFile(Main.WPath + 'Report\AnbarGardany.fr3');
        DM.ADOspReport.Open;
        Mem := DM.frxReport1.FindObject('Memo23') AS TfrxMemoView;
        Mem.Text := main.TitleReport;

        Pic := DM.frxReport1.FindObject('Picture1') AS TfrxPictureView;
        Pic.Picture.LoadFromFile(main.WPath+'Logo.jpg');

        Mem := DM.frxReport1.FindObject('Memo22') AS TfrxMemoView;
        Mem.Text := Main.UserNow;
        Mem := DM.frxReport1.FindObject('Memo21') AS TfrxMemoView;
        Mem.Text := Main.DateNow;
        Mem := DM.frxReport1.FindObject('Memo24') AS TfrxMemoView;
        Mem.Text := Title;
        Mem := DM.frxReport1.FindObject('Memo25') AS TfrxMemoView;
        Mem.Text := DD;
        DM.frxReport1.ShowReport;

        Exit;
    end
    else
    Abort;
end;

procedure TAnbarGardany.cxButton2Click(Sender: TObject);
begin
    If MessageDlg('„«Ì· »Â «‰»«— ê—œ«‰Ì ÃœÌœ „Ì »«‘Ìœø  „«„ «ÿ·«⁄«  „—»Êÿ »Â «‰»«—ê—œ«‰Ì ﬁ»·Ì Õ–› „Ì ê—œœ',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    begin
        DM.Delete(TableName,'',0);
        RefreshGridDwon();
        cxMaskEdit2.Text:='';
        cxMaskEdit1.Text:='';
        SNO := 0;
        CodeKala :=0;
        Counter:=0;
        ExistsCount:=0;
        cxMaskEdit2.SetFocus;
    end
    else
    Abort;  
end;

procedure TAnbarGardany.cxMaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
       VK_ESCAPE    : Close;
    end;
end;

procedure TAnbarGardany.cxButton4Click(Sender: TObject);
Var
    TLO : TLocateOptions;
begin
    ADOAll.Locate('CodeKala',cxMaskEdit2.Text,TLO);
    ExistsCount:=0;
    SNO:=0;
    CodeKala:=0;
    SNO := ADOAll.FieldValues['SN3'];
    CodeKala := ADOAll.FieldValues['code'];
    if LowerCase(ADOAll.FieldValues['codekala'])=LowerCase(Trim(cxMaskEdit2.Text)) then
       cxMaskEdit1.SetFocus;
end;

procedure TAnbarGardany.cxMaskEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key=#13 then
       cxButton4.Click;
end;

procedure TAnbarGardany.cxMaskEdit1PropertiesChange(Sender: TObject);
begin
    if (Trim(cxMaskEdit1.Text)<>'') AND (Strtoint(cxMaskEdit1.Text)>0) then
       cxButton3.Default := True
       else
       cxButton3.Default := False;
end;

procedure TAnbarGardany.cxButton6Click(Sender: TObject);
Var
    ADO5,ADO6 : TADODataSet;
    SNO,Kcode,Counter,exists,Res:Integer;
begin
    If MessageDlg('«’·«Õ „ÊÃÊœÌ «‰»«— »Â ’Ê—  ŒÊœò«— «‰Ã«„ ê—œœø',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    begin
        ADO5 := TADODataSet.Create(Self);
        ADO6 := TADODataSet.Create(Self);
        ADO5.Connection:=DM.Connection;
        ADO6.Connection:=DM.Connection;
        ADO5.Close;
        ADO5.CommandText:='Select * From AnbarGardany where Counter<>ExistsCount';
        ADO5.Open;
        IF ADO5.RecordCount>0 then
        begin
            While NOt ADO5.Eof DO
            Begin
                SNO     := ADO5.FieldByName('StorageNO').Value;
                Kcode   := ADO5.FieldByName('Codekala').Value;
                Counter := ADO5.FieldByName('Counter').Value;
                exists  := ADO5.FieldByName('ExistsCount').Value;
                ADO6.Close;
                ADO6.CommandText:='Select CurrentExists From Storage Where StorageNO='+inttostr(SNO)+' AND Code='+inttostr(Kcode);
                ADO6.Open;
                if ((ADO6.Fields[0].AsInteger+Counter)-exists)<>0 then
                begin
                    Res := (ADO6.Fields[0].AsInteger+Counter)-exists;
                    DM.Update('Storage','CurrentExists='+inttostr(Res),'StorageNO='+inttostr(SNO)+' AND Code='+inttostr(Kcode));
                end;
                ADO5.Next;
            end;
        end;
        ADO5.Free;
        ADO6.Free;

        Exit;
    end
    else
    Abort;
end;

procedure TAnbarGardany.cxButton7Click(Sender: TObject);
var
    Str1,Str2:string;
begin
    IF DM.GetAlarm(cxComboBox1,' «—ÌŒ «‰»«—ê—œ«‰Ì —« «‰ Œ«» ò‰Ìœ.')=False Then
       Exit;

    If MessageDlg('«‰»«— ê—œ«‰Ì «‰Ã«„ ‘œÂ À»  Ê »«Ìê«‰Ì ê—œœø',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    begin
        DM.ADOCom.Cancel;
        DM.ADOCom.CommandType:=cmdText;
        Str1 := 'INSERT Archive_AnbarGardany(StorageNO,Codekala,ExistsCount,Counter,[date]) (SELECT StorageNO,Codekala,ExistsCount,Counter,';
        Str2 := ' FROM AnbarGardany WHERE NOT EXISTS(SELECT StorageNO,Codekala,ExistsCount,Counter,[date] FROM Archive_AnbarGardany))';
        DM.ADOCom.CommandText:= Str1 + QuotedStr(cxComboBox1.Text) + Str2;
        If cxComboBox1.Text='ÃœÌœ' then
           DM.ADOCom.CommandText:= Str1 + QuotedStr(Main.DateNow)+ Str2;
        DM.ADOCom.Execute;

        cxComboBox1.Properties.Items.Clear;
        cxComboBox1.Properties.Items.Add('ÃœÌœ');
        ADO3.Close;
        ADO3.CommandText:='select distinct [date] from Archive_AnbarGardany order by [date]';
        ADO3.Open;
        While Not ADO3.Eof Do
        begin
            cxComboBox1.Properties.Items.Add(ADO3.Fields[0].AsString);
            ADO3.Next;
        end;
    end
    else
    Abort;
end;

procedure TAnbarGardany.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Main.dxBarLargeButton27.Enabled:=True;
    ADO.Free;
    ADO2.Free;
    ADO3.Free;
    ADOAll.Free;
    DS.Free;
end;

procedure TAnbarGardany.cxMaskEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key=#13 then
       cxButton8.Click;
end;

procedure TAnbarGardany.cxButton8Click(Sender: TObject);
Var
    TLO : TLocateOptions;
begin
    ADO.Locate('CodeKala',cxMaskEdit3.Text,TLO)
end;

procedure TAnbarGardany.cxButton9Click(Sender: TObject);
begin
    ADOAll.Close;
    ADOAll.CommandText:='SELECT s.code,u.unitname,k.code CodeKala,k.[name] NameKala,k.saleprice,k.buyprice,S2.SN2,S2.[name] S2Name,S3.SN3,S3.[name] S3Name '+
                        'FROM storage S,Kala K,Units u,StorageL3 S3,StorageL2 S2,StorageL1 S1 '+
                        'WHERE s.code=k.codekala And u.code=k.unit And S3.SN3=s.storageNO And S2.SN2=S3.SN2 And S1.SN1=S2.SN1 '+
                        'ORDER BY S2.[name],S3.[name],k.code';
    ADOAll.Open;
    DataSource1.DataSet:=ADOAll;
    DM.AlignField(ADOAll);
end;

end.
