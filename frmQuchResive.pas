unit frmQuchResive;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmTMP, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMemo, cxDropDownEdit, cxTextEdit,
  cxMaskEdit, cxLabel, cxContainer, cxGroupBox, StdCtrls, cxButtons,
  cxImage, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

Const
     TableName = 'QuchResive';
     FieldName = 'code,serial,date,cost,bank,number,Tonumber,buyer,description,state,DateSave,TimeSave,UserSave,DocNO,invoice_number';

type

  KindQuch = (KQ_In_Sale,KQ_In_FreeQuch);

  TQuchResive = class(TTMP)
    cxLabel1: TcxLabel;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel2: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxComboBox1: TcxComboBox;
    cxTextEdit2: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxMaskEdit2: TcxMaskEdit;
    cxButton7: TcxButton;
    cxComboBox2: TcxComboBox;
    cxComboBox3: TcxComboBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxComboBox4: TcxComboBox;
    cxComboBox5: TcxComboBox;
    cxLabel5: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxMemo1: TcxMemo;
    cxLabel9: TcxLabel;
    cxMaskEdit6: TcxMaskEdit;
    cxLabel12: TcxLabel;
    cxButton12: TcxButton;
    cxImage1: TcxImage;
    cxLabel10: TcxLabel;
    cxButton10: TcxButton;
    cxMaskEdit3: TcxMaskEdit;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxMaskEdit1Exit(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxMaskEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure cxMaskEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
       RecSelect , NewRec : Integer;
       procedure RefreshGrid();
       procedure EmptyTextBox();
  public
       TypeQuch : KindQuch;
       InvoiceNum : String;
  end;

var
  QuchResive: TQuchResive;

implementation

uses frmDM, frmMain, frmDefineCoding;

{$R *.dfm}

procedure TQuchResive.EmptyTextBox();
begin
    cxTextEdit1.Text:='';
    cxTextEdit2.Text:='';
    cxTextEdit3.Text:='';
    cxMaskEdit1.text:='';
    cxMaskEdit2.text:='';
    cxComboBox1.ItemIndex:=-1;
    cxComboBox2.ItemIndex:=-1;
    cxComboBox3.ItemIndex:=-1;
    cxMemo1.Text:='';
    RecSelect:=0;
    NewRec:=0;
end;

procedure TQuchResive.RefreshGrid();
begin
    DM.Select('QuchResive q,banks b, Customer s,Cach C','q.code,q.serial,q.date,q.cost,q.number,q.description,q.state,b.name bankname,s.name buyername','q.bank=b.code and q.buyer=s.code and c.AC_QR=q.code and (c.linkto is null and c.deliverperson is null and c.deliverbank is null) and c.userid='+QuotedStr(main.UserNow));
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource:=DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName:='code';
    cxGrid1DBTableView1Column2.DataBinding.FieldName:='date';
    cxGrid1DBTableView1Column3.DataBinding.FieldName:='cost';
    cxGrid1DBTableView1Column4.DataBinding.FieldName:='bankname';
    cxGrid1DBTableView1Column5.DataBinding.FieldName:='buyername';
    cxGrid1DBTableView1Column6.DataBinding.FieldName:='state';
    cxGrid1DBTableView1Column7.DataBinding.FieldName:='serial';
    cxGrid1DBTableView1Column8.DataBinding.FieldName:='description';
end;

procedure TQuchResive.FormShow(Sender: TObject);
begin
    DM.FillCombo(cxComboBox4,cxComboBox1,'code','name','Banks','','code,name');
    DM.BTNState(cxButton2,cxButton3,cxButton4,cxButton5,cxButton6,main.Permission[61],main.Permission[61],main.Permission[62],main.Permission[63],'1');
    cxMaskEdit6.Text:=main.DateNow;
    RefreshGrid();
    cxButton2.SetFocus;
end;

procedure TQuchResive.cxButton2Click(Sender: TObject);
begin
    cxGroupBox1.Enabled:=True;
    EmptyTextBox;
    cxMaskEdit1.Text := main.DateNow;
    NewRec:=1;
    cxComboBox2.ItemIndex:=0;
    cxButton3.Default:=True;
    cxTextEdit1.SetFocus;
end;

procedure TQuchResive.cxButton3Click(Sender: TObject);
VAR
    ID : String;
begin
    if NewRec<=0 then
       Exit;
       
    if DM.GetAlarm(cxTextEdit1,'‘„«—Â ”—Ì«· çò —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit1,' «—ÌŒ ”— —”Ì— çò —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit2,'„»·€ çò —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxComboBox2,'Ê÷⁄Ì  çò —« «‰ Œ«» ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxComboBox3,'‰«„ Œ—Ìœ«— —« Ê«—œ ò‰Ìœ')=False then
       exit;
        //'code,serial,date,cost,bank,number,Tonumber,buyer,description,state,DateSave,TimeSave,UserSave,DocNO';
    if InvoiceNum='' then
       InvoiceNum:='0';
    ID := inttostr(DM.GetFieldMax(TableName));
    Dm.insert(TableName,FieldName, ID + ',' +
                                   QuotedStr(cxTextEdit1.text) + ',' +
                                   QuotedStr(cxMaskEdit1.text) + ',' +
                                   cxMaskEdit2.text + ',' +
                                   cxComboBox4.text + ',' +
                                   QuotedStr(cxTextEdit2.text) + ',' +
                                   QuotedStr(cxTextEdit3.text) + ',' +
                                   cxComboBox5.text + ',' +
                                   QuotedStr(cxMemo1.text) + ',' +
                                   QuotedStr(cxComboBox2.text) + ',' +
                                   QuotedStr(Main.DateNow) + ',' +
                                   QuotedStr(Main.TimeNow) + ',' +
                                   QuotedStr(Main.UserNow) + ',' +
                                   intTostr(Main.DocNumber) + ',' +
                                   InvoiceNum);
    DM.insert('Cach','userid,ActivityDate,AC_QR',QuotedStr(main.UserNow) + ',' +
                                                 QuotedStr(main.DateNow) + ',' +
                                                 ID);

    DM.FillReportDay('çò œ—Ì«› Ì','À»  çò œ—Ì«› Ì »« ‘„«—Â ”—Ì«· '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' «“ '+cxComboBox3.Text + ' Ê  «—ÌŒ ”— —”Ìœ ' + cxMaskEdit1.Text);
    DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('çò œ—Ì«› Ì') + ',' +
                                QuotedStr('À»  çò œ—Ì«› Ì »« ‘„«—Â ”—Ì«· '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' «“ '+cxComboBox3.Text + ' Ê  «—ÌŒ ”— —”Ìœ ' + cxMaskEdit1.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));

    Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(Main.UserNow,main.DateNow));

    DM.AlarmQuchResive;
    RefreshGrid();
    EmptyTextBox;
    cxButton2.SetFocus;
    cxButton3.Default:=false;
    cxGroupBox1.Enabled:=False;
    case TypeQuch of
        KQ_In_Sale : Close;
    end;
