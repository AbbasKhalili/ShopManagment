unit frmReportSaleDetial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, dxSkinsCore, dxSkinsDefaultPainters, Menus,
  cxLookAndFeelPainters, cxLabel, cxTextEdit, cxMaskEdit, StdCtrls,
  cxButtons, cxControls, cxContainer, cxEdit, cxImage, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue;

type

  KindReports = (rpt_Sale_S,rpt_Expense_S,rpt_Bardasht);

  TReportSaleDetial = class(TForm)
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxMaskEdit3: TcxMaskEdit;
    cxMaskEdit2: TcxMaskEdit;
    cxLabel3: TcxLabel;
    cxImage2: TcxImage;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure cxMaskEdit2Exit(Sender: TObject);
    procedure cxMaskEdit3Exit(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public
       Typereps : KindReports;
  end;

var
  ReportSaleDetial: TReportSaleDetial;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TReportSaleDetial.cxButton1Click(Sender: TObject);
begin
    Close;
end;

procedure TReportSaleDetial.cxMaskEdit2Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit2);
end;

procedure TReportSaleDetial.cxMaskEdit3Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit3);
end;

procedure TReportSaleDetial.cxButton2Click(Sender: TObject);
var
    Mem : TfrxMemoView;
    Pic : TfrxPictureView;
    DD , Title : String;
begin
    DM.FixDate(cxMaskEdit2);
    DM.FixDate(cxMaskEdit3);
    DM.ADOspReport.Close;
    DM.ADOspReport.Parameters.Clear;

    case Typereps of
       rpt_Sale_S :    begin
                          Title := '„Ì“«‰ ›—Ê‘ »Â ’Ê—  —Ì“';
                          DM.ADOspReport.ProcedureName:='dbo.Report_InvoiceSale_Detial_DateToDate';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit2.text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit3.text;
                          DD := ' «“  «—ÌŒ   ' + cxMaskEdit2.text + '    «  «—ÌŒ    ' + cxMaskEdit3.text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\SaleDetial.fr3');
                       end;
       rpt_Expense_S : begin
                          Title := '„Ì“«‰ Â“Ì‰Â Â«';
                          DM.ADOspReport.ProcedureName:='dbo.Report_Expense';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit2.text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit3.text;
                          DD := ' «“  «—ÌŒ   ' + cxMaskEdit2.text + '    «  «—ÌŒ    ' + cxMaskEdit3.text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Expense.fr3');
                       end;
       rpt_Bardasht : begin
                          Title := '„Ì“«‰ »—œ«‘  Â«';
                          DM.ADOspReport.ProcedureName:='dbo.Report_Bardasht';
                          DM.ADOspReport.Parameters.Refresh;
                          DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit2.text;
                          DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit3.text;
                          DD := ' «“  «—ÌŒ   ' + cxMaskEdit2.text + '    «  «—ÌŒ    ' + cxMaskEdit3.text;
                          DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Bardasht.fr3');
                       end;
    end;

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

procedure TReportSaleDetial.FormShow(Sender: TObject);
begin
    cxMaskEdit2.Text := main.DateNow;
    cxMaskEdit3.Text := main.DateNow;
end;

end.
