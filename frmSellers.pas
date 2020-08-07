unit frmSellers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmTMP, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxControls, cxContainer, cxEdit, cxGroupBox,
  StdCtrls, cxButtons, cxMemo, cxMaskEdit, cxLabel, cxTextEdit,
  frmDM, dxSkinscxPCPainter, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter;

Const
     TableName = 'Sellers';
     FieldName = 'code,name,tel,address,description,DateSave,TimeSave,UserSave';
type
  TSellers = class(TTMP)
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    cxMaskEdit1: TcxMaskEdit;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxMemo1: TcxMemo;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
       RecSelect : Integer;
       procedure RefreshGrid();
       procedure EmptyTextBox();
  public

  end;

var
  Sellers: TSellers;

implementation

uses frmMain;

{$R *.dfm}

procedure TSellers.EmptyTextBox();
begin
    cxMaskEdit1.Text:='';
    cxTextEdit1.text:='';
    cxTextEdit2.text:='';
    cxTextEdit3.text:='';
    cxMemo1.Text:='';
    RecSelect:=0;
end;

procedure TSellers.RefreshGrid();
begin
    DM.Select(TableName,'code,name,tel,address','');
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource:=DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName:='code';
    cxGrid1DBTableView1Column2.DataBinding.FieldName:='name';
    cxGrid1DBTableView1Column3.DataBinding.FieldName:='tel';
    cxGrid1DBTableView1Column4.DataBinding.FieldName:='address';
end;

procedure TSellers.FormShow(Sender: TObject);
begin
    RefreshGrid();
end;

procedure TSellers.cxButton2Click(Sender: TObject);
begin
    cxMaskEdit1.text := inttostr(DM.getmax(TableName,'Code',''));
    cxTextEdit1.SetFocus;
end;

procedure TSellers.cxButton3Click(Sender: TObject);
begin
    if DM.GetAlarm(cxTextEdit1,'äÇã ÝÑæÔäÏå ÑÇ æÇÑÏ ˜äíÏ')=False then
       exit;
    Dm.insert(TableName,FieldName,cxMaskEdit1.text + ',' +
                                  QuotedStr(cxTextEdit1.text) + ',' +
                                  QuotedStr(cxTextEdit2.text) + ',' +
                                  QuotedStr(cxTextEdit3.text) + ',' +
                                  QuotedStr(cxMemo1.text) + ',' +
                                  QuotedStr(Main.DateNow) + ',' +
                                  QuotedStr(Main.TimeNow) + ',' +
                                  QuotedStr(Main.UserNow));
    RefreshGrid();
    EmptyTextBox;
end;

procedure TSellers.cxButton4Click(Sender: TObject);
begin
    if DM.GetAlarm(cxTextEdit1,'äÇã ÝÑæÔäÏå ÑÇ æÇÑÏ ˜äíÏ')=False then
       exit;
    if RecSelect > 0 then
    begin
        DM.Update(TableName,'name='+ QuotedStr(cxTextEdit1.text) + ',' +
                            'tel='+ QuotedStr(cxTextEdit2.text) + ',' +
                            'address='+ QuotedStr(cxTextEdit3.Text) + ',' +
                            'Description='+ QuotedStr(cxMemo1.Text) + ',' +
                            'DateSave=' + QuotedStr(Main.DateNow) + ',' +
                            'TimeSave=' + QuotedStr(Main.TimeNow) + ',' +
                            'UserSave=' + QuotedStr(Main.UserNow)
                           ,'code='+ inttostr(RecSelect));
        RefreshGrid;
        EmptyTextBox;
    end;
end;

procedure TSellers.cxButton5Click(Sender: TObject);
begin
    if RecSelect > 0 then
    begin
        DM.Delete(TableName,'code='+ inttostr(RecSelect));
        RefreshGrid;
        EmptyTextBox;
    end;
end;

procedure TSellers.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    RecSelect := DM.DataS.DataSet.FieldValues['code'];
    cxMaskEdit1.Text := inttostr(RecSelect);
    cxTextEdit1.Text := DM.DataS.DataSet.FieldValues['name'];
    cxTextEdit2.Text := DM.DataS.DataSet.FieldValues['tel'];
    cxTextEdit3.Text := DM.DataS.DataSet.FieldValues['address'];
    cxMemo1.Text := DM.DataS.DataSet.FieldValues['Description'];
end;

end.