end;

procedure TQuchResive.cxButton4Click(Sender: TObject);
begin
    if DM.GetAlarm(cxTextEdit1,'‘„«—Â ”—Ì«· çò —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit1,' «—ÌŒ ”— —”Ì— çò —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit2,'„»·€ çò —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxComboBox2,'Ê÷⁄Ì  çò —« «‰ Œ«» ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxComboBox3,'‰«„ Œ—Ìœ«— —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if RecSelect > 0 then
    begin                   //'code,serial,date,cost,bank,number,seller,description,state';
        DM.Update(TableName,'serial=' + QuotedStr(cxTextEdit1.text) + ',' +
                            'date=' + QuotedStr(cxMaskEdit1.text) + ',' +
                            'cost=' + cxMaskEdit2.Text + ',' +
                            'bank=' + cxComboBox4.Text + ',' +
                            'number=' + QuotedStr(cxTextEdit2.Text) + ',' +
                            'Tonumber=' + QuotedStr(cxTextEdit3.Text) + ',' +
                            'buyer=' + cxComboBox5.Text + ',' +
                            'description=' + QuotedStr(cxMemo1.Text) + ',' +
                            'state=' + QuotedStr(cxComboBox2.Text) + ',' +
                            'DateSave=' + QuotedStr(Main.DateNow) + ',' +
                            'TimeSave=' + QuotedStr(Main.TimeNow) + ',' +
                            'UserSave=' + QuotedStr(Main.UserNow)
                           ,'code='+ inttostr(RecSelect));

        DM.FillReportDay('çò œ—Ì«› Ì','«’·«Õ çò œ—Ì«› Ì »« ‘„«—Â ”—Ì«· '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' «“ '+cxComboBox3.Text + ' Ê  «—ÌŒ ”— —”Ìœ ' + cxMaskEdit1.Text);
        DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('çò œ—Ì«› Ì') + ',' +
                                QuotedStr('«’·«Õ çò œ—Ì«› Ì »« ‘„«—Â ”—Ì«· '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' «“ '+cxComboBox3.Text + ' Ê  «—ÌŒ ”— —”Ìœ ' + cxMaskEdit1.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));
        DM.AlarmQuchResive;
        RefreshGrid;
        EmptyTextBox;
        Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(Main.UserNow,main.DateNow));
        cxGroupBox1.Enabled:=False;
    end;
