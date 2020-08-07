unit frmBanks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmTMP,ADODB, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMaskEdit, cxLabel, cxTextEdit,
  cxContainer, cxGroupBox, StdCtrls, cxButtons, dxSkinscxPCPainter;

Const
     TableName = 'Banks';
     FieldName = 'code,name,sub,address,DateSave,TimeSave,UserSave';

type
  TBanks = class(TTMP)
    cxTextEdit2: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton5Click(Sender: TObject);
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
  Banks: TBanks;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TBanks.EmptyTextBox();
begin
    cxMaskEdit1.Text:='';
    cxTextEdit1.text:='';
    cxTextEdit2.text:='';
    cxTextEdit3.text:='';
    RecSelect:=0;
end;

procedure TBanks.RefreshGrid();
begin
    DM.Select(TableName,'code,name,sub,address','');
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource:=DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName:='code';
    cxGrid1DBTableView1Column2.DataBinding.FieldName:='name';
    cxGrid1DBTableView1Column3.DataBinding.FieldName:='sub';
    cxGrid1DBTableView1Column4.DataBinding.FieldName:='address';
end;

procedure TBanks.cxButton2Click(Sender: TObject);
begin
    cxMaskEdit1.text := inttostr(DM.GetFieldMax(Tablename));
    cxTextEdit1.SetFocus;
end;

procedure TBanks.cxButton3Click(Sender: TObject);
begin
    if DM.GetAlarm(cxTextEdit1,'‰«„ »«‰ò —« »«Ìœ Ê«—œ ò‰Ìœ')=False then
       exit;
    Dm.insert(TableName,FieldName,cxMaskEdit1.text + ',' +
                                  QuotedStr(cxTextEdit1.text) + ',' +
                                  QuotedStr(cxTextEdit2.text) + ',' +
                                  QuotedStr(cxTextEdit3.text) + ',' +
                                  QuotedStr(Main.DateNow) + ',' +
                                  QuotedStr(Main.TimeNow) + ',' +
                                  QuotedStr(Main.UserNow));
    RefreshGrid;
    EmptyTextBox;
end;

procedure TBanks.FormShow(Sender: TObject);
begin
    DM.BTNState(cxButton2,cxButton3,cxButton4,cxButton5,cxButton6,main.Permission[14],main.Permission[14],main.Permission[15],main.Permission[16],'1');
    RefreshGrid();
end;

procedure TBanks.cxButton4Click(Sender: TObject);
begin
    if DM.GetAlarm(cxTextEdit1,'‰«„ »«‰ò —« »«Ìœ Ê«—œ ò‰Ìœ')=False then
       exit;
    if RecSelect > 0 then
    begin
        DM.Update(TableName,'name=' + QuotedStr(cxTextEdit1.text) + ',' +
                            'sub=' + QuotedStr(cxTextEdit2.text) + ',' +
                            'address=' + QuotedStr(cxTextEdit3.text) + ',' +
                            'DateSave=' + QuotedStr(Main.DateNow) + ',' +
                            'TimeSave=' + QuotedStr(Main.TimeNow) + ',' +
                            'UserSave=' + QuotedStr(Main.UserNow)
                           ,'code='+ inttostr(RecSelect));
        RefreshGrid;
        EmptyTextBox;
    end;
end;

procedure TBanks.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    EmptyTextBox;
    RecSelect := DM.DataS.DataSet.FieldValues['code'];
    cxMaskEdit1.Text := inttostr(RecSelect);
    cxTextEdit1.Text := DM.DataS.DataSet.FieldValues['name'];
    if (DM.DataS.DataSet.FieldValues['sub']<>'') and (DM.DataS.DataSet.FieldValues['sub']<>null) then
       cxTextEdit2.Text := DM.DataS.DataSet.FieldValues['sub'];
    if (DM.DataS.DataSet.FieldValues['address']<>'') and (DM.DataS.DataSet.FieldValues['address']<>null) then
       cxTextEdit3.Text := DM.DataS.DataSet.FieldValues['address'];
end;

procedure TBanks.cxButton5Click(Sender: TObject);
begin
    if RecSelect > 0 then
    begin
        DM.ADOReport.Close;
        DM.ADOReport.CommandText:='Select Count(*) From QuchResive where Bank='+cxMaskEdit1.Text;
        DM.ADOReport.Open;
        IF DM.ADOReport.RecordCount > 0 then
        begin
            MessageDlg('«Ì‰ »«‰ò »Â ⁄·  «” ›«œÂ ‘œ‰ œ— çò Â« ﬁ«»· Õ–› ‰„Ì »«‘œ',mtWarning,[mbOK],0);
            Exit;
            DM.ADOReport.Close;
        end;
        DM.ADOReport.Close;
        DM.ADOReport.CommandText:='Select Count(*) From QuchSend where Bank='+cxMaskEdit1.Text;
        DM.ADOReport.Open;
        IF DM.ADOReport.RecordCount > 0 then
        begin
            MessageDlg('«Ì‰ »«‰ò »Â ⁄·  «” ›«œÂ ‘œ‰ œ— çò Â« ﬁ«»· Õ–› ‰„Ì »«‘œ',mtWarning,[mbOK],0);
            Exit;
            DM.ADOReport.Close;
        end;
        DM.ADOReport.Close;

        DM.Delete(TableName,'code='+ inttostr(RecSelect));
        RefreshGrid;
        EmptyTextBox;
    end;
end;

procedure TBanks.cxMaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
       VK_F9        : cxButton2.Click;
       VK_F10       : cxButton3.Click;
       VK_F11       : cxButton4.Click;
       VK_F12       : cxButton5.Click;
       VK_ESCAPE    : Close;
    end;
end;

procedure TBanks.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Main.CmdBanks.Enabled:=True;
end;

end.
