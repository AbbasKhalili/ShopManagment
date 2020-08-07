unit frmLogDailyReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxDropDownEdit, cxLabel, cxTextEdit, cxMaskEdit, cxContainer, cxImage,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TLogDailyReport = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxImage1: TcxImage;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel3: TcxLabel;
    cxComboBox3: TcxComboBox;
    cxLabel1: TcxLabel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxComboBox1: TcxComboBox;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
  private
       ADO : TADODataSet;
       DS : TDataSource;
  public

  end;

var
  LogDailyReport: TLogDailyReport;

implementation

uses frmDM;

{$R *.dfm}

procedure TLogDailyReport.FormShow(Sender: TObject);
begin
    ADO := TADODataSet.Create(self);
    ADO.Connection:=DM.Connection;
    DS := TDataSource.Create(self);
    
    DM.FillCombo(cxComboBox1,cxComboBox3,'code','userid','Users','','code,userid');
    cxComboBox3.SetFocus;
end;

procedure TLogDailyReport.cxButton2Click(Sender: TObject);
var
    User , D : String;
begin
    ADO.Close;
    DM.FixDate(cxMaskEdit1);

    user := cxComboBox3.Text;
    D := cxMaskEdit1.Text;

    if (Trim(user)<>'') and (Trim(D)<>'') then
       ADO.CommandText:='select * from DailyReport where userSave='+QuotedStr(user)+' AND DateSave='+QuotedStr(D)
    else if (Trim(user)<>'') and (Trim(D)='') then
       ADO.CommandText:='select * from DailyReport where userSave='+QuotedStr(user)
    else if (Trim(user)='') and (Trim(D)<>'') then
       ADO.CommandText:='select * from DailyReport where DateSave='+QuotedStr(D)
    else if (Trim(user)='') and (Trim(D)='') then
       ADO.CommandText:='select * from DailyReport';
    ADO.Open;
    if ADO.RecordCount > 0 then
    begin
        DS.DataSet:=ADO;
        ADO.Fields[0].Alignment:=taCenter;
        ADO.Fields[1].Alignment:=taCenter;
        ADO.Fields[2].Alignment:=taRightJustify;
        ADO.Fields[3].Alignment:=taCenter;
        ADO.Fields[4].Alignment:=taCenter;
        ADO.Fields[5].Alignment:=taCenter;
        ADO.Fields[6].Alignment:=taCenter;

        cxGrid1DBTableView1.DataController.DataSource:=DS;
        cxGrid1DBTableView1Column1.DataBinding.FieldName:='ID';
        cxGrid1DBTableView1Column2.DataBinding.FieldName:='Kind';
        cxGrid1DBTableView1Column3.DataBinding.FieldName:='Description';
        cxGrid1DBTableView1Column4.DataBinding.FieldName:='UserSave';
        cxGrid1DBTableView1Column5.DataBinding.FieldName:='DateSave';
        cxGrid1DBTableView1Column6.DataBinding.FieldName:='TimeSave';
        cxGrid1DBTableView1Column7.DataBinding.FieldName:='DocNO';
    end;
end;

procedure TLogDailyReport.cxButton1Click(Sender: TObject);
begin
    Close;
end;

procedure TLogDailyReport.cxComboBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox1.ItemIndex:=cxComboBox3.ItemIndex;
end;

procedure TLogDailyReport.cxComboBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox3.ItemIndex:=cxComboBox1.ItemIndex;
end;

end.