end;

procedure TQuchResive.cxButton5Click(Sender: TObject);
begin
    if RecSelect > 0 then
    begin
        DM.Delete(TableName,'code='+ inttostr(RecSelect));
        DM.Delete('Cach','AC_QR='+ inttostr(RecSelect),0);

        DM.FillReportDay('çò œ—Ì«› Ì','Õ–› çò œ—Ì«› Ì »« ‘„«—Â ”—Ì«· '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' «“ '+cxComboBox3.Text + ' Ê  «—ÌŒ ”— —”Ìœ ' + cxMaskEdit1.Text);
        DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('çò œ—Ì«› Ì') + ',' +
                                QuotedStr('Õ–› çò œ—Ì«› Ì »« ‘„«—Â ”—Ì«· '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' «“ '+cxComboBox3.Text + ' Ê  «—ÌŒ ”— —”Ìœ ' + cxMaskEdit1.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));

        DM.AlarmQuchResive;
        RefreshGrid;
        EmptyTextBox;
        Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(Main.UserNow,main.DateNow));
        cxGroupBox1.Enabled:=False;
    end;
end;

procedure TQuchResive.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    cxGroupBox1.Enabled:=True;
    NewRec:=0;
    RecSelect := DM.DataS.DataSet.FieldValues['code'];
    cxTextEdit1.Text := DM.DataS.DataSet.FieldValues['serial'];
    cxMaskEdit1.Text := DM.DataS.DataSet.FieldValues['date'];
    cxMaskEdit2.Text := DM.DataS.DataSet.FieldValues['cost'];
    cxComboBox1.Text := DM.DataS.DataSet.FieldValues['bankname'];
    cxTextEdit2.Text := DM.DataS.DataSet.FieldValues['number'];
    cxComboBox3.Text := DM.DataS.DataSet.FieldValues['buyername'];
    cxComboBox2.Text := DM.DataS.DataSet.FieldValues['state'];
    cxMemo1.Text := DM.DataS.DataSet.FieldValues['description'];
end;

procedure TQuchResive.cxComboBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox5.ItemIndex := cxComboBox3.ItemIndex;
end;

procedure TQuchResive.cxComboBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox4.ItemIndex := cxComboBox1.ItemIndex;
end;

procedure TQuchResive.FormCreate(Sender: TObject);
begin
    DM.FillCombo(cxComboBox5,cxComboBox3,'code','name','Customer','','code,name');
