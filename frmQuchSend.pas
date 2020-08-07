unit frmQuchSend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmTMP, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMemo, cxMaskEdit, cxLabel,
  cxDropDownEdit, cxTextEdit, cxContainer, cxGroupBox, StdCtrls, cxButtons,
  cxImage, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

Const
     TableName = 'QuchSend';
     FieldName = 'code,serial,date,cost,bank,number,seller,description,state,DateSave,TimeSave,UserSave,DocNO';

type
  TQuchSend = class(TTMP)
    cxButton7: TcxButton;
    cxTextEdit2: TcxTextEdit;
    cxComboBox3: TcxComboBox;
    cxComboBox1: TcxComboBox;
    cxLabel4: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxComboBox2: TcxComboBox;
    cxMaskEdit2: TcxMaskEdit;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel6: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxComboBox4: TcxComboBox;
    cxComboBox5: TcxComboBox;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxMemo1: TcxMemo;
    cxLabel5: TcxLabel;
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

  end;

var
  QuchSend: TQuchSend;

implementation

uses frmDM, frmMain, frmDefineCoding;

{$R *.dfm}

procedure TQuchSend.EmptyTextBox();
begin
    cxTextEdit1.Text:='';
    cxTextEdit2.Text:='';
    cxMaskEdit1.text:='';
    cxMaskEdit2.text:='';
    cxComboBox1.ItemIndex:=-1;
    cxComboBox2.ItemIndex:=-1;
    cxComboBox3.ItemIndex:=-1;
    cxMemo1.Text:='';
    RecSelect:=0;
    NewRec:=0;
end;

procedure TQuchSend.RefreshGrid();
begin
    DM.Select('QuchSend q,banks b, StorageL3 s','q.code,q.serial,q.date,q.cost,q.number,q.description,q.state,b.name bankname,s.name sellername','q.bank=b.code and q.seller=s.SN3 and q.usersave='+QuotedStr(main.UserNow));
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource:=DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName:='code';
    cxGrid1DBTableView1Column2.DataBinding.FieldName:='date';
    cxGrid1DBTableView1Column3.DataBinding.FieldName:='cost';
    cxGrid1DBTableView1Column4.DataBinding.FieldName:='bankname';
    cxGrid1DBTableView1Column5.DataBinding.FieldName:='sellername';
    cxGrid1DBTableView1Column6.DataBinding.FieldName:='state';
    cxGrid1DBTableView1Column7.DataBinding.FieldName:='serial';
    cxGrid1DBTableView1Column8.DataBinding.FieldName:='description';
end;

procedure TQuchSend.FormShow(Sender: TObject);
begin
    DM.BTNState(cxButton2,cxButton3,cxButton4,cxButton5,cxButton6,main.Permission[66],main.Permission[66],main.Permission[67],main.Permission[68],'1');
    DM.FillCombo(cxComboBox4,cxComboBox1,'code','name','Banks','','code,name');
    DM.FillCombo(cxComboBox5,cxComboBox3,'SN3','name','StorageL3','','SN3,name');
    cxMaskEdit6.Text:=main.DateNow;
    RefreshGrid();
    cxButton2.SetFocus;
end;

procedure TQuchSend.cxButton2Click(Sender: TObject);
begin
    cxGroupBox1.Enabled:=true;
    EmptyTextBox;
    cxTextEdit1.SetFocus;
    NewRec:=1;
    cxButton3.Default:=true;
    cxComboBox2.ItemIndex:=0;
    cxMaskEdit1.Text:=main.DateNow;
end;

procedure TQuchSend.cxButton3Click(Sender: TObject);
Var
    MAXCode : String;
