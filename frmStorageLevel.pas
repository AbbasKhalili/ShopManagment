unit frmStorageLevel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB , DB, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, ComCtrls, cxMaskEdit, cxDropDownEdit,
  cxLabel, cxTextEdit, StdCtrls, cxRadioGroup, cxImage, cxControls,
  cxContainer, cxEdit, cxGroupBox, cxButtons, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TStorageLevel = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxImage1: TcxImage;
    cxRadioButton1: TcxRadioButton;
    cxTextEdit2: TcxTextEdit;
    cxImage2: TcxImage;
    cxRadioButton2: TcxRadioButton;
    cxLabel9: TcxLabel;
    cxLabel4: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxComboBox1: TcxComboBox;
    cxComboBox4: TcxComboBox;
    TreeView1: TTreeView;
    cxRadioButton3: TcxRadioButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxComboBox2: TcxComboBox;
    cxComboBox3: TcxComboBox;
    cxImage3: TcxImage;
    cxComboBox5: TcxComboBox;
    cxComboBox6: TcxComboBox;
    cxLabel3: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure cxRadioButton1Click(Sender: TObject);
    procedure cxRadioButton2Click(Sender: TObject);
    procedure cxRadioButton3Click(Sender: TObject);
    procedure cxComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox6PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxTextEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure cxComboBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox5PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
       CodeL1,CodeL2,CodeL3,Level1,Level2 : String;
       TabSelect : Integer;
       TableName ,FieldName : String;
       ADO1,ADO2,ADO3,ADO4 : TADODataSet;
       Clicked : Boolean;
       procedure EmptyTextBox();
       procedure DrawTreeView(MTreeView : TTreeView);
  public

  end;

var
  StorageLevel: TStorageLevel;

implementation

uses frmDM, frmMain;

{$R *.dfm}

Const
    WS_EX_NOINHERITLAYOUT = $00100000;
    WS_EX_LAYOUTRTL = $00400000;

procedure SetWinControlBiDi(Control: TWinControl);
var
    ExStyle: Longint;
begin
    ExStyle := GetWindowLong(Control.Handle, GWL_EXSTYLE);
    SetWindowLong(Control.Handle, GWL_EXSTYLE, ExStyle or WS_EX_RTLREADING or WS_EX_RIGHT
    or WS_EX_LAYOUTRTL or WS_EX_NOINHERITLAYOUT );
end;

procedure TStorageLevel.DrawTreeView(MTreeView : TTreeView);
var
    Lname1,Lname2,Lname3 : String;
    Lcode1,Lcode2 : integer;
    MyNode,MyNode2, Node, Parent,Parent2 : TTreeNode;
begin

    MTreeView.Items.Clear;
    Node := nil;

    ADO1.close;
    ADO1.CommandText := 'select * from StorageL1';
    ADO1.Open;
    while not ADO1.Eof do
    begin
        Lname1 := ADO1.FieldValues['name'];
        Lcode1 := ADO1.FieldValues['SN1'];
        MyNode := MTreeView.Items.Add(Node, Lname1);
        Parent := MyNode;

        ADO2.close;
        ADO2.CommandText := 'select * from StorageL2 where SN1='+IntToStr(Lcode1);
        ADO2.Open;
        while not ADO2.Eof do
        begin
            Lname2  := ADO2.FieldValues['name'];
            Lcode2  := ADO2.FieldValues['SN2'];
            MyNode2 := MTreeView.Items.AddChild(Parent, Lname2);
            Parent2 := MyNode2;

            ADO3.close;
            ADO3.CommandText := 'select * from StorageL3 where SN1='+IntToStr(Lcode1)+' AND SN2='+IntToStr(Lcode2);
            ADO3.Open;
            while not ADO3.Eof do
            begin
                Lname3  := ADO3.FieldValues['name'];
                MTreeView.Items.AddChild(Parent2, Lname3);
                ADO3.Next;
            end;
            ADO2.Next;
        end;
        ADO1.Next;
        Node := MyNode;
    end;
    ADO1.Close;
    ADO2.Close;
    ADO3.Close;
    MTreeView.Select(node);
    MTreeView.FullExpand;
end;

