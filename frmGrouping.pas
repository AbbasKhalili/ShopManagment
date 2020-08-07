unit frmGrouping;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ADODB, DB, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, cxMaskEdit, cxDropDownEdit, cxLabel,
  cxTextEdit, StdCtrls, cxRadioGroup, cxImage, cxControls, cxContainer,
  cxEdit, cxGroupBox, cxButtons, ComCtrls, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TGrouping = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxTextEdit2: TcxTextEdit;
    cxImage1: TcxImage;
    cxImage2: TcxImage;
    cxRadioButton2: TcxRadioButton;
    cxLabel9: TcxLabel;
    cxLabel4: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxComboBox1: TcxComboBox;
    cxComboBox4: TcxComboBox;
    TreeView1: TTreeView;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxRadioButton1Click(Sender: TObject);
    procedure cxRadioButton2Click(Sender: TObject);
    procedure cxTextEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
       CodeL1,CodeL2,Level1,Level2 : String;
       TabSelect : Integer;
       TableName ,FieldName : String;
       ADO1,ADO2,ADO3 : TADODataSet;
       Clicked : Boolean;
       procedure EmptyTextBox();
       procedure DrawTreeView(MTreeView: TTreeView);
  public

  end;

var
  Grouping: TGrouping;

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

procedure TGrouping.DrawTreeView(MTreeView : TTreeView);
var
    Lname1,Lname2 : String;
    Lcode1 : integer;
    MyNode, Node, Parent : TTreeNode;
begin
    MTreeView.Items.Clear;
    Node := nil;

    ADO1.close;
    ADO1.CommandText := 'select * from Level1';
    ADO1.Open;
    while not ADO1.Eof do
    begin
        Lname1 := ADO1.FieldValues['Level1'];
        Lcode1 := ADO1.FieldValues['codeL1'];
        MyNode := MTreeView.Items.Add(Node, Lname1);
        Parent := MyNode;

        ADO2.close;
        ADO2.CommandText := 'select * from Level2 where codeL1='+IntToStr(Lcode1);
        ADO2.Open;
        while not ADO2.Eof do
        begin
            Lname2  := ADO2.FieldValues['Level2'];
            MTreeView.Items.AddChild(Parent, Lname2);
            ADO2.Next;
        end;
        ADO1.Next;
        Node := MyNode;
    end;
    ADO1.Close;
    ADO2.Close;
    MTreeView.Select(node);
    MTreeView.FullExpand;
end;

procedure TGrouping.EmptyTextBox();
begin
    case Tabselect of
       1 : cxTextEdit2.text:='';
       2 : cxTextEdit4.text:='';
    end;
end;

procedure TGrouping.cxButton1Click(Sender: TObject);
begin
    EmptyTextBox;
    case Tabselect of
       1: cxTextEdit2.SetFocus;
       2: cxTextEdit4.SetFocus;
    end;
end;

procedure TGrouping.cxButton2Click(Sender: TObject);
var
    Query ,C  : String;
