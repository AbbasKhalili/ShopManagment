unit frmReportProfit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, dxSkinsCore, dxSkinsDefaultPainters, cxGraphics,
  Menus, cxLookAndFeelPainters, cxLabel, cxMaskEdit, StdCtrls, cxButtons,
  cxRadioGroup, cxTextEdit, cxDropDownEdit, cxControls, cxContainer,
  cxEdit, cxImage, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  TReportProfit = class(TForm)
    cxImage3: TcxImage;
    cxComboBox3: TcxComboBox;
    cxComboBox1: TcxComboBox;
    cxRadioButton3: TcxRadioButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxImage1: TcxImage;
    cxComboBox2: TcxComboBox;
    cxComboBox4: TcxComboBox;
    cxRadioButton1: TcxRadioButton;
    cxImage4: TcxImage;
    cxComboBox5: TcxComboBox;
    cxComboBox6: TcxComboBox;
    cxRadioButton4: TcxRadioButton;
    cxMaskEdit1: TcxMaskEdit;
    cxMaskEdit4: TcxMaskEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox5PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxMaskEdit1Exit(Sender: TObject);
    procedure cxMaskEdit4Exit(Sender: TObject);
  private

  public

  end;

var
  ReportProfit: TReportProfit;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TReportProfit.FormShow(Sender: TObject);
begin
    DM.FillCombo(cxComboBox1,cxComboBox3,'SN1','name','StorageL1','','SN1,name');
    DM.FillCombo(cxComboBox4,cxComboBox2,'SN2','name','StorageL2','','SN2,name');
    DM.FillCombo(cxComboBox6,cxComboBox5,'SN3','name','StorageL3','','SN3,name');
    if cxRadioButton1.Checked=true then
       cxComboBox2.SetFocus;
    if cxRadioButton3.Checked=true then
       cxComboBox3.SetFocus;
    if cxRadioButton4.Checked=true then
       cxComboBox5.SetFocus;
    cxMaskEdit1.Text := main.DateNow;
    cxMaskEdit4.Text := main.DateNow;
end;

procedure TReportProfit.cxComboBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxRadioButton3.Checked := True;
    cxComboBox1.ItemIndex := cxComboBox3.ItemIndex;
end;

procedure TReportProfit.cxComboBox2PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxRadioButton1.Checked := True;
    cxComboBox4.ItemIndex := cxComboBox2.ItemIndex;
end;

procedure TReportProfit.cxComboBox5PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxRadioButton4.Checked := True;
    cxComboBox6.ItemIndex := cxComboBox5.ItemIndex;
end;

procedure TReportProfit.cxButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TReportProfit.cxButton2Click(Sender: TObject);
var
    Mem : TfrxMemoView;
    Pic : TfrxPictureView;
    DD , Title : String;
begin
    if (cxRadioButton3.Checked=True) AND (cxComboBox3.ItemIndex < 0) then
       Exit;
    if (cxRadioButton1.Checked=True) AND (cxComboBox2.ItemIndex < 0) then
       Exit;
    if (cxRadioButton4.Checked=True) AND (cxComboBox5.ItemIndex < 0) then
       Exit;

    DM.FixDate(cxMaskEdit1);
    DM.FixDate(cxMaskEdit4);

    DM.ADOspReport.Close;
    DM.ADOspReport.Parameters.Clear;

    Title := 'ÒÇÑÔ ÓæÏ æ ÒíÇä';
    if cxRadioButton4.Checked = True then
    begin
        DM.ADOspReport.ProcedureName:='dbo.Report_Profit_StorageLevel3';
        DM.ADOspReport.Parameters.Refresh;
        DM.ADOspReport.Parameters.ParamByName('@SN3').Value := cxComboBox6.Text;
        DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Profit_StorageLevel3.fr3');
        Mem := DM.frxReport1.FindObject('Memo3') AS TfrxMemoView;
        Mem.Text := cxComboBox5.Text;
    end;
    if cxRadioButton1.Checked = True then
    begin
        DM.ADOspReport.ProcedureName:='dbo.Report_Profit_StorageLevel2';
        DM.ADOspReport.Parameters.Refresh;
        DM.ADOspReport.Parameters.ParamByName('@SN2').Value := cxComboBox4.Text;
        DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Profit_StorageLevel2.fr3');
        Mem := DM.frxReport1.FindObject('Memo3') AS TfrxMemoView;
        Mem.Text := cxComboBox2.Text;
    end;
    if cxRadioButton3.Checked = True then
    begin
        DM.ADOspReport.ProcedureName:='dbo.Report_Profit_StorageLevel1';
        DM.ADOspReport.Parameters.Refresh;
        DM.ADOspReport.Parameters.ParamByName('@SN1').Value := cxComboBox1.Text;
        DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Profit_StorageLevel1.fr3');
        Mem := DM.frxReport1.FindObject('Memo3') AS TfrxMemoView;
        Mem.Text := cxComboBox3.Text;
    end;
    DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
    DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit4.Text;
    DD := 'ÇÒ ÊÇÑíÎ  :  ' + cxMaskEdit1.Text + '  ÊÇ ÊÇÑíÎ  :  '+ cxMaskEdit4.Text;
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

procedure TReportProfit.cxMaskEdit1Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit1);
end;

procedure TReportProfit.cxMaskEdit4Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit4);
end;

end.