procedure TStorageLevel.EmptyTextBox();
begin
    case Tabselect of
       1 : cxTextEdit2.text:='';
       2 : cxTextEdit4.text:='';
       3 : cxTextEdit1.text:='';
    end;
end;

procedure TStorageLevel.FormShow(Sender: TObject);
begin
    DM.BTNState(cxButton1,cxButton2,cxButton3,cxButton4,nil,main.Permission[29],main.Permission[29],main.Permission[30],main.Permission[31],'1');
    ADO1 := TADODataSet.Create(Self);
    ADO2 := TADODataSet.Create(Self);
    ADO3 := TADODataSet.Create(Self);
    ADO4 := TADODataSet.Create(Self);
    ADO1.Connection := DM.Connection;
    ADO2.Connection := DM.Connection;
    ADO3.Connection := DM.Connection;
    ADO4.Connection := DM.Connection;
    DrawTreeView(TreeView1);
    SetWinControlBiDi(TreeView1);
    TreeView1.Refresh;
    TabSelect := 1;
    TableName :='StorageL1';
    FieldName :='SN1,name';
    Clicked := False;
end;

procedure TStorageLevel.cxRadioButton1Click(Sender: TObject);
begin
    cxRadioButton1.Checked := True;
    if cxRadioButton1.Checked then
    begin
        TabSelect := 1;
        TableName :='StorageL1';
        FieldName :='SN1,name';
    end;
end;

procedure TStorageLevel.cxRadioButton2Click(Sender: TObject);
begin
    cxRadioButton2.Checked := True;
    if cxRadioButton2.Checked then
    begin
        DM.FillCombo(cxComboBox4,cxComboBox1,'SN1','name','StorageL1','','SN1,name');
        TabSelect := 2;
        TableName :='StorageL2';
        FieldName :='SN1,SN2,name';
    end;
end;

procedure TStorageLevel.cxRadioButton3Click(Sender: TObject);
begin
    cxRadioButton3.Checked := True;
    if cxRadioButton3.Checked then
    begin
        DM.FillCombo(cxComboBox3,cxComboBox2,'SN1','name','StorageL1','','SN1,name');
        TabSelect := 3;
        TableName :='StorageL3';
        FieldName :='SN1,SN2,SN3,name';
    end;
end;

procedure TStorageLevel.cxComboBox2PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox3.ItemIndex:=cxComboBox2.ItemIndex;
    if cxComboBox3.Text<>'' then
       DM.FillCombo(cxComboBox5,cxComboBox6,'SN2','name','StorageL2','SN1='+cxComboBox3.Text,'SN2,name');
end;

procedure TStorageLevel.cxComboBox6PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox5.ItemIndex:=cxComboBox6.ItemIndex;
end;

procedure TStorageLevel.cxComboBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox4.ItemIndex:=cxComboBox1.ItemIndex;
end;

procedure TStorageLevel.cxButton1Click(Sender: TObject);
begin
    EmptyTextBox;
    case Tabselect of
       1 : cxTextEdit2.SetFocus;
       2 : cxTextEdit4.SetFocus;
       3 : cxTextEdit1.SetFocus;
    end;
end;

procedure TStorageLevel.cxButton2Click(Sender: TObject);
var
    Query , C : String;
    ISRecord1,ISRecord2,ISRecord3:Boolean;