begin
    case TabSelect of
       1 : begin
               ADO3.Close;
               ADO3.CommandText:='Select * from Level1 where Level1='+QuotedStr(cxTextEdit2.Text);
               ADO3.Open;
               if ADO3.RecordCount <= 0 then
               begin
                   ADO3.Close;
                   ADO3.CommandText:='Select * from Level2 where Level2='+QuotedStr(cxTextEdit2.Text);
                   ADO3.Open;
                   if ADO3.RecordCount > 0 then
                   begin
                       MessageDlg('ﬁ»·« «“ «Ì‰ ‰«„ »—«Ì ê—ÊÂ Ì« “Ì— ê—ÊÂÌ «” ›«œÂ ‘œÂ «” ',mtWarning,[mbOk], 0);
                       exit;
                   end;
               end
            else
               begin
                   MessageDlg('ﬁ»·« «“ «Ì‰ ‰«„ »—«Ì ê—ÊÂ Ì« “Ì— ê—ÊÂÌ «” ›«œÂ ‘œÂ «” ',mtWarning,[mbOk], 0);
                   exit;
               end;
           end;
    2 : begin
            ADO3.Close;
            ADO3.CommandText:='Select Level1 from Level1 where Level1='+QuotedStr(cxTextEdit4.Text);
            ADO3.Open;
            if  ADO3.RecordCount <= 0 then
            begin
                ADO3.Close;
                ADO3.CommandText:='Select Level2 from Level2 where Level2='+QuotedStr(cxTextEdit4.Text);
                ADO3.Open;
                if ADO3.RecordCount > 0 then
                begin
                    MessageDlg('ﬁ»·« «“ «Ì‰ ‰«„ »—«Ì ê—ÊÂ Ì« “Ì— ê—ÊÂÌ «” ›«œÂ ‘œÂ «” ',mtWarning,[mbOk], 0);
                    exit;
                end;
            end
         else
            begin
                MessageDlg('ﬁ»·« «“ «Ì‰ ‰«„ »—«Ì ê—ÊÂ Ì« “Ì— ê—ÊÂÌ «” ›«œÂ ‘œÂ «” ',mtWarning,[mbOk], 0);
                exit;
            end;
        end;
    End;

    case TabSelect of
       1 : begin
               if DM.GetAlarm(cxTextEdit2,'⁄‰Ê«‰ ê—ÊÂ —« Ê«—œ ò‰Ìœ')=False then
               begin  cxTextEdit2.SetFocus;  exit; end;
               Query := inttostr(DM.getmax(tableName,'codeL1','')) + ',' + QuotedStr(cxTextEdit2.Text);
           end;
       2 : Begin
               if DM.GetAlarm(cxComboBox1,'«» œ« ⁄‰Ê«‰ ê—ÊÂ —« «‰ Œ«» ò‰Ìœ')=False then
               begin  cxComboBox1.SetFocus;  exit; end;
               if DM.GetAlarm(cxTextEdit4,'⁄‰Ê«‰ “Ì— ê—ÊÂ —« Ê«—œ ò‰Ìœ')=False then
               begin  cxTextEdit4.SetFocus;  exit; end;
               Query := cxComboBox4.Text;
               c := inttostr(DM.getmax(tableName,'codeL2','codeL1='+cxComboBox4.Text));
               if Length(C) >= 2 then
                  Query := Query + ',' + C + ',' + QuotedStr(cxTextEdit4.Text)
                  else
                  Query := Query + ',' + cxComboBox4.Text + '0' + C + ',' + QuotedStr(cxTextEdit4.Text);
           End;
    end;
    Dm.insert(TableName,FieldName,Query);
    DrawTreeView(TreeView1);
    EmptyTextBox;
end;

procedure TGrouping.FormShow(Sender: TObject);
begin
    DM.BTNState(cxButton1,cxButton2,cxButton3,cxButton4,nil,main.Permission[34],main.Permission[34],main.Permission[35],main.Permission[36],'1');
    ADO1 := TADODataSet.Create(Self);
    ADO2 := TADODataSet.Create(Self);
    ADO3 := TADODataSet.Create(Self);
    ADO1.Connection := DM.Connection;
    ADO2.Connection := DM.Connection;
    ADO3.Connection := DM.Connection;
    DrawTreeView(TreeView1);
    SetWinControlBiDi(TreeView1);
    TreeView1.Refresh;
    TabSelect := 1;
    TableName :='Level1';
    FieldName :='codeL1,Level1';
    Clicked := False;
end;

procedure TGrouping.cxComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
   cxComboBox4.ItemIndex := cxComboBox1.ItemIndex;
end;

procedure TGrouping.cxComboBox4PropertiesEditValueChanged(Sender: TObject);
begin
   cxComboBox1.ItemIndex := cxComboBox4.ItemIndex;
end;

procedure TGrouping.cxRadioButton1Click(Sender: TObject);
begin
    cxRadioButton1.Checked := True;
    if cxRadioButton1.Checked then
    begin
        TabSelect := 1;
        TableName :='Level1';
        FieldName :='codeL1,Level1';
    end;
end;

procedure TGrouping.cxRadioButton2Click(Sender: TObject);
begin
    cxRadioButton2.Checked := True;
    if cxRadioButton2.Checked then
    begin
        DM.FillCombo(cxComboBox4,cxComboBox1,'codeL1','Level1','Level1','','codeL1,Level1');
        TabSelect := 2;
        TableName :='Level2';
        FieldName :='codeL1,codeL2,Level2';
    end;
end;

