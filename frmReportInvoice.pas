unit frmReportInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,frxClass, dxSkinsCore, dxSkinsDefaultPainters, cxGraphics, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxRadioGroup, cxDropDownEdit,
  cxTextEdit, cxMaskEdit, cxLabel, cxControls, cxContainer, cxEdit, cxImage,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue;

type

  Report_Type = (rpt_InBuy , rpt_Sale , rpt_Sale2 , rpt_BackFromSale , rpt_BackFromStorage , rpt_Buy);

  TReportInvoice = class(TForm)
    cxLabel3: TcxLabel;
    cxMaskEdit2: TcxMaskEdit;
    cxMaskEdit3: TcxMaskEdit;
    cxComboBox3: TcxComboBox;
    cxComboBox1: TcxComboBox;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton3: TcxRadioButton;
    cxImage2: TcxImage;
    cxImage3: TcxImage;
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
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxMaskEdit2Exit(Sender: TObject);
    procedure cxMaskEdit3Exit(Sender: TObject);
    procedure cxComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox5PropertiesEditValueChanged(Sender: TObject);
    procedure cxMaskEdit1Exit(Sender: TObject);
    procedure cxMaskEdit4Exit(Sender: TObject);
    procedure cxMaskEdit2PropertiesChange(Sender: TObject);
    procedure cxMaskEdit3PropertiesChange(Sender: TObject);
    procedure cxRadioButton2Click(Sender: TObject);
  private

  public
       ReportKind : Report_Type;
  end;

var
  ReportInvoice: TReportInvoice;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TReportInvoice.cxButton1Click(Sender: TObject);
begin
    Close;
end;

