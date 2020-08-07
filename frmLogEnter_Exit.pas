unit frmLogEnter_Exit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, dxSkinsCore, dxSkinsDefaultPainters, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid,ADODB, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TLogEnter_Exit = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
  private
       ADO : TADODataSet;
       DS : TDataSource;
  public

  end;

var
  LogEnter_Exit: TLogEnter_Exit;

implementation

uses frmDM;

{$R *.dfm}

procedure TLogEnter_Exit.FormShow(Sender: TObject);
var i :integer;
begin
    ADO := TADODataSet.Create(self);
    ADO.Connection:=dm.Connection;
    DS := TDataSource.Create(self);

    ADO.Close;
    ADO.CommandText:='select * from DocNO';
    ADO.Open;
    if ADO.RecordCount > 0 then
    begin
        DS.DataSet:=ADO;
        for i:=0 to ADO.FieldCount -1 do
           ADO.Fields[i].Alignment:=taCenter;
        cxGrid1DBTableView1.DataController.DataSource:=DS;
        cxGrid1DBTableView1Column1.DataBinding.FieldName:='DocNO';
        cxGrid1DBTableView1Column2.DataBinding.FieldName:='useropen';
        cxGrid1DBTableView1Column3.DataBinding.FieldName:='userclose';
        cxGrid1DBTableView1Column4.DataBinding.FieldName:='Dateopen';
        cxGrid1DBTableView1Column5.DataBinding.FieldName:='Timeopen';
        cxGrid1DBTableView1Column6.DataBinding.FieldName:='DateClose';
        cxGrid1DBTableView1Column7.DataBinding.FieldName:='TimeClose';
    end;
end;

end.
