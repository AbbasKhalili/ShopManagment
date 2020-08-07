unit frmCostResive;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmTMP, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMemo, cxTextEdit, cxMaskEdit,
  cxLabel, cxDropDownEdit, cxContainer, cxGroupBox, StdCtrls, cxButtons,
  cxImage, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

Const
     TableName = 'CostResive';
     FieldName = 'code,buyer,price,date,description,DateSave,TimeSave,UserSave,DocNO,invoice_number';

type

    KindCost = (KC_In_Sale,KC_In_FreeCost);

  TCostResive = class(TTMP)
    cxComboBox3: TcxComboBox;
    cxLabel8: TcxLabel;
    cxMaskEdit2: TcxMaskEdit;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    cxMaskEdit1: TcxMaskEdit;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxComboBox1: TcxComboBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
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
    procedure FormCreate(Sender: TObject);
    procedure cxMaskEdit1Exit(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cxMaskEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
       RecSelect , NewRec : Integer;
       procedure RefreshGrid();
       procedure EmptyTextBox();
  public
       TypeCost : KindCost;
       InvoiceNum : string;
  end;

var
  CostResive: TCostResive;

implementation

uses frmDM, frmMain, frmDefineCoding;

{$R *.dfm}

procedure TCostResive.EmptyTextBox();
begin
    cxTextEdit1.Text:='';
    cxMaskEdit1.text:='';
    cxMaskEdit2.text:='';
    cxComboBox3.ItemIndex:=-1;
    cxMemo1.Text:='';
    RecSelect:=0;
    NewRec:=0;
end;

procedure TCostResive.RefreshGrid();
begin
    DM.Select('CostResive cs,Customer s,Cach C','cs.code,cs.price,cs.date,cs.description,s.name','cs.buyer=s.code and c.AC_CR=cs.code and (c.linkto is null and c.deliverperson is null and c.deliverbank is null) and c.userid='+QuotedStr(main.UserNow));
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource:=DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName:='code';
    cxGrid1DBTableView1Column2.DataBinding.FieldName:='date';
    cxGrid1DBTableView1Column3.DataBinding.FieldName:='price';
    cxGrid1DBTableView1Column4.DataBinding.FieldName:='name';
    cxGrid1DBTableView1Column5.DataBinding.FieldName:='description';
end;

procedure TCostResive.FormShow(Sender: TObject);
begin
    DM.BTNState(cxButton2,cxButton3,cxButton4,cxButton5,cxButton6,main.Permission[71],main.Permission[71],main.Permission[72],main.Permission[73],'1');
    RefreshGrid();
    NewRec:=0;
    cxMaskEdit6.Text:=main.DateNow;
    case TypeCost of
        KC_In_Sale : begin cxButton3.Enabled:=True; cxButton3.SetFocus; end;
        else
        cxButton2.SetFocus;
    end;
end;

procedure TCostResive.cxButton2Click(Sender: TObject);
begin
    cxGroupBox1.Enabled:=True;
    NewRec := DM.GetFieldMax(TableName);
    cxTextEdit1.text := inttostr(NewRec);
    cxButton3.Default:=True;
    cxMaskEdit1.Text := main.DateNow;
    cxMaskEdit2.SetFocus;
end;

procedure TCostResive.cxButton3Click(Sender: TObject);
begin
    if NewRec <= 0 then
       Exit;

    if DM.GetAlarm(cxMaskEdit1,' «—ÌŒ œ—Ì«›  —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit1,'„»·€ œ— Ì«› Ì —«Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxComboBox3,'‰«„ Œ—Ìœ«— —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if InvoiceNum='' then
       InvoiceNum:='0';
        //'code,buyer,price,date,description,DateSave,TimeSave,UserSave,DocNO,invoice_number';
    Dm.insert(TableName,FieldName,cxTextEdit1.text + ',' +
                                  QuotedStr(cxComboBox1.text) + ',' +
                                  cxMaskEdit2.text + ',' +
                                  QuotedStr(cxMaskEdit1.text) + ',' +
                                  QuotedStr(cxMemo1.text) + ',' +
                                  QuotedStr(Main.DateNow) + ',' +
                                  QuotedStr(Main.TimeNow) + ',' +
                                  QuotedStr(Main.UserNow) + ',' +
                                  intTostr(Main.DocNumber) + ',' +
                                  InvoiceNum);

    DM.insert('Cach','userid,ActivityDate,AC_CR',QuotedStr(main.UserNow) + ',' +
                                                 QuotedStr(main.DateNow) + ',' +
                                                 cxTextEdit1.text);

    Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(Main.UserNow,Main.DateNow));

    DM.FillReportDay('œ—Ì«›  ‰ﬁœÌ','À»  œ—Ì«›  ‰ﬁœÌ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' «“ '+cxComboBox3.Text);
    DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('œ—Ì«›  ‰ﬁœÌ') + ',' +
                                QuotedStr('À»  œ—Ì«›  ‰ﬁœÌ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' «“ '+cxComboBox3.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));

    RefreshGrid();
    EmptyTextBox;
    cxButton2.SetFocus;
    cxButton3.Default:=False;
    cxGroupBox1.Enabled:=False;
    case TypeCost of
        KC_In_Sale : Close;
    end;
end;

procedure TCostResive.cxButton4Click(Sender: TObject);
begin
    if DM.GetAlarm(cxMaskEdit1,' «—ÌŒ œ—Ì«›  —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit1,'„»·€ œ— Ì«› Ì —«Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxComboBox3,'‰«„ Œ—Ìœ«— —« Ê«—œ ò‰Ìœ')=False then
       exit;

    if RecSelect > 0 then
    begin
        DM.Update(TableName,'Buyer='+ cxComboBox1.text + ',' +
                            'price='+ cxMaskEdit2.text + ',' +
                            'date='+ QuotedStr(cxMaskEdit1.Text) + ',' +
                            'description='+ QuotedStr(cxMemo1.Text) + ',' +
                            'DateSave=' + QuotedStr(Main.DateNow) + ',' +
                            'TimeSave=' + QuotedStr(Main.TimeNow) + ',' +
                            'UserSave=' + QuotedStr(Main.UserNow)
                           ,'code='+ inttostr(RecSelect));

        DM.FillReportDay('œ—Ì«›  ‰ﬁœÌ','«’·«Õ œ—Ì«›  ‰ﬁœÌ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' «“ '+cxComboBox3.Text);
        DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('œ—Ì«›  ‰ﬁœÌ') + ',' +
                                QuotedStr('«’·«Õ œ—Ì«›  ‰ﬁœÌ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' «“ '+cxComboBox3.Text) + ',' +
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

procedure TCostResive.cxButton5Click(Sender: TObject);
begin
    if RecSelect > 0 then
    begin
        DM.Delete(TableName,'code='+ inttostr(RecSelect));
        DM.Delete('Cach','AC_CR='+ inttostr(RecSelect),0);
        DM.FillReportDay('œ—Ì«›  ‰ﬁœÌ','Õ–› œ—Ì«›  ‰ﬁœÌ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' «“ '+cxComboBox3.Text);
        DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('œ—Ì«›  ‰ﬁœÌ') + ',' +
                                QuotedStr('Õ–› œ—Ì«›  ‰ﬁœÌ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' «“ '+cxComboBox3.Text) + ',' +
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

procedure TCostResive.cxGrid1DBTableView1CellClick(
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

procedure TCostResive.cxComboBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox1.ItemIndex := cxComboBox3.ItemIndex;
end;

procedure TCostResive.FormCreate(Sender: TObject);
begin
    DM.FillCombo(cxComboBox1,cxComboBox3,'code','name','Customer','','code,name');
end;

procedure TCostResive.cxMaskEdit1Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit1);
end;

procedure TCostResive.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TCostResive.cxButton7Click(Sender: TObject);
begin
    DefineCoding := TDefineCoding.Create(Self);
    DefineCoding.Kind := Define_Customer;
    DefineCoding.ShowModal;
    DefineCoding.Destroy;
    DM.FillCombo(cxComboBox1,cxComboBox3,'code','name','Customer','','code,name');
    cxComboBox3.SetFocus;
    cxComboBox3.ItemIndex:=cxComboBox3.Properties.Items.Count-1
end;

procedure TCostResive.cxButton12Click(Sender: TObject);
begin
    DM.FixYear13(cxMaskEdit6);
    DM.Select('CostResive cs,Customer s,Cach C','cs.code,cs.price,cs.date,cs.description,s.name','cs.buyer=s.code and c.AC_CR=cs.code and (c.linkto is null and c.deliverperson is null and c.deliverbank is null) and c.userid='+QuotedStr(main.UserNow)+' AND cs.[date] Like '+QuotedStr(cxMaskEdit6.Text+'%'));
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource:=DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName:='code';
    cxGrid1DBTableView1Column2.DataBinding.FieldName:='date';
    cxGrid1DBTableView1Column3.DataBinding.FieldName:='price';
    cxGrid1DBTableView1Column4.DataBinding.FieldName:='name';
    cxGrid1DBTableView1Column5.DataBinding.FieldName:='description';
end;

procedure TCostResive.cxMaskEdit6KeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then
       cxButton12.Click;
end;

procedure TCostResive.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Main.dxBarLargeButton4.Enabled:=True;
end;

end.
