unit frmCostSend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmDM ,ADODB, frmTMP, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMemo, cxTextEdit, cxLabel,
  cxDropDownEdit, cxMaskEdit, cxContainer, cxGroupBox, StdCtrls, cxButtons,
  cxImage, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

Const
     TableName = 'CostSend';
     FieldName = 'code,seller,price,date,description,DateSave,TimeSave,UserSave,DocNO';
type
  TCostSend = class(TTMP)
    cxMaskEdit2: TcxMaskEdit;
    cxComboBox3: TcxComboBox;
    cxLabel8: TcxLabel;
    cxLabel3: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxComboBox1: TcxComboBox;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxButton7: TcxButton;
    cxMemo1: TcxMemo;
    cxLabel4: TcxLabel;
    cxLabel12: TcxLabel;
    cxMaskEdit6: TcxMaskEdit;
    cxButton12: TcxButton;
    cxImage1: TcxImage;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxMaskEdit1Exit(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton7Click(Sender: TObject);
    procedure cxMaskEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton12Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
       RecSelect , NewRec : Integer;
       procedure RefreshGrid();
       procedure EmptyTextBox();
  public

  end;

var
  CostSend: TCostSend;

implementation

uses frmMain, frmDefineCoding;

{$R *.dfm}

procedure TCostSend.EmptyTextBox();
begin
    cxTextEdit1.Text:='';
    cxMaskEdit1.text:='';
    cxMaskEdit2.text:='';
    cxComboBox3.ItemIndex:=-1;
    cxMemo1.Text:='';
    RecSelect:=0;
    NewRec:=0;
end;

procedure TCostSend.RefreshGrid();
begin
    DM.Select('CostSend cs,StorageL3 s,Cach C','cs.code,(cs.price*(-1)) AS Price,cs.[date],cs.[description],s.[name]','cs.seller=s.SN3 and c.AC_CS=cs.code and (c.linkto is null and c.deliverperson is null and c.deliverbank is null) and c.userid='+QuotedStr(main.UserNow));
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource := DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName := 'code';
    cxGrid1DBTableView1Column2.DataBinding.FieldName := 'date';
    cxGrid1DBTableView1Column3.DataBinding.FieldName := 'price';
    cxGrid1DBTableView1Column4.DataBinding.FieldName := 'name';
    cxGrid1DBTableView1Column5.DataBinding.FieldName := 'description';
end;

procedure TCostSend.FormShow(Sender: TObject);
begin
    DM.BTNState(cxButton2,cxButton3,cxButton4,cxButton5,cxButton6,main.Permission[76],main.Permission[76],main.Permission[77],main.Permission[78],'1');
    DM.FillCombo(cxComboBox1,cxComboBox3,'SN3','name','StorageL3','','SN3,name');
    RefreshGrid();
    cxButton2.SetFocus;
    NewRec:=0;
    cxMaskEdit6.Text:=main.DateNow;
end;

procedure TCostSend.cxButton2Click(Sender: TObject);
begin
    cxGroupBox1.Enabled:=True;
    EmptyTextBox();
    NewRec := DM.GetFieldMax(TableName);
    cxTextEdit1.text := inttostr(NewRec);
    cxMaskEdit2.SetFocus;
    cxButton3.Default:=True;
    cxMaskEdit1.Text := main.DateNow;
end;

procedure TCostSend.cxButton3Click(Sender: TObject);
begin
    if NewRec<=0 then
       Exit;

    if DM.GetAlarm(cxMaskEdit1,' «—ÌŒ Å—œ«Œ  —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit2,'„»·€ Å—œ«Œ Ì —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxComboBox3,'‰«„ ›—Ê‘‰œÂ —« Ê«—œ ò‰Ìœ')=False then
       exit;

                 //    'code,seller,price,date,description,DateSave,TimeSave,UserSave,DocNO
    Dm.insert(TableName,FieldName,cxTextEdit1.text + ',' +
                                  cxComboBox1.text + ',-' +
                                  cxMaskEdit2.text + ',' +
                                  QuotedStr(cxMaskEdit1.text) + ',' +
                                  QuotedStr(cxMemo1.text) + ',' +
                                  QuotedStr(Main.DateNow) + ',' +
                                  QuotedStr(Main.TimeNow) + ',' +
                                  QuotedStr(Main.UserNow) + ',' +
                                  intTostr(Main.DocNumber));

    DM.insert('Cach','userid,ActivityDate,AC_CS',QuotedStr(main.UserNow) + ',' +
                                                 QuotedStr(main.DateNow) + ',' +
                                                 cxTextEdit1.Text);

    Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(Main.UserNow,main.DateNow));

    DM.FillReportDay('Å—œ«Œ  ‰ﬁœÌ','À»  Å—œ«Œ  ‰ﬁœÌ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' »Â '+cxComboBox3.Text);
    DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('Å—œ«Œ  ‰ﬁœÌ') + ',' +
                                QuotedStr('À»  Å—œ«Œ  ‰ﬁœÌ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' »Â '+cxComboBox3.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));

    RefreshGrid();
    EmptyTextBox;
    cxButton2.SetFocus;
    cxButton3.Default:=False;
    cxGroupBox1.Enabled:=False;
end;

procedure TCostSend.cxButton4Click(Sender: TObject);
begin
    if DM.GetAlarm(cxMaskEdit1,' «—ÌŒ Å—œ«Œ  —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit1,'„»·€ Å—œ«Œ Ì —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxComboBox3,'‰«„ ›—Ê‘‰œÂ —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if RecSelect > 0 then
    begin
        DM.Update(TableName,'seller=' + cxComboBox1.text + ',' +
                            'price=-' + cxMaskEdit2.text + ',' +
                            'date=' + QuotedStr(cxMaskEdit1.Text) + ',' +
                            'description=' + QuotedStr(cxMemo1.Text) + ',' +
                            'DateSave=' + QuotedStr(Main.DateNow) + ',' +
                            'TimeSave=' + QuotedStr(Main.TimeNow) + ',' +
                            'UserSave=' + QuotedStr(Main.UserNow)
                           ,'code='+ inttostr(RecSelect));

        DM.FillReportDay('Å—œ«Œ  ‰ﬁœÌ','«’·«Õ Å—œ«Œ  ‰ﬁœÌ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' »Â '+cxComboBox3.Text);
        DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('Å—œ«Œ  ‰ﬁœÌ') + ',' +
                                QuotedStr('«’·«Õ Å—œ«Œ  ‰ﬁœÌ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' »Â '+cxComboBox3.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));

        RefreshGrid;
        EmptyTextBox;
        Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(Main.UserNow,main.DateNow));
        cxGroupBox1.Enabled:=False;
    end;
end;

procedure TCostSend.cxButton5Click(Sender: TObject);
begin
    if RecSelect > 0 then
    begin
        DM.Delete(TableName,'code='+ inttostr(RecSelect));
        DM.Delete('Cach','AC_CS='+ inttostr(RecSelect),0);

        DM.FillReportDay('Å—œ«Œ  ‰ﬁœÌ','Õ–› Å—œ«Œ  ‰ﬁœÌ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' »Â '+cxComboBox3.Text);
        DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('Å—œ«Œ  ‰ﬁœÌ') + ',' +
                                QuotedStr('Õ–› Å—œ«Œ  ‰ﬁœÌ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' »Â '+cxComboBox3.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));

        RefreshGrid;
        EmptyTextBox;
        Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(Main.UserNow,main.DateNow));
        cxGroupBox1.Enabled:=False;
    end;
end;

procedure TCostSend.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    cxGroupBox1.Enabled:=True;
    NewRec:=0;
    RecSelect := DM.DataS.DataSet.FieldValues['code'];
    cxTextEdit1.Text := inttostr(RecSelect);
    cxMaskEdit1.Text := DM.DataS.DataSet.FieldValues['date'];
    cxMaskEdit2.Text := DM.DataS.DataSet.FieldValues['price'];
    cxComboBox3.Text := DM.DataS.DataSet.FieldValues['name'];
    cxMemo1.Text := DM.DataS.DataSet.FieldValues['Description'];
end;

procedure TCostSend.cxComboBox3PropertiesEditValueChanged(Sender: TObject);
begin
    cxComboBox1.ItemIndex := cxComboBox3.ItemIndex;
end;

procedure TCostSend.cxMaskEdit1Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit1);
end;

procedure TCostSend.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TCostSend.cxButton7Click(Sender: TObject);
begin
{    DefineCoding := TDefineCoding.Create(Self);
    DefineCoding.Kind := Define_Customer;
    DefineCoding.ShowModal;
    DefineCoding.Destroy;
    DM.FillCombo(cxComboBox1,cxComboBox3,'code','name','Customer','','code,name');
    cxComboBox3.SetFocus;
    cxComboBox3.ItemIndex:=cxComboBox3.Properties.Items.Count-1
}    
end;

procedure TCostSend.cxMaskEdit6KeyPress(Sender: TObject; var Key: Char);
begin
    If Key=#13 then
       cxButton12.Click;
end;

procedure TCostSend.cxButton12Click(Sender: TObject);
begin
    DM.FixYear13(cxMaskEdit6);
    DM.Select('CostSend cs,StorageL3 s,Cach C','cs.code,(cs.price*(-1)) AS Price,cs.[date],cs.[description],s.[name]','cs.seller=s.SN3 and c.AC_CS=cs.code and (c.linkto is null and c.deliverperson is null and c.deliverbank is null) and c.userid='+QuotedStr(main.UserNow)+' AND cs.[date] Like '+QuotedStr(cxMaskEdit6.Text+'%'));
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource := DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName := 'code';
    cxGrid1DBTableView1Column2.DataBinding.FieldName := 'date';
    cxGrid1DBTableView1Column3.DataBinding.FieldName := 'price';
    cxGrid1DBTableView1Column4.DataBinding.FieldName := 'name';
    cxGrid1DBTableView1Column5.DataBinding.FieldName := 'description';
end;

procedure TCostSend.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Main.dxBarLargeButton5.Enabled:=True;
end;

end.
