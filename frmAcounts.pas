unit frmAcounts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmTMP ,frmDM, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMaskEdit, cxLabel, cxTextEdit,
  cxDropDownEdit, cxContainer, cxGroupBox, StdCtrls, cxButtons,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;
Const
     TableName = 'Acounts';
     FieldName = 'code,name,number,bankno,DateSave,TimeSave,UserSave';

type
  TAcounts = class(TTMP)
    cxComboBox1: TcxComboBox;
    cxTextEdit2: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxComboBox2: TcxComboBox;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxMaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
       RecSelect : Integer;
       procedure RefreshGrid();
       procedure EmptyTextBox();
  public

  end;

var
  Acounts: TAcounts;

implementation

uses frmMain;

{$R *.dfm}

procedure TAcounts.EmptyTextBox();
begin
    cxMaskEdit1.Text:='';
    cxTextEdit1.text:='';
    cxTextEdit2.text:='';
    cxComboBox1.itemindex:=-1;
    cxComboBox2.itemindex:=-1;
    RecSelect:=0;
end;

procedure TAcounts.RefreshGrid();
begin
    DM.Select('acounts a,banks b','a.code,a.name,a.number,a.bankno,b.name bankname','a.bankno=b.code');
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource:=DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName:='code';
    cxGrid1DBTableView1Column2.DataBinding.FieldName:='name';
    cxGrid1DBTableView1Column3.DataBinding.FieldName:='number';
    cxGrid1DBTableView1Column4.DataBinding.FieldName:='bankname';
end;

procedure TAcounts.FormShow(Sender: TObject);
begin
    DM.BTNState(cxButton2,cxButton3,cxButton4,cxButton5,cxButton6,main.Permission[19],main.Permission[19],main.Permission[20],main.Permission[21],'1');
    RefreshGrid();
    DM.FillCombo(cxComboBox2,cxComboBox1,'code','name','Banks','','Code,name');
end;

procedure TAcounts.cxButton2Click(Sender: TObject);
begin
    EmptyTextBox;
    cxMaskEdit1.text := inttostr(DM.GetFieldMax(TableName));
    cxTextEdit1.SetFocus;
end;

procedure TAcounts.cxButton3Click(Sender: TObject);
begin
    if DM.GetAlarm(cxTextEdit2,'ÔãÇÑå ÍÓÇÈ ÑÇ æÇÑÏ ˜äíÏ')=False then
       exit;
    if DM.GetAlarm(cxComboBox1,'äÇã ÈÇä˜ ÑÇ ÇäÊÎÇÈ ˜äíÏ')=False then
       exit;
    Dm.insert(TableName,FieldName,cxMaskEdit1.text + ',' +
                                  QuotedStr(cxTextEdit1.text) + ',' +
                                  QuotedStr(cxTextEdit2.text) + ',' +
                                  cxComboBox2.text + ',' +
                                  QuotedStr(Main.DateNow) + ',' +
                                  QuotedStr(Main.TimeNow) + ',' +
                                  QuotedStr(Main.UserNow));
    RefreshGrid();
    EmptyTextBox;
end;

procedure TAcounts.cxButton4Click(Sender: TObject);
begin
    if DM.GetAlarm(cxTextEdit2,'ÔãÇÑå ÍÓÇÈ ÑÇ æÇÑÏ ˜äíÏ')=False then
       exit;
    if RecSelect > 0 then
    begin
        DM.Update(TableName,'name=' + QuotedStr(cxTextEdit1.text) + ',' +
                            'number=' + QuotedStr(cxTextEdit2.text) + ',' +
                            'bankno=' + cxComboBox2.Text + ',' +
                            'DateSave=' + QuotedStr(Main.DateNow) + ',' +
                            'TimeSave=' + QuotedStr(Main.TimeNow) + ',' +
                            'UserSave=' + QuotedStr(Main.UserNow)
                           ,'code='+ inttostr(RecSelect));
        RefreshGrid;
        EmptyTextBox;
    end;
end;

procedure TAcounts.cxButton5Click(Sender: TObject);
begin
    if RecSelect > 0 then
    begin
        DM.Delete(TableName,'code='+ inttostr(RecSelect));
        RefreshGrid;
        EmptyTextBox;
    end;
end;

procedure TAcounts.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    EmptyTextBox;
    RecSelect := DM.DataS.DataSet.FieldValues['code'];
    cxMaskEdit1.Text := inttostr(RecSelect);
    cxTextEdit1.Text := DM.DataS.DataSet.FieldValues['name'];
    cxTextEdit2.Text := DM.DataS.DataSet.FieldValues['number'];
    cxComboBox2.Text := DM.DataS.DataSet.FieldValues['bankno'];
end;

procedure TAcounts.cxComboBox2PropertiesEditValueChanged(Sender: TObject);
begin
    cxComboBox1.ItemIndex := cxComboBox2.ItemIndex;
end;

procedure TAcounts.cxComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
    cxComboBox2.ItemIndex := cxComboBox1.ItemIndex;
end;

procedure TAcounts.cxMaskEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TAcounts.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Main.CmdAccounts.Enabled:=True;
end;

end.