procedure TGrouping.cxTextEdit2KeyDown(Sender: TObject; var Key: Word;
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

procedure TGrouping.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
    if Clicked = True then
    begin
    CodeL1:='';
    CodeL2:='';
    Level1:='';
    Level2:='';
    cxTextEdit2.Text:='';
    cxTextEdit4.text:='';
    cxComboBox1.ItemIndex:=-1;
    DM.ADORun.Close;
    DM.ADORun.CommandText:='select * from level1 where level1='+QuotedStr(Node.Text);
    DM.ADORun.open;
    if DM.ADORun.RecordCount>0 then
       begin
           cxRadioButton1.Checked:=true;
           CodeL1:=inttostr(DM.ADORun.FieldValues['codel1']);
           cxTextEdit2.Text:=DM.ADORun.FieldValues['level1'];
           cxTextEdit2.SetFocus;
       end
     else
       begin
           DM.ADORun.Close;
           DM.ADORun.CommandText:='select * from level2 where level2='+QuotedStr(Node.Text);
           DM.ADORun.open;
           if DM.ADORun.RecordCount>0 then
           begin
               cxRadioButton2.Checked:=true;
               CodeL1:=inttostr(DM.ADORun.FieldValues['codel1']);
               CodeL2:=inttostr(DM.ADORun.FieldValues['codel2']);
               cxComboBox4.Text:=CodeL1;
               cxTextEdit4.Text:=DM.ADORun.FieldValues['level2'];
               cxTextEdit4.SetFocus;
               DM.ADORun.Close;
           end
       end;
    end;   
end;

procedure TGrouping.cxButton4Click(Sender: TObject);
begin
    if Clicked=True then
    begin
    if (cxRadioButton1.Checked=True) AND (Codel1<>'') then
    begin
        DM.ADORun.Close;
        DM.ADORun.CommandText:='Select * from Level2 Where Codel1='+Codel1;
        DM.ADORun.open;
        if DM.ADORun.RecordCount>0 then
        begin
            MessageDlg('ê—ÊÂ «‰ Œ«» ‘œÂ »Â ⁄·  œ«‘ ‰ “Ì— ê—ÊÂ ﬁ«»· Õ–› ‰„Ì »«‘œ',mtWarning,[mbOk], 0);
            cxTextEdit2.Text:='';
            Codel1:='';
            DM.ADORun.Close;
            Exit;
        end;
        DM.Delete('Level1','Codel1='+Codel1);
        cxTextEdit2.Text:='';
        CodeL1:='';
        DrawTreeView(TreeView1);
    end;

    if (cxRadioButton2.Checked=True) AND (Codel2<>'') then
    begin
        DM.ADORun.Close;
        DM.ADORun.CommandText:='Select groupcode from kala Where groupcode='+Codel2;
        DM.ADORun.open;
        if DM.ADORun.RecordCount>0 then
        begin
            MessageDlg('«“ “Ì— ê—ÊÂ «‰ Œ«» ‘œÂ ò«·« „⁄—›Ì ‘œÂ «”  Ê ﬁ«»· Õ–› ‰„Ì »«‘œ',mtWarning,[mbOk], 0);
            cxTextEdit4.Text:='';
            cxComboBox1.ItemIndex:=-1;
            Codel1:='';
            Codel2:='';
            DM.ADORun.Close;
            Exit;
        end;
        DM.Delete('Level2','Codel2='+Codel2);
        cxTextEdit4.Text:='';
        cxComboBox1.ItemIndex:=-1;
        Codel1:='';
        Codel2:='';
        DrawTreeView(TreeView1);
    end;
    End;
end;

procedure TGrouping.cxButton3Click(Sender: TObject);
begin
    if Clicked=True then
    begin
    if (cxRadioButton1.Checked=True) AND (Codel1<>'') then
       DM.Update('Level1','Level1='+QuotedStr(cxTextEdit2.Text),'Codel1='+Codel1);

    if (cxRadioButton2.Checked=True) AND (Codel2<>'') then
       DM.Update('Level2','Level2='+QuotedStr(cxTextEdit4.Text),'Codel2='+Codel2);

    cxTextEdit2.Text:='';
    CodeL1:='';
    cxTextEdit4.Text:='';
    cxComboBox1.ItemIndex:=-1;
    Codel2:='';
    DrawTreeView(TreeView1);
    end;
end;

procedure TGrouping.TreeView1Click(Sender: TObject);
begin
    Clicked := True;
end;

procedure TGrouping.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Main.CmdGroupingKala.Enabled:=True;
    ADO1.Free;ADO2.Free;ADO3.Free;
end;

end.