begin
    case TabSelect of
       1 : begin
               ISRecord1:=False;ISRecord2:=False;ISRecord3:=False;
               ADO4.Close;
               ADO4.CommandText:='Select * from StorageL1 where name='+QuotedStr(cxTextEdit2.Text);
               ADO4.Open;
               if ADO4.RecordCount > 0 then ISRecord1:=True;
               ADO4.Close;
               ADO4.CommandText:='Select * from StorageL2 where name='+QuotedStr(cxTextEdit2.Text);
               ADO4.Open;
               if ADO4.RecordCount > 0 then ISRecord2:=True;
               ADO4.Close;
               ADO4.CommandText:='Select * from StorageL3 where name='+QuotedStr(cxTextEdit2.Text);
               ADO4.Open;
               if ADO4.RecordCount > 0 then ISRecord3:=True;
               if (ISRecord1=True)or(ISRecord2=True)or(ISRecord3=True) then
               begin
                   MessageDlg('ﬁ»·« «“ «Ì‰ ‰«„ »—«Ì ”ÿÕ Ì« “Ì— ”ÿÕÌ «” ›«œÂ ‘œÂ «” ',mtWarning,[mbOk], 0);
                   exit;
               end;
           End;
       2 : begin
               ADO4.Close;
               ADO4.CommandText:='Select * from StorageL1 where name='+QuotedStr(cxTextEdit4.Text);
               ADO4.Open;
               if ADO4.RecordCount > 0 then ISRecord1:=True;
               ADO4.Close;
               ADO4.CommandText:='Select * from StorageL2 where name='+QuotedStr(cxTextEdit4.Text);
               ADO4.Open;
               if ADO4.RecordCount > 0 then ISRecord2:=True;
               ADO4.Close;
               ADO4.CommandText:='Select * from StorageL3 where name='+QuotedStr(cxTextEdit4.Text);
               ADO4.Open;
               if ADO4.RecordCount > 0 then ISRecord3:=True;
               if (ISRecord1=True)or(ISRecord2=True)or(ISRecord3=True) then
               begin
                   MessageDlg('ﬁ»·« «“ «Ì‰ ‰«„ »—«Ì ”ÿÕ Ì« “Ì— ”ÿÕÌ «” ›«œÂ ‘œÂ «” ',mtWarning,[mbOk], 0);
                   exit;
               end;
           end;
       3 : begin
               ADO4.Close;
               ADO4.CommandText:='Select * from StorageL1 where name='+QuotedStr(cxTextEdit1.Text);
               ADO4.Open;
               if ADO4.RecordCount > 0 then ISRecord1:=True;
               ADO4.Close;
               ADO4.CommandText:='Select * from StorageL2 where name='+QuotedStr(cxTextEdit1.Text);
               ADO4.Open;
               if ADO4.RecordCount > 0 then ISRecord2:=True;
               ADO4.Close;
               ADO4.CommandText:='Select * from StorageL3 where name='+QuotedStr(cxTextEdit1.Text);
               ADO4.Open;
               if ADO4.RecordCount > 0 then ISRecord3:=True;
               if (ISRecord1=True)or(ISRecord2=True)or(ISRecord3=True) then
               begin
                   MessageDlg('ﬁ»·« «“ «Ì‰ ‰«„ »—«Ì ”ÿÕ Ì« “Ì— ”ÿÕÌ «” ›«œÂ ‘œÂ «” ',mtWarning,[mbOk], 0);
                   exit;
               end;
           end;
    End;

    case TabSelect of
       1 : begin
               if DM.GetAlarm(cxTextEdit2,'⁄‰Ê«‰ ”ÿÕ Ìò —« Ê«—œ ò‰Ìœ')=False then
               begin  cxTextEdit2.SetFocus;  exit; end;
               Query := inttostr(DM.getmax(TableName,'SN1','')) + ',' + QuotedStr(cxTextEdit2.Text);
           end;
       2 : Begin
               if DM.GetAlarm(cxComboBox1,'«» œ« ”ÿÕ Ìò —« «‰ Œ«» ò‰Ìœ')=False then
               begin  cxComboBox1.SetFocus;  exit; end;
               if DM.GetAlarm(cxTextEdit4,'⁄‰Ê«‰ ”ÿÕ œÊ —« Ê«—œ ò‰Ìœ')=False then
               begin  cxTextEdit4.SetFocus;  exit; end;
               Query := cxComboBox4.Text;
               c := inttostr(DM.getmax(TableName,'SN2','SN1='+cxComboBox4.Text));
               if Length(C) >= 2 then
                  Query := Query + ',' + C + ',' + QuotedStr(cxTextEdit4.Text)
                  else
                  Query := Query + ',' + cxComboBox4.Text + '0' + C + ',' + QuotedStr(cxTextEdit4.Text);
           End;
       3 : Begin
               if DM.GetAlarm(cxComboBox2,'«» œ« ”ÿÕ Ìò —« «‰ Œ«» ò‰Ìœ')=False then
               begin  cxComboBox2.SetFocus;  exit; end;
               if DM.GetAlarm(cxComboBox6,'”ÿÕ œÊ —« «‰ Œ«» ò‰Ìœ')=False then
               begin  cxComboBox6.SetFocus;  exit; end;
               if DM.GetAlarm(cxTextEdit1,'⁄‰Ê«‰ ”ÿÕ ”Â —« Ê«—œ ò‰Ìœ')=False then
               begin  cxTextEdit1.SetFocus;  exit; end;
               Query := cxComboBox3.Text + ',' + cxComboBox5.Text;
               c := inttostr(DM.getmax(TableName,'SN3','SN1='+cxComboBox3.Text+' AND SN2='+cxComboBox5.Text));
               if Length(C) >= 2 then
                  Query := Query + ',' + C + ',' + QuotedStr(cxTextEdit1.Text)
                  else
                  Query := Query + ',' + cxComboBox5.Text + '0' + C + ',' + QuotedStr(cxTextEdit1.Text);
           End;
    end;
    Dm.insert(TableName,FieldName,Query);
    DrawTreeView(TreeView1);
    EmptyTextBox;
    cxButton1.SetFocus;
