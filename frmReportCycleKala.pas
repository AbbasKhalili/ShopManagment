unit frmReportCycleKala;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ADODB, frxClass, dxSkinsCore, dxSkinsDefaultPainters, cxGraphics,
  Menus, cxLookAndFeelPainters, cxLabel, StdCtrls, cxButtons, cxMaskEdit,
  cxTextEdit, cxDropDownEdit, cxControls, cxContainer, cxEdit, cxImage,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TReportCycleKala = class(TForm)
    cxMaskEdit1: TcxMaskEdit;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxMaskEdit2: TcxMaskEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    DataSource1: TDataSource;
    cxLabel3: TcxLabel;
    cxMaskEdit3: TcxMaskEdit;
    cxButton4: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxMaskEdit1Exit(Sender: TObject);
    procedure cxMaskEdit2Exit(Sender: TObject);
    procedure cxMaskEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure cxMaskEdit3PropertiesChange(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
      ADOAll : TADODataSet;
  public

  end;

var
  ReportCycleKala: TReportCycleKala;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TReportCycleKala.cxButton1Click(Sender: TObject);
begin
    ADOAll.Close;
    ADOAll.Free;
    Close;
end;

procedure TReportCycleKala.FormShow(Sender: TObject);
begin
    ADOAll := TADODataSet.Create(Self);
    ADOAll.Connection:=DM.Connection;
    ADOAll.Close;
    ADOAll.CommandText:='SELECT code,codekala,name FROM kala ORDER BY codekala';
    ADOAll.Open;
    DataSource1.DataSet:=ADOAll;
    DM.AlignField(ADOAll);
    cxMaskEdit1.Text := main.DateNow;
    cxMaskEdit2.Text := main.DateNow;
end;

procedure TReportCycleKala.cxButton2Click(Sender: TObject);
var
    Mem : TfrxMemoView;
    Pic : TfrxPictureView;
    DD , Title : String;
begin
    DM.FixDate(cxMaskEdit1);
    DM.FixDate(cxMaskEdit2);

    DM.ADOspReport.Close;
    DM.ADOspReport.Parameters.Clear;
    Title := 'ê—œ‘ ò«·«';
    DM.ADOspReport.ProcedureName:='dbo.Report_CycleKala';
    DM.ADOspReport.Parameters.Refresh;
    DM.ADOspReport.Parameters.ParamByName('@Kalacode').Value := ADOAll.FieldValues['codekala'];
    DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
    DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit2.Text;
    DD := '«“  «—ÌŒ :  ' + cxMaskEdit1.Text + '   «  «—ÌŒ :  ' + cxMaskEdit2.Text;

    DM.frxReport1.LoadFromFile(Main.WPath + 'Report\CycleKala.fr3');
    DM.ADOspReport.Open;

    Mem := DM.frxReport1.FindObject('Memo23') AS TfrxMemoView;
    Mem.Text := main.TitleReport;

    Pic := DM.frxReport1.FindObject('Picture1') AS TfrxPictureView;
    Pic.Picture.LoadFromFile(main.WPath+'Logo.jpg');

    Mem := DM.frxReport1.FindObject('Memo22') AS TfrxMemoView;
    Mem.Text := Main.UserNow;
    Mem := DM.frxReport1.FindObject('Memo21') AS TfrxMemoView;
    Mem.Text := Main.DateNow;
    Mem := DM.frxReport1.FindObject('Memo20') AS TfrxMemoView;
    Mem.Text := Title;
    Mem := DM.frxReport1.FindObject('Memo24') AS TfrxMemoView;
    Mem.Text := DD;
    DM.frxReport1.ShowReport;
end;

procedure TReportCycleKala.cxMaskEdit1Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit1);
end;

procedure TReportCycleKala.cxMaskEdit2Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit2);
end;

procedure TReportCycleKala.cxMaskEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       cxButton4.Click;
end;

procedure TReportCycleKala.cxMaskEdit3PropertiesChange(Sender: TObject);
begin
    cxButton2.Default:=False;
end;

procedure TReportCycleKala.cxButton4Click(Sender: TObject);
Var
    TLO : TLocateOptions;
begin
    ADOAll.Locate('Code',cxMaskEdit3.Text,TLO);
end;

end.
