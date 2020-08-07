unit frmReportArchive_AG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, Menus,
  cxLookAndFeelPainters, cxLabel, cxTextEdit, cxMaskEdit, StdCtrls,
  cxButtons, cxControls, cxContainer, cxEdit, cxImage, cxGraphics,
  cxDropDownEdit,frxClass, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TReportArchive_AG = class(TForm)
    cxImage4: TcxImage;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxMaskEdit2: TcxMaskEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxComboBox2: TcxComboBox;
    cxComboBox4: TcxComboBox;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxMaskEdit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxComboBox2PropertiesEditValueChanged(Sender: TObject);
  private

  public

  end;

var
  ReportArchive_AG: TReportArchive_AG;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TReportArchive_AG.cxButton1Click(Sender: TObject);
begin
    Close;
end;

procedure TReportArchive_AG.cxButton2Click(Sender: TObject);
var
    Mem : TfrxMemoView;
    Pic : TfrxPictureView;
    DD , Title : String;
begin
    If DM.GetAlarm(cxComboBox2,'«‰»«— ”ÿÕ 2 —« «‰ Œ«» ò‰Ìœ')=false then
       Exit;
    If DM.GetAlarm(cxMaskEdit2,' «—ÌŒ «‰»«—ê—œ«‰Ì «‰Ã«„ ‘œÂ —« Ê«—œ ò‰Ìœ')=false then
       Exit;
    DM.FixDate(cxMaskEdit2);
    
    DM.ADOspReport.Close;
    DM.frxDBDataset1.Clear;
    DM.ADOspReport.Parameters.Clear;
    Title := '«‰»«— ê—œ«‰Ì';
    DM.ADOspReport.Active:=False;
    DM.ADOspReport.Parameters.Clear;
    DM.ADOspReport.ProcedureName:='dbo.Report_ArchiveAnbarGardany';
    DM.ADOspReport.Parameters.Refresh;
    DM.ADOspReport.Parameters.ParamByName('@SNO2').Value := cxComboBox4.Text;
    DM.ADOspReport.Parameters.ParamByName('@D').Value := cxMaskEdit2.Text;
    DD := 'ê“«—‘ «‰»«— ê—œ«‰Ì œ—  «—ÌŒ  ' + cxMaskEdit2.Text;
    DM.frxReport1.LoadFromFile(Main.WPath + 'Report\AnbarGardany.fr3');
    DM.ADOspReport.Open;

    Mem := DM.frxReport1.FindObject('Memo23') AS TfrxMemoView;
    Mem.Text := main.TitleReport;

    Pic := DM.frxReport1.FindObject('Picture1') AS TfrxPictureView;
    Pic.Picture.LoadFromFile(main.WPath+'Logo.jpg');
    Mem := DM.frxReport1.FindObject('Memo22') AS TfrxMemoView;
    Mem.Text := Main.UserNow;
    Mem := DM.frxReport1.FindObject('Memo21') AS TfrxMemoView;
    Mem.Text := Main.DateNow;
    Mem := DM.frxReport1.FindObject('Memo24') AS TfrxMemoView;
    Mem.Text := Title;
    Mem := DM.frxReport1.FindObject('Memo25') AS TfrxMemoView;
    Mem.Text := DD;
    DM.frxReport1.ShowReport;
end;

procedure TReportArchive_AG.cxMaskEdit2Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit2);
end;

procedure TReportArchive_AG.FormShow(Sender: TObject);
begin
    DM.FillCombo(cxComboBox4,cxComboBox2,'SN2','name','StorageL2','','SN2,name');
    cxMaskEdit2.Text:=Main.DateNow;
end;

procedure TReportArchive_AG.cxComboBox2PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox4.ItemIndex:=cxComboBox2.ItemIndex;
end;

end.
