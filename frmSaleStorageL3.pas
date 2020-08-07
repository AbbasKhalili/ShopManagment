unit frmSaleStorageL3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,frxClass, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  cxLookAndFeelPainters, cxGraphics, cxDropDownEdit, cxLabel, cxTextEdit,
  cxMaskEdit, StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxImage,
  cxRadioGroup;

type
  TSaleStorageL3 = class(TForm)
    cxImage2: TcxImage;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxMaskEdit3: TcxMaskEdit;
    cxMaskEdit2: TcxMaskEdit;
    cxLabel3: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxComboBox6: TcxComboBox;
    cxComboBox5: TcxComboBox;
    cxLabel4: TcxLabel;
    optSale: TcxRadioButton;
    optBuy: TcxRadioButton;
    procedure FormShow(Sender: TObject);
    procedure cxComboBox5PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxMaskEdit2Exit(Sender: TObject);
    procedure cxMaskEdit3Exit(Sender: TObject);
  private

  public

  end;

var
  SaleStorageL3: TSaleStorageL3;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TSaleStorageL3.FormShow(Sender: TObject);
begin
    DM.FillCombo(cxComboBox6,cxComboBox5,'SN3','name','StorageL3','','SN3,name');
    cxMaskEdit2.Text := main.DateNow;
    cxMaskEdit3.Text := main.DateNow;
    cxComboBox5.SetFocus;
end;

procedure TSaleStorageL3.cxComboBox5PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox6.ItemIndex:=cxComboBox5.ItemIndex;
end;

procedure TSaleStorageL3.cxButton2Click(Sender: TObject);
var
    Mem : TfrxMemoView;
    Pic : TfrxPictureView;
    DD , Title : String;
begin
    DM.FixDate(cxMaskEdit2);
    DM.FixDate(cxMaskEdit3);
    DM.ADOspReport.Close;
    DM.ADOspReport.Parameters.Clear;

    Title := '„Ì“«‰ ›—Ê‘ »Â ’Ê—  —Ì“ «“ «‰»«— '+cxComboBox5.Text;
    DM.ADOspReport.ProcedureName:='dbo.Report_Sale_Detial_StorageL3';
    DM.ADOspReport.Parameters.Refresh;
    DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox6.text;
    DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit2.text;
    DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit3.text;
    if optSale.Checked then
       DM.ADOspReport.Parameters.ParamByName('@Type').Value := 1;
    DM.frxReport1.LoadFromFile(Main.WPath + 'Report\SaleDetialStorageL3.fr3');   
    if optBuy.Checked then
    Begin
       DM.ADOspReport.Parameters.ParamByName('@Type').Value := 2;
       Mem := DM.frxReport1.FindObject('Memo15') AS TfrxMemoView;
       Mem.Text := 'ﬁÌ„  Œ—Ìœ';
    end;
    DD := ' «“  «—ÌŒ   ' + cxMaskEdit2.text + '    «  «—ÌŒ    ' + cxMaskEdit3.text;

    DM.ADOspReport.Open;

    Mem := DM.frxReport1.FindObject('Memo22') AS TfrxMemoView;
    Mem.Text := main.TitleReport;

    Pic := DM.frxReport1.FindObject('Picture1') AS TfrxPictureView;
    Pic.Picture.LoadFromFile(main.WPath+'Logo.jpg');

    Mem := DM.frxReport1.FindObject('Memo21') AS TfrxMemoView;
    Mem.Text := Main.UserNow;
    Mem := DM.frxReport1.FindObject('Memo20') AS TfrxMemoView;
    Mem.Text := Main.DateNow;
    Mem := DM.frxReport1.FindObject('Memo23') AS TfrxMemoView;
    Mem.Text := Title;
    Mem := DM.frxReport1.FindObject('Memo24') AS TfrxMemoView;
    Mem.Text := DD;
    DM.frxReport1.ShowReport;
end;

procedure TSaleStorageL3.cxMaskEdit2Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit2);
end;

procedure TSaleStorageL3.cxMaskEdit3Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit3);
end;

end.
