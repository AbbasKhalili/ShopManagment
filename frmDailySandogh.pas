unit frmDailySandogh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, dxSkinsCore, dxSkinsDefaultPainters, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TDailySandogh = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

  public

  end;

var
  DailySandogh: TDailySandogh;

implementation

uses frmMain, frmDM;

{$R *.dfm}

procedure TDailySandogh.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
       VK_ESCAPE  : Close;
    end;
end;

procedure TDailySandogh.FormShow(Sender: TObject);
var
    I : integer;
begin
    DM.ADOStored.close;
    DM.ADOStored.Parameters.Clear;
    DM.ADOStored.ProcedureName:='dbo.SandoghQC';
    DM.ADOStored.Parameters.Refresh;
    DM.ADOStored.Parameters.ParamValues['@username']:= Main.UserNow;
    DM.ADOStored.Parameters.ParamValues['@D1']:= Main.DateNow;
    DM.ADOStored.Parameters.ParamValues['@D2']:= Main.DateNow;
    DM.ADOStored.Open;
    for i:=0 to DM.ADOStored.FieldCount-1 do
        DM.ADOStored.Fields[i].Alignment:=taCenter;
    DM.DataS.DataSet := DM.ADOStored;
    cxGrid1DBTableView1.DataController.DataSource:=DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName:='id';
    cxGrid1DBTableView1Column2.DataBinding.FieldName:='activitydate';
    cxGrid1DBTableView1Column3.DataBinding.FieldName:='price';
    cxGrid1DBTableView1Column4.DataBinding.FieldName:='Name';
    cxGrid1DBTableView1Column5.DataBinding.FieldName:='Kind';
    cxGrid1DBTableView1Column6.DataBinding.FieldName:='State';
    cxGrid1DBTableView1Column7.DataBinding.FieldName:='Description';
    cxGrid1.SetFocus;
end;

procedure TDailySandogh.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Main.dxBarLargeButton35.Enabled:=True;
end;

end.