end;

procedure TStorageLevel.cxTextEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
       VK_F9        : cxButton1.Click;
       VK_F10       : cxButton2.Click;
       VK_F11       : cxButton3.Click;
       VK_F12       : cxButton4.Click;
       VK_ESCAPE    : Close;
    end;
end;

procedure TStorageLevel.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
    if Clicked = True then
    begin
    CodeL1:='';
    CodeL2:='';
    Level1:='';
    Level2:='';
    cxTextEdit2.Text:='';
    cxTextEdit4.text:='';
    cxTextEdit1.text:='';
    cxComboBox1.ItemIndex:=-1;
    cxComboBox2.ItemIndex:=-1;
    cxComboBox6.ItemIndex:=-1;

    DM.ADORun.Close;
    DM.ADORun.CommandText:='select * from StorageL1 where name='+QuotedStr(Node.Text);
    DM.ADORun.open;
    if DM.ADORun.RecordCount>0 then
    begin
        cxRadioButton1.Checked:=true;
        CodeL1:=inttostr(DM.ADORun.FieldValues['SN1']);
        cxTextEdit2.Text:=DM.ADORun.FieldValues['name'];
        cxTextEdit2.SetFocus;
        DM.ADORun.Close;
        Exit;
    end;

    DM.ADORun.Close;
    DM.ADORun.CommandText:='select * from StorageL2 where name='+QuotedStr(Node.Text);
    DM.ADORun.open;
    if DM.ADORun.RecordCount>0 then
    begin
        cxRadioButton2.Checked:=true;
        CodeL1:=inttostr(DM.ADORun.FieldValues['SN1']);
        CodeL2:=inttostr(DM.ADORun.FieldValues['SN2']);
        cxComboBox4.Text:=CodeL1;
        cxTextEdit4.Text:=DM.ADORun.FieldValues['name'];
        cxTextEdit4.SetFocus;
        DM.ADORun.Close;
        Exit;
    end;

    DM.ADORun.Close;
    DM.ADORun.CommandText:='select * from StorageL3 where name='+QuotedStr(Node.Text);
    DM.ADORun.open;
    if DM.ADORun.RecordCount>0 then
    begin
        cxRadioButton3.Checked:=true;
        CodeL1:=inttostr(DM.ADORun.FieldValues['SN1']);
        CodeL2:=inttostr(DM.ADORun.FieldValues['SN2']);
        CodeL3:=inttostr(DM.ADORun.FieldValues['SN3']);
        cxComboBox3.Text:=CodeL1;
        cxComboBox5.Text:=CodeL2;
        cxTextEdit1.Text:=DM.ADORun.FieldValues['name'];
        cxTextEdit1.SetFocus;
        DM.ADORun.Close;
    end;
    end;
end;

procedure TStorageLevel.cxComboBox4PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox1.ItemIndex:=cxComboBox4.ItemIndex;
end;

procedure TStorageLevel.cxComboBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox2.ItemIndex:=cxComboBox3.ItemIndex;
end;

procedure TStorageLevel.cxComboBox5PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox6.ItemIndex:=cxComboBox5.ItemIndex;
end;

