unit frmSandogh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, dxSkinsCore, dxSkinsDefaultPainters, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxDropDownEdit, cxLabel,
  cxTextEdit, cxMaskEdit, cxContainer, cxImage, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TSandogh = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxImage1: TcxImage;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel3: TcxLabel;
    cxComboBox3: TcxComboBox;
    cxLabel1: TcxLabel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxComboBox1: TcxComboBox;
    cxLabel2: TcxLabel;
    cxMaskEdit2: TcxMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxMaskEdit1Exit(Sender: TObject);
    procedure cxMaskEdit2Exit(Sender: TObject);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
       procedure RefreshGrid();
  public

  end;

var
  Sandogh: TSandogh;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TSandogh.RefreshGrid();
var
    I : integer;
begin
    DM.ADOStored.close;
    DM.ADOStored.Parameters.Clear;
    DM.ADOStored.ProcedureName:='dbo.SandoghQC';
    DM.ADOStored.Parameters.Refresh;
    DM.ADOStored.Parameters.ParamValues['@username']:= cxComboBox3.Text;
    DM.ADOStored.Parameters.ParamValues['@D1']:= cxMaskEdit1.Text;
    DM.ADOStored.Parameters.ParamValues['@D2']:= cxMaskEdit2.Text;
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
end;

procedure TSandogh.FormShow(Sender: TObject);
begin
    DM.FillCombo(cxComboBox1,cxComboBox3,'code','userid','Users','','code,userid');
    cxMaskEdit1.Text:=main.DateNow;
    cxMaskEdit2.Text:=main.DateNow;
    cxComboBox3.SetFocus;
end;

procedure TSandogh.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
       VK_ESCAPE  : Close;
    end;
end;

procedure TSandogh.cxMaskEdit1Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit1);
end;

procedure TSandogh.cxMaskEdit2Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit2);
end;

procedure TSandogh.cxComboBox3PropertiesEditValueChanged(Sender: TObject);
begin
    cxComboBox1.ItemIndex:=cxComboBox3.ItemIndex;
end;

procedure TSandogh.cxButton1Click(Sender: TObject);
begin
    Close;
end;

procedure TSandogh.cxButton2Click(Sender: TObject);
begin
    RefreshGrid;
end;

procedure TSandogh.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Main.dxBarLargeButton23.Enabled:=True;
end;

end.