procedure TReportInvoice.cxButton2Click(Sender: TObject);
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

    DM.FixDate(cxMaskEdit2);
    DM.FixDate(cxMaskEdit3);
    DM.FixDate(cxMaskEdit1);
    DM.FixDate(cxMaskEdit4);
    
    DM.ADOspReport.Close;
    DM.ADOspReport.Parameters.Clear;

    Case ReportKind of
       rpt_InBuy : Begin
                      Title := 'ÝÇ˜ÊæÑåÇí ÎÑíÏ';
                      if cxRadioButton2.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_InvoiceBuy_DateToDate';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit2.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit3.Text;
                          DD := 'ÇÒ ÊÇÑíÎ  ' + cxMaskEdit2.Text + 'ÊÇ ÊÇÑíÎ  ' + cxMaskEdit3.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\ReportInvoiceBuy.fr3');
                      end;
                      if cxRadioButton4.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_Buy_StorageLevel3';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox6.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit4.Text;
                          DD := 'ÓØÍ 3 ÇäÈÇÑ : ' + cxComboBox5.Text +'   ÇÒ ÊÇÑíÎ  ' + cxMaskEdit1.Text +'  ÊÇ ÊÇÑíÎ  ' +cxMaskEdit4.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Buy_StorageLevel3.fr3');
                      end;
                      if cxRadioButton1.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_Buy_StorageLevel2';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox4.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit4.Text;
                          DD := 'ÓØÍ 2 ÇäÈÇÑ : ' + cxComboBox2.Text +'   ÇÒ ÊÇÑíÎ  ' + cxMaskEdit1.Text +'  ÊÇ ÊÇÑíÎ  ' +cxMaskEdit4.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Buy_StorageLevel2.fr3');
                      end;
                      if cxRadioButton3.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_Buy_StorageLevel1';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit4.Text;
                          DD := 'ÓØÍ 1 ÇäÈÇÑ : ' + cxComboBox3.Text +'   ÇÒ ÊÇÑíÎ  ' + cxMaskEdit1.Text +'  ÊÇ ÊÇÑíÎ  ' +cxMaskEdit4.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Buy_StorageLevel1.fr3');
                      end;
                   End;
       rpt_Sale  : Begin
                      Title := 'ãíÒÇä ÝÑæÔ';
                      if cxRadioButton4.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_Sale2_StorageLevel3';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox6.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit4.Text;
                          DD := 'ÓØÍ 3 ÇäÈÇÑ : ' + cxComboBox5.Text +'   ÇÒ ÊÇÑíÎ  ' + cxMaskEdit1.Text +'  ÊÇ ÊÇÑíÎ  ' +cxMaskEdit4.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\InvoiceSale_StorageLevel3.fr3');
                      end;
                      if cxRadioButton1.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_Sale2_StorageLevel2';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox4.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit4.Text;
                          DD := 'ÓØÍ 2 ÇäÈÇÑ : ' + cxComboBox2.Text +'   ÇÒ ÊÇÑíÎ  ' + cxMaskEdit1.Text +'  ÊÇ ÊÇÑíÎ  ' +cxMaskEdit4.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\InvoiceSale_StorageLevel2.fr3');
                      end;
                      if cxRadioButton3.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_Sale2_StorageLevel1';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit4.Text;
                          DD := 'ÓØÍ 1 ÇäÈÇÑ : ' + cxComboBox3.Text +'   ÇÒ ÊÇÑíÎ  ' + cxMaskEdit1.Text +'  ÊÇ ÊÇÑíÎ  ' +cxMaskEdit4.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\InvoiceSale_StorageLevel1.fr3');
                      end;
                      if cxRadioButton2.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_InvoiceSale_DateToDate';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit2.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit3.Text;
                          DD := 'ÇÒ ÊÇÑíÎ ' + cxMaskEdit2.Text + 'ÊÇ ÊÇÑíÎ ' + cxMaskEdit3.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\InvoiceSale.fr3');
                      end;
                   End;
       rpt_Sale2 : Begin
                      Title := 'ÝÇ˜ÊæÑåÇí ÝÑæÔ';
                      if cxRadioButton4.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_Sale_StorageLevel3';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox6.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit4.Text;
                          DD := 'ÓØÍ 3 ÇäÈÇÑ : ' + cxComboBox5.Text +'   ÇÒ ÊÇÑíÎ  ' + cxMaskEdit1.Text +'  ÊÇ ÊÇÑíÎ  ' +cxMaskEdit4.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Sale_StorageLevel3.fr3');
                      end;
                      if cxRadioButton1.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_Sale_StorageLevel2';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox4.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit4.Text;
                          DD := 'ÓØÍ 2 ÇäÈÇÑ : ' + cxComboBox2.Text +'   ÇÒ ÊÇÑíÎ  ' + cxMaskEdit1.Text +'  ÊÇ ÊÇÑíÎ  ' +cxMaskEdit4.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Sale_StorageLevel2.fr3');
                      end;
                      if cxRadioButton3.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_Sale_StorageLevel1';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit4.Text;
                          DD := 'ÓØÍ 1 ÇäÈÇÑ : ' + cxComboBox3.Text +'   ÇÒ ÊÇÑíÎ  ' + cxMaskEdit1.Text +'  ÊÇ ÊÇÑíÎ  ' +cxMaskEdit4.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Sale_StorageLevel1.fr3');
                      end;
                      if cxRadioButton2.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_InvoiceSale2_DateToDate';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit2.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit3.Text;
                          DD := 'ÇÒ ÊÇÑíÎ ' + cxMaskEdit2.Text + 'ÊÇ ÊÇÑíÎ ' + cxMaskEdit3.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\ReportInvoicePrint.fr3');
                      end;
                   End;
       rpt_BackFromSale :
                   Begin
                      Title := 'ÝÇ˜ÊæÑåÇí ÈÑÔÊ ÇÒ ÝÑæÔ';
                      if cxRadioButton2.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_InvoiceBackFromSale_DateToDate';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit2.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit3.Text;
                          DD := 'ÇÒ ÊÇÑíÎ ' + cxMaskEdit2.Text + 'ÊÇ ÊÇÑíÎ ' + cxMaskEdit3.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\InvoiceBackFromSale.fr3');
                      end;
                      if cxRadioButton4.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_BackFromSale_StorageLevel3';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox6.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit4.Text;
                          DD := 'ÓØÍ 3 ÇäÈÇÑ : ' + cxComboBox5.Text +'   ÇÒ ÊÇÑíÎ  ' + cxMaskEdit1.Text +'  ÊÇ ÊÇÑíÎ  ' +cxMaskEdit4.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\BackFromSale_StorageLevel3.fr3');
                      end;
                      if cxRadioButton1.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_BackFromSale_StorageLevel2';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox4.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit4.Text;
                          DD := 'ÓØÍ 2 ÇäÈÇÑ : ' + cxComboBox2.Text +'   ÇÒ ÊÇÑíÎ  ' + cxMaskEdit1.Text +'  ÊÇ ÊÇÑíÎ  ' +cxMaskEdit4.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\BackFromSale_StorageLevel2.fr3');
                      end;
                      if cxRadioButton3.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_BackFromSale_StorageLevel1';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit4.Text;
                          DD := 'ÓØÍ 1 ÇäÈÇÑ : ' + cxComboBox3.Text +'   ÇÒ ÊÇÑíÎ  ' + cxMaskEdit1.Text +'  ÊÇ ÊÇÑíÎ  ' +cxMaskEdit4.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\BackFromSale_StorageLevel1.fr3');
                      end;
                   End;
       rpt_BackFromStorage :
                   Begin
                      Title := 'ÝÇ˜ÊæÑåÇí ÈÑÔÊ ÇÒ ÇäÈÇÑ';
                      if cxRadioButton2.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_InvoiceBackFromStorage_DateToDate';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit2.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit3.Text;
                          DD := 'ÇÒ ÊÇÑíÎ ' + cxMaskEdit2.Text + 'ÊÇ ÊÇÑíÎ ' + cxMaskEdit3.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\InvoiceBackFromStorage.fr3');
                      end;
                      if cxRadioButton4.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_BackFromStorage_StorageLevel3';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox6.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit4.Text;
                          DD := 'ÓØÍ 3 ÇäÈÇÑ : ' + cxComboBox5.Text +'   ÇÒ ÊÇÑíÎ  ' + cxMaskEdit1.Text +'  ÊÇ ÊÇÑíÎ  ' +cxMaskEdit4.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\BackFromStorage_StorageLevel3.fr3');
                      end;
                      if cxRadioButton1.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_BackFromStorage_StorageLevel2';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox4.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit4.Text;
                          DD := 'ÓØÍ 2 ÇäÈÇÑ : ' + cxComboBox2.Text +'   ÇÒ ÊÇÑíÎ  ' + cxMaskEdit1.Text +'  ÊÇ ÊÇÑíÎ  ' +cxMaskEdit4.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\BackFromStorage_StorageLevel2.fr3');
                      end;
                      if cxRadioButton3.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_BackFromStorage_StorageLevel1';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit4.Text;
                          DD := 'ÓØÍ 1 ÇäÈÇÑ : ' + cxComboBox3.Text +'   ÇÒ ÊÇÑíÎ  ' + cxMaskEdit1.Text +'  ÊÇ ÊÇÑíÎ  ' +cxMaskEdit4.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\BackFromStorage_StorageLevel1.fr3');
                      end;
                   End;
       rpt_Buy   : Begin
                      Title := 'ÎÑíÏ';
                      if cxRadioButton2.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_Buy_DateToDate';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit2.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit3.Text;
                          DD := 'ÇÒ ÊÇÑíÎ  ' + cxMaskEdit2.Text + 'ÊÇ ÊÇÑíÎ  ' + cxMaskEdit3.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\InvoiceBuy.fr3');
                      end;
                      if cxRadioButton4.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_Buy2_StorageLevel3';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox6.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit4.Text;
                          DD := 'ÓØÍ 3 ÇäÈÇÑ : ' + cxComboBox5.Text +'   ÇÒ ÊÇÑíÎ  ' + cxMaskEdit1.Text +'  ÊÇ ÊÇÑíÎ  ' +cxMaskEdit4.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Buy2_StorageLevel3.fr3');
                      end;
                      if cxRadioButton1.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_Buy2_StorageLevel2';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox4.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit4.Text;
                          DD := 'ÓØÍ 2 ÇäÈÇÑ : ' + cxComboBox2.Text +'   ÇÒ ÊÇÑíÎ  ' + cxMaskEdit1.Text +'  ÊÇ ÊÇÑíÎ  ' +cxMaskEdit4.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Buy2_StorageLevel2.fr3');
                      end;
                      if cxRadioButton3.Checked = True then
                      begin
                          DM.ADOspReport.ProcedureName:='dbo.Report_Buy2_StorageLevel1';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit1.Text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit4.Text;
                          DD := 'ÓØÍ 1 ÇäÈÇÑ : ' + cxComboBox3.Text +'   ÇÒ ÊÇÑíÎ  ' + cxMaskEdit1.Text +'  ÊÇ ÊÇÑíÎ  ' +cxMaskEdit4.Text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Buy2_StorageLevel1.fr3');
                      end;
                   End;
    end;

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