procedure TStorageLevel.cxButton3Click(Sender: TObject);
begin
    if Clicked=True then
    begin
    if (cxRadioButton1.Checked=True) AND (Codel1<>'') then
       DM.Update('StorageL1','name='+QuotedStr(cxTextEdit2.Text),'SN1='+Codel1);

    if (cxRadioButton2.Checked=True) AND (Codel2<>'') then
       DM.Update('StorageL2','name='+QuotedStr(cxTextEdit4.Text),'SN2='+Codel2);

    if (cxRadioButton3.Checked=True) AND (Codel3<>'') then
       DM.Update('StorageL3','name='+QuotedStr(cxTextEdit1.Text),'SN3='+Codel3);

    cxTextEdit2.Text:='';
    CodeL1:='';
    cxTextEdit4.Text:='';
    cxComboBox1.ItemIndex:=-1;
    Codel2:='';
    cxTextEdit1.Text:='';
    cxComboBox2.ItemIndex:=-1;
    cxComboBox6.ItemIndex:=-1;
    Codel3:='';
    DrawTreeView(TreeView1);
    end;
end;

procedure TStorageLevel.cxButton4Click(Sender: TObject);
begin
    if Clicked=True then
    begin
    if (cxRadioButton1.Checked=True) AND (Codel1<>'') then
    begin
        DM.ADORun.Close;
        DM.ADORun.CommandText:='Select * from StorageL2 Where SN1='+Codel1;
        DM.ADORun.open;
        if DM.ADORun.RecordCount>0 then
        begin
            MessageDlg('”ÿÕ «‰ Œ«»Ì »Â ⁄·  œ«—« »Êœ‰ “Ì— ”ÿÕ ﬁ«»· Õ–› ‰„Ì »«‘œ',mtWarning,[mbOk], 0);
            cxTextEdit2.Text:='';
            Codel1:='';
            DM.ADORun.Close;
            Exit;
        end;
        DM.Delete('StorageL1','SN1='+Codel1);
        cxTextEdit2.Text:='';
        CodeL1 := '';
        DrawTreeView(TreeView1);
    end;

    if (cxRadioButton2.Checked=True) AND (Codel2<>'') then
    begin
        DM.ADORun.Close;
        DM.ADORun.CommandText:='Select * from StorageL3 Where SN2='+Codel2;
        DM.ADORun.open;
        if DM.ADORun.RecordCount>0 then
        begin
            MessageDlg('”ÿÕ «‰ Œ«»Ì »Â ⁄·  œ«—« »Êœ‰ “Ì— ”ÿÕ ﬁ«»· Õ–› ‰„Ì »«‘œ',mtWarning,[mbOk], 0);
            cxTextEdit4.Text:='';
            Codel2:='';
            DM.ADORun.Close;
            Exit;
        end;
        DM.Delete('StorageL2','SN2='+Codel2);
        cxTextEdit4.Text:='';
        CodeL2 := '';
        DrawTreeView(TreeView1);
    end;

    if (cxRadioButton3.Checked=True) AND (Codel3<>'') then
    begin
        DM.ADORun.Close;
        DM.ADORun.CommandText:='Select StorageNO from Storage Where StorageNO=' + Codel3;
        DM.ADORun.open;
        if DM.ADORun.RecordCount>0 then
        begin
            MessageDlg('«‰»«— Ì« «‰»«—Â«ÌÌ «“ «Ì‰ ”ÿÕ „⁄—›Ì ‘œÂ «”  Ê ﬁ«»· Õ–› ‰Ì” ',mtWarning,[mbOk], 0);
            cxTextEdit1.Text:='';
            cxComboBox2.ItemIndex:=-1;
            cxComboBox6.ItemIndex:=-1;
            Codel1:='';
            Codel2:='';
            Codel3:='';
            DM.ADORun.Close;
            Exit;
        end;
        DM.Delete('StorageL3','SN3='+Codel3);
        cxTextEdit1.Text:='';
        cxComboBox2.ItemIndex:=-1;
        cxComboBox6.ItemIndex:=-1;
        Codel1:='';
        Codel2:='';
        Codel3:='';
        DrawTreeView(TreeView1);
    end;
    end;
end;

procedure TStorageLevel.TreeView1Click(Sender: TObject);
begin
    Clicked := True;
end;

procedure TStorageLevel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Main.dxBarLargeButton24.Enabled:=True;
    ADO1.Free;ADO2.Free;ADO3.Free;ADO4.Free;
end;

end.