end;

procedure TQuchResive.cxMaskEdit1Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit1);
end;

procedure TQuchResive.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
//       VK_F8        : cxButton6.Click;
       VK_F9        : cxButton2.Click;
       VK_F10       : cxButton3.Click;
       VK_F11       : cxButton4.Click;
       VK_F12       : cxButton5.Click;
       VK_ESCAPE    : Close;
    end;
end;

procedure TQuchResive.cxButton8Click(Sender: TObject);
begin
    DefineCoding := TDefineCoding.Create(Self);
    DefineCoding.Kind := Define_Customer;
    DefineCoding.ShowModal;
    DefineCoding.Destroy;
    DM.FillCombo(cxComboBox5,cxComboBox3,'code','name','Customer','','code,name');
    cxComboBox3.SetFocus;
    cxComboBox3.ItemIndex:=cxComboBox3.Properties.Items.Count-1
end;

procedure TQuchResive.cxButton9Click(Sender: TObject);
begin
    DefineCoding := TDefineCoding.Create(Self);
    DefineCoding.Kind := Define_Bank;
    DefineCoding.ShowModal;
    DefineCoding.Destroy;
    DM.FillCombo(cxComboBox4,cxComboBox1,'code','name','Banks','','code,name');
    cxComboBox1.SetFocus;
    cxComboBox1.ItemIndex:=cxComboBox1.Properties.Items.Count-1
end;

procedure TQuchResive.cxMaskEdit6KeyPress(Sender: TObject; var Key: Char);
begin
    If Key=#13 then
       cxButton12.Click;
end;

procedure TQuchResive.cxMaskEdit3KeyPress(Sender: TObject; var Key: Char);
begin
    If Key=#13 then
       cxButton10.Click;
end;

procedure TQuchResive.cxButton12Click(Sender: TObject);
begin
    DM.FixYear13(cxMaskEdit6);
    DM.Select('QuchResive q,banks b, Customer s,Cach C','q.code,q.serial,q.date,q.cost,q.number,q.description,q.state,b.name bankname,s.name buyername','q.bank=b.code and q.buyer=s.code and c.AC_QR=q.code and (c.linkto is null and c.deliverperson is null and c.deliverbank is null) and c.userid='+QuotedStr(main.UserNow) +' AND q.[date] Like '+QuotedStr(cxMaskEdit6.Text+'%'));
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource:=DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName:='code';
    cxGrid1DBTableView1Column2.DataBinding.FieldName:='date';
    cxGrid1DBTableView1Column3.DataBinding.FieldName:='cost';
    cxGrid1DBTableView1Column4.DataBinding.FieldName:='bankname';
    cxGrid1DBTableView1Column5.DataBinding.FieldName:='buyername';
    cxGrid1DBTableView1Column6.DataBinding.FieldName:='state';
end;

procedure TQuchResive.cxButton10Click(Sender: TObject);
begin
    DM.Select('QuchResive q,banks b, Customer s,Cach C','q.code,q.serial,q.date,q.cost,q.number,q.description,q.state,b.name bankname,s.name buyername','q.bank=b.code and q.buyer=s.code and c.AC_QR=q.code and (c.linkto is null and c.deliverperson is null and c.deliverbank is null) and c.userid='+QuotedStr(main.UserNow) +' AND q.[serial] Like '+QuotedStr('%'+cxMaskEdit3.Text+'%'));
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource:=DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName:='code';
    cxGrid1DBTableView1Column2.DataBinding.FieldName:='date';
    cxGrid1DBTableView1Column3.DataBinding.FieldName:='cost';
    cxGrid1DBTableView1Column4.DataBinding.FieldName:='bankname';
    cxGrid1DBTableView1Column5.DataBinding.FieldName:='buyername';
    cxGrid1DBTableView1Column6.DataBinding.FieldName:='state';
end;

procedure TQuchResive.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Main.dxBarLargeButton6.Enabled:=True;
end;

end.