begin
    If NewRec<=0 then
       Exit;
       
    if DM.GetAlarm(cxTextEdit1,'‘„«—Â ”—Ì«· çò —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit1,' «—ÌŒ ”— —”Ì— çò —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit2,'„»·€ çò —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxComboBox2,'Ê÷⁄Ì  çò —« «‰ Œ«» ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxComboBox3,'‰«„ êÌ—‰œÂ çò Ì« ‰«„ ›—Ê‘‰œÂ —« Ê«—œ ò‰Ìœ')=False then
       exit;

    MAXCode := inttostr(DM.GetFieldMax(TableName));
                 //    'code,serial,date,cost,bank,number,seller,description,state,DateSave,TimeSave,UserSave,DocNO';
    Dm.insert(TableName,FieldName, MAXCode + ',' +
                                   QuotedStr(cxTextEdit1.text) + ',' +
                                   QuotedStr(cxMaskEdit1.text) + ',' +
                                   cxMaskEdit2.text + ',' +
                                   cxComboBox4.text + ',' +
                                   QuotedStr(cxTextEdit2.text) + ',' +
                                   cxComboBox5.text + ',' +
                                   QuotedStr(cxMemo1.text) + ',' +
                                   QuotedStr(cxComboBox2.text) + ',' +
                                   QuotedStr(Main.DateNow) + ',' +
                                   QuotedStr(Main.TimeNow) + ',' +
                                   QuotedStr(Main.UserNow) + ',' +
                                   intTostr(Main.DocNumber));

    //Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(Main.UserNow));

    DM.FillReportDay('çò Å—œ«Œ Ì','À»  çò Å—œ«Œ Ì »« ‘„«—Â ”—Ì«· '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' »Â '+cxComboBox3.Text + ' Ê  «—ÌŒ ”— —”Ìœ ' + cxMaskEdit1.Text);
    DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('çò Å—œ«Œ Ì') + ',' +
                                QuotedStr('À»  çò Å—œ«Œ Ì »« ‘„«—Â ”—Ì«· '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' »Â '+cxComboBox3.Text + ' Ê  «—ÌŒ ”— —”Ìœ ' + cxMaskEdit1.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));

    DM.AlarmQuchSend;
    RefreshGrid();
    EmptyTextBox;
    cxButton3.Default:=False;
    cxButton2.SetFocus;
    cxGroupBox1.Enabled:=False;
end;

procedure TQuchSend.cxButton4Click(Sender: TObject);
begin
    if DM.GetAlarm(cxTextEdit1,'‘„«—Â ”—Ì«· çò —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit1,' «—ÌŒ ”— —”Ì— çò —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit2,'„»·€ çò —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxComboBox2,'Ê÷⁄Ì  çò —« «‰ Œ«» ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxComboBox3,'‰«„ êÌ—‰œÂ çò Ì« ‰«„ ›—Ê‘‰œÂ —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if RecSelect > 0 then
    begin                   //'code,serial,date,cost,bank,number,seller,description,state';
        DM.Update(TableName,'serial=' + QuotedStr(cxTextEdit1.text) + ',' +
                            'date=' + QuotedStr(cxMaskEdit1.text) + ',' +
                            'cost=' + cxMaskEdit2.Text + ',' +
                            'bank=' + cxComboBox4.Text + ',' +
                            'number=' + QuotedStr(cxTextEdit2.Text) + ',' +
                            'seller=' + cxComboBox5.Text + ',' +
                            'description=' + QuotedStr(cxMemo1.Text) + ',' +
                            'state=' + QuotedStr(cxComboBox2.Text) + ',' +
                            'DateSave=' + QuotedStr(Main.DateNow) + ',' +
                            'TimeSave=' + QuotedStr(Main.TimeNow) + ',' +
                            'UserSave=' + QuotedStr(Main.UserNow)
                           ,'code='+ inttostr(RecSelect));

        DM.FillReportDay('çò Å—œ«Œ Ì','«’·«Õ çò Å—œ«Œ Ì »« ‘„«—Â ”—Ì«· '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' »Â '+cxComboBox3.Text + ' Ê  «—ÌŒ ”— —”Ìœ ' + cxMaskEdit1.Text);
        DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('çò Å—œ«Œ Ì') + ',' +
                                QuotedStr('«’·«Õ çò Å—œ«Œ Ì »« ‘„«—Â ”—Ì«· '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' »Â '+cxComboBox3.Text + ' Ê  «—ÌŒ ”— —”Ìœ ' + cxMaskEdit1.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));
        DM.AlarmQuchSend;
        RefreshGrid;
        EmptyTextBox;
        cxGroupBox1.Enabled:=False;
    end;
end;

procedure TQuchSend.cxButton5Click(Sender: TObject);
begin
    if RecSelect > 0 then
    begin
        DM.Delete(TableName,'code='+ inttostr(RecSelect));

        DM.FillReportDay('çò Å—œ«Œ Ì','Õ–› çò Å—œ«Œ Ì »« ‘„«—Â ”—Ì«· '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' »Â '+cxComboBox3.Text + ' Ê  «—ÌŒ ”— —”Ìœ ' + cxMaskEdit1.Text);
        DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('çò Å—œ«Œ Ì') + ',' +
                                QuotedStr('Õ–› çò Å—œ«Œ Ì »« ‘„«—Â ”—Ì«· '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' »Â '+cxComboBox3.Text + ' Ê  «—ÌŒ ”— —”Ìœ ' + cxMaskEdit1.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));
        DM.AlarmQuchSend;
        RefreshGrid;
        EmptyTextBox;
        cxGroupBox1.Enabled:=False;
    end;