procedure TReportInvoice.cxComboBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxRadioButton3.Checked:=True;
    cxComboBox1.ItemIndex := cxComboBox3.ItemIndex;
end;

procedure TReportInvoice.FormShow(Sender: TObject);
begin
    DM.FillCombo(cxComboBox1,cxComboBox3,'SN1','name','StorageL1','','SN1,name');
    DM.FillCombo(cxComboBox4,cxComboBox2,'SN2','name','StorageL2','','SN2,name');
    DM.FillCombo(cxComboBox6,cxComboBox5,'SN3','name','StorageL3','','SN3,name');
    if cxRadioButton1.Checked=true then
       cxComboBox2.SetFocus;
    if cxRadioButton2.Checked=true then
    begin
       cxMaskEdit2.SetFocus;
       cxMaskEdit2.Text := main.DateNow;
       cxMaskEdit3.Text := main.DateNow;
    end;
    if cxRadioButton3.Checked=true then
       cxComboBox3.SetFocus;
    if cxRadioButton4.Checked=true then
       cxComboBox5.SetFocus;
    cxMaskEdit1.Text := main.DateNow;
    cxMaskEdit4.Text := main.DateNow;
end;

procedure TReportInvoice.cxMaskEdit2Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit2);
end;

procedure TReportInvoice.cxMaskEdit3Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit3);
end;

procedure TReportInvoice.cxComboBox2PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxRadioButton1.Checked:=True;
    cxComboBox4.ItemIndex := cxComboBox2.ItemIndex;
end;

procedure TReportInvoice.cxComboBox5PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxRadioButton4.Checked:=True;
    cxComboBox6.ItemIndex := cxComboBox5.ItemIndex;
end;

procedure TReportInvoice.cxMaskEdit1Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit1);
end;

procedure TReportInvoice.cxMaskEdit4Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit4);
end;

procedure TReportInvoice.cxMaskEdit2PropertiesChange(Sender: TObject);
begin
    if cxMaskEdit2.Text <>'' then
       cxRadioButton2.Checked:=true;
end;

procedure TReportInvoice.cxMaskEdit3PropertiesChange(Sender: TObject);
begin
    if cxMaskEdit3.Text <>'' then
       cxRadioButton2.Checked:=true;
end;

procedure TReportInvoice.cxRadioButton2Click(Sender: TObject);
begin
    cxMaskEdit2.Text := main.DateNow;
    cxMaskEdit3.Text := main.DateNow;
end;

end.
