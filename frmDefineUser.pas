unit frmDefineUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DB ,ADODB, frmTMP, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit,
  cxTextEdit, cxLabel, cxContainer, cxGroupBox, StdCtrls, cxButtons,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

Const
     TableName = 'users';
     FieldName = 'code,userid,pass,kind,state';
type
  TDefineUser = class(TTMP)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxComboBox1: TcxComboBox;
    cxLabel4: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLabel5: TcxLabel;
    cxComboBox2: TcxComboBox;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxTextEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
       ADO : TADODataSet;
       RecSelect : Integer;
       procedure RefreshGrid();
       procedure EmptyTextBox();
  public

  end;

var
  DefineUser: TDefineUser;

implementation

uses frmDM;

{$R *.dfm}

procedure TDefineUser.EmptyTextBox();
begin
    cxTextEdit1.Text:='';
    cxTextEdit2.text:='';
    cxTextEdit3.text:='';
    cxComboBox1.ItemIndex:=-1;
    cxComboBox2.ItemIndex:=-1;
    RecSelect:=0;
end;

procedure TDefineUser.RefreshGrid();
begin
    DM.Select(TableName,FieldName,'');
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource:=DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName:='code';
    cxGrid1DBTableView1Column2.DataBinding.FieldName:='userid';
    cxGrid1DBTableView1Column3.DataBinding.FieldName:='kind';
    cxGrid1DBTableView1Column4.DataBinding.FieldName:='state';
    cxGrid1DBTableView1Column5.DataBinding.FieldName:='pass';
end;

procedure TDefineUser.cxButton2Click(Sender: TObject);
begin
    EmptyTextBox();
    cxTextEdit3.SetFocus;
end;

procedure TDefineUser.cxButton3Click(Sender: TObject);
var
    i , c :integer;
    S : string;
begin
    if cxTextEdit3.Text='admin' then
       cxTextEdit3.Text:='';
    if DM.GetAlarm(cxTextEdit3,'‰«„ ò«—»—Ì —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxTextEdit1,'ò·„Â ⁄»Ê— —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxComboBox1,'‰Ê⁄ ò«—»— —« „‘Œ’ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxComboBox2,'Ê÷⁄Ì  ò«—»— —«  ⁄ÌÌ‰ ò‰Ìœ')=False then
       exit;

    ADO.Close;
    ADO.CommandText:='select userid from users where userid='+QuotedStr(cxTextEdit3.Text);
    ADO.open;
    if ADO.RecordCount>0 then
    begin
        MessageDlg('‰«„ ò«—»—Ì Ê«—œ ‘œÂ  ò—«—Ì „Ì »«‘œ',mtWarning, [mbok], 0);
        cxTextEdit3.SetFocus;
        exit;
    end;
    ADO.Close;

    if LowerCase(cxTextEdit1.Text) <> LowerCase(cxTextEdit2.Text) then
    begin
        MessageDlg(' ò—«— ò·„Â ⁄»Ê— Ê ò·„Â ⁄»Ê— »«Ìœ »« Â„  ÿ«»ﬁ œ«‘ Â »«‘‰œ',mtInformation, [mbok], 0);
        cxTextEdit2.SetFocus;
        exit;
    end;

    s := cxTextEdit1.text;
    cxTextEdit1.Text:='';
    for i := 1  to Length(s) do
    begin
        c:=Ord(s[i]) + 23;
        cxTextEdit1.Text := cxTextEdit1.Text + Chr(c);
    end;
                            // 'code,userid,pass,kind,state';
    Dm.insert(TableName,FieldName,inttostr(DM.getmax(TableName,'Code',''))  + ',' +
                                  QuotedStr(cxTextEdit3.text) + ',' +
                                  QuotedStr(cxTextEdit1.text) + ',' +
                                  QuotedStr(cxComboBox1.text) + ',' +
                                  inttostr(cxComboBox2.ItemIndex));
    RefreshGrid();
    EmptyTextBox;
end;

procedure TDefineUser.cxButton4Click(Sender: TObject);
var
    i , c :integer;
    S : string;
begin
    if DM.GetAlarm(cxTextEdit3,'‰«„ ò«—»—Ì —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxTextEdit1,'ò·„Â ⁄»Ê— —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxComboBox1,'‰Ê⁄ ò«—»— —« „‘Œ’ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxComboBox2,'Ê÷⁄Ì  ò«—»— —«  ⁄ÌÌ‰ ò‰Ìœ')=False then
       exit;

    if LowerCase(cxTextEdit2.Text) <> LowerCase(cxTextEdit2.Text) then
    begin
        MessageDlg(' ò—«— ò·„Â ⁄»Ê— Ê ò·„Â ⁄»Ê— »«Ìœ »« Â„  ÿ«»ﬁ œ«‘ Â »«‘‰œ',mtInformation, [mbok], 0);
        cxTextEdit2.SetFocus;
        exit;
    end;

    if RecSelect > 0 then
    begin

        s := cxTextEdit1.text;
        cxTextEdit1.Text:='';
        for i := 1  to Length(s) do
        begin
            c:=Ord(s[i]) + 23;
            cxTextEdit1.Text := cxTextEdit1.Text + Chr(c);
        end;
                         // 'code,userid,pass,kind,state';
        DM.Update(TableName,'userid='+ QuotedStr(cxTextEdit3.text) + ',' +
                            'pass='+ QuotedStr(cxTextEdit1.text) + ',' +
                            'kind='+ QuotedStr(cxComboBox1.Text) + ',' +
                            'state='+ inttostr(cxComboBox1.ItemIndex)
                           ,'code='+ inttostr(RecSelect));
        RefreshGrid;
        EmptyTextBox;
    end;
end;

procedure TDefineUser.cxButton5Click(Sender: TObject);
begin
    if RecSelect > 0 then
    begin
        DM.Delete(TableName,'code='+ inttostr(RecSelect));
        RefreshGrid;
        EmptyTextBox;
    end;
end;

procedure TDefineUser.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
    i , c :integer;
    S : string;
begin
    s := DM.DataS.DataSet.FieldValues['pass'];
    cxTextEdit1.Text:='';
    for i := 1  to Length(s) do
    begin
        c:=Ord(s[i]) - 23;
        cxTextEdit1.Text := cxTextEdit1.Text + Chr(c);
    end;
    RecSelect := DM.DataS.DataSet.FieldValues['code'];
    cxTextEdit3.Text := DM.DataS.DataSet.FieldValues['userid'];
    cxTextEdit1.Text := S;
    cxComboBox1.Text := DM.DataS.DataSet.FieldValues['kind'];
    cxComboBox2.ItemIndex := DM.DataS.DataSet.FieldValues['state'];
end;

procedure TDefineUser.FormShow(Sender: TObject);
begin
    ADO := TADODataSet.Create(self);
    ADO.Connection := DM.Connection;
    RefreshGrid();
end;

procedure TDefineUser.cxTextEdit3KeyDown(Sender: TObject; var Key: Word;
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

end.