end;

procedure TQuchSend.cxGrid1DBTableView1CellClick(
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
    cxComboBox3.Text := DM.DataS.DataSet.FieldValues['sellername'];
    cxComboBox2.Text := DM.DataS.DataSet.FieldValues['state'];
    cxMemo1.Text := DM.DataS.DataSet.FieldValues['description'];
end;

procedure TQuchSend.cxComboBox3PropertiesEditValueChanged(Sender: TObject);
begin
    cxComboBox5.ItemIndex := cxComboBox3.ItemIndex;
end;

procedure TQuchSend.cxComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
    cxComboBox4.ItemIndex := cxComboBox1.ItemIndex; 
end;

procedure TQuchSend.cxMaskEdit1Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit1);
end;

procedure TQuchSend.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TQuchSend.cxButton8Click(Sender: TObject);
begin
{    DefineCoding := TDefineCoding.Create(Self);
    DefineCoding.Kind := Define_Customer;
    DefineCoding.ShowModal;
    DefineCoding.Destroy;
    DM.FillCombo(cxComboBox5,cxComboBox3,'code','name','Customer','','code,name');
    cxComboBox3.SetFocus;
    cxComboBox3.ItemIndex:=cxComboBox3.Properties.Items.Count-1
}    
end;

procedure TQuchSend.cxButton9Click(Sender: TObject);
begin
    DefineCoding := TDefineCoding.Create(Self);
    DefineCoding.Kind := Define_Bank;
    DefineCoding.ShowModal;
    DefineCoding.Destroy;
    DM.FillCombo(cxComboBox4,cxComboBox1,'code','name','Banks','','code,name');
    cxComboBox1.SetFocus;
    cxComboBox1.ItemIndex:=cxComboBox1.Properties.Items.Count-1
end;

procedure TQuchSend.cxMaskEdit6KeyPress(Sender: TObject; var Key: Char);
begin
    If Key=#13 then
       cxButton12.Click;
end;

procedure TQuchSend.cxMaskEdit3KeyPress(Sender: TObject; var Key: Char);
begin
    If Key=#13 then
       cxButton10.Click;
end;

procedure TQuchSend.cxButton12Click(Sender: TObject);
begin
    DM.FixYear13(cxMaskEdit6);
    DM.Select('QuchSend q,banks b, StorageL3 s','q.code,q.serial,q.date,q.cost,q.number,q.description,q.state,b.name bankname,s.name sellername','q.bank=b.code and q.seller=s.SN3 and q.usersave='+QuotedStr(main.UserNow)+' AND q.[date] Like '+QuotedStr(cxMaskEdit6.Text+'%'));
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource:=DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName:='code';
    cxGrid1DBTableView1Column2.DataBinding.FieldName:='date';
    cxGrid1DBTableView1Column3.DataBinding.FieldName:='cost';
    cxGrid1DBTableView1Column4.DataBinding.FieldName:='bankname';
    cxGrid1DBTableView1Column5.DataBinding.FieldName:='sellername';
    cxGrid1DBTableView1Column6.DataBinding.FieldName:='state';
end;

procedure TQuchSend.cxButton10Click(Sender: TObject);
begin
    DM.Select('QuchSend q,banks b, StorageL3 s','q.code,q.serial,q.date,q.cost,q.number,q.description,q.state,b.name bankname,s.name sellername','q.bank=b.code and q.seller=s.SN3 and q.usersave='+QuotedStr(main.UserNow)+' AND q.[serial] Like '+QuotedStr('%'+cxMaskEdit3.Text+'%'));
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource:=DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName:='code';
    cxGrid1DBTableView1Column2.DataBinding.FieldName:='date';
    cxGrid1DBTableView1Column3.DataBinding.FieldName:='cost';
    cxGrid1DBTableView1Column4.DataBinding.FieldName:='bankname';
    cxGrid1DBTableView1Column5.DataBinding.FieldName:='sellername';
    cxGrid1DBTableView1Column6.DataBinding.FieldName:='state';
end;

procedure TQuchSend.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Main.dxBarLargeButton7.Enabled:=True;
end;

end.
