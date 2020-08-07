unit frmReportCostSend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, dxSkinsCore, dxSkinsDefaultPainters, cxGraphics,
  Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxRadioGroup,
  cxDropDownEdit, cxTextEdit, cxMaskEdit, cxLabel, cxControls, cxContainer,
  cxEdit, cxImage, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue;

type

  Report_Kind = (RK_CostSend,RK_CostResive);

  TReportCostSend = class(TForm)
    cxImage3: TcxImage;
    cxImage2: TcxImage;
    cxImage1: TcxImage;
    cxLabel3: TcxLabel;
    cxMaskEdit1: TcxMaskEdit;
    cxMaskEdit2: TcxMaskEdit;
    cxMaskEdit3: TcxMaskEdit;
    cxComboBox3: TcxComboBox;
    cxComboBox1: TcxComboBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton3: TcxRadioButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxMaskEdit2Exit(Sender: TObject);
    procedure cxMaskEdit1Exit(Sender: TObject);
    procedure cxMaskEdit3Exit(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxMaskEdit1PropertiesChange(Sender: TObject);
    procedure cxMaskEdit2PropertiesChange(Sender: TObject);
    procedure cxMaskEdit3PropertiesChange(Sender: TObject);
    procedure cxRadioButton1Click(Sender: TObject);
    procedure cxRadioButton2Click(Sender: TObject);
  private

  public
       RK : Report_Kind;
  end;

var
  ReportCostSend: TReportCostSend;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TReportCostSend.cxButton1Click(Sender: TObject);
begin
    Close;
end;

procedure TReportCostSend.FormShow(Sender: TObject);
begin
    case RK of
       RK_CostResive : DM.FillCombo(cxComboBox1,cxComboBox3,'code','name','Customer','','code,name');
       RK_CostSend   : DM.FillCombo(cxComboBox1,cxComboBox3,'SN3','name','StorageL3','','SN3,name');
    end;
    cxMaskEdit1.Text := main.DateNow;
    cxMaskEdit2.Text := main.DateNow;
    cxMaskEdit3.Text := main.DateNow;
end;

procedure TReportCostSend.cxComboBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox1.ItemIndex := cxComboBox3.ItemIndex;
    cxRadioButton3.Checked:=True;
end;

procedure TReportCostSend.cxMaskEdit2Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit2);
end;

procedure TReportCostSend.cxMaskEdit1Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit1);
end;

procedure TReportCostSend.cxMaskEdit3Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit3);
end;

procedure TReportCostSend.cxButton2Click(Sender: TObject);
var
    Mem : TfrxMemoView;
    Pic : TfrxPictureView;
    DD , Title : String;
begin

    if (cxRadioButton3.Checked=True) AND (cxComboBox3.ItemIndex < 0) then
       Exit;

    DM.FixDate(cxMaskEdit1);
    DM.FixDate(cxMaskEdit2);
    DM.FixDate(cxMaskEdit3);

    DM.ADOspReport.Close;
    DM.frxDBDataset1.Clear;
    DM.ADOspReport.Parameters.Clear;

    case RK of
       RK_CostResive  : begin
                            Title := 'ÏÑíÇÝÊ äÞÏí';
                            if cxRadioButton1.Checked = True then
                            begin
                                DM.ADOspReport.ProcedureName:='dbo.ReportCostResive';
                                DM.ADOspReport.Parameters.Refresh;
                                DM.ADOspReport.Parameters.ParamByName('@D1').Value := '1/1/1';
                                DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit1.Text;
                                DD := 'ÊÇ ÊÇÑíÎ  :  ' + cxMaskEdit1.Text;
                            end;
                            if cxRadioButton2.Checked = True then
                            begin
                                DM.ADOspReport.ProcedureName:='dbo.ReportCostResive';
                                DM.ADOspReport.Parameters.Refresh;
                                DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit2.Text;
                                DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit3.Text;
                                DD := 'ÇÒ ÊÇÑíÎ   ' + cxMaskEdit2.Text + ' ÊÇ ÊÇÑíÎ   ' + cxMaskEdit3.Text;
                            end;
                            if cxRadioButton3.Checked = True then
                            begin
                                DM.ADOspReport.ProcedureName:='dbo.ReportCostResive_Buyer';
                                DM.ADOspReport.Parameters.Refresh;
                                DM.ADOspReport.Parameters.ParamByName('@param').Value := cxComboBox1.Text;
                                DD := 'ÇÒ ÎÑíÏÇÑ  ' + cxComboBox3.Text;
                            end;
                            DM.frxReport1.LoadFromFile(Main.WPath + 'Report\CostResive.fr3');
                        end;
       RK_CostSend    : begin
                            Title := 'ÑÏÇÎÊ åÇí äÞÏí';
                            if cxRadioButton1.Checked = True then
                            begin
                                DM.ADOspReport.ProcedureName:='dbo.ReportCostSend';
                                DM.ADOspReport.Parameters.Refresh;
                                DM.ADOspReport.Parameters.ParamByName('@D1').Value := '1/1/1';
                                DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit1.Text;
                                DD := 'ÊÇ ÊÇÑíÎ  :  ' + cxMaskEdit1.Text;
                            end;
                            if cxRadioButton2.Checked = True then
                            begin
                                DM.ADOspReport.ProcedureName:='dbo.ReportCostSend';
                                DM.ADOspReport.Parameters.Refresh;
                                DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit2.Text;
                                DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit3.Text;
                                DD := 'ÇÒ ÊÇÑíÎ   ' + cxMaskEdit2.Text + ' ÊÇ ÊÇÑíÎ   ' + cxMaskEdit3.Text;
                            end;
                            if cxRadioButton3.Checked = True then
                            begin
                                DM.ADOspReport.ProcedureName:='dbo.ReportCostSend_Seller';
                                DM.ADOspReport.Parameters.Refresh;
                                DM.ADOspReport.Parameters.ParamByName('@param').Value := cxComboBox1.Text;
                                DD := 'Èå ÝÑæÔäÏå  ' + cxComboBox3.Text;
                            end;
                            DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Costsend.fr3');
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

procedure TReportCostSend.cxMaskEdit1PropertiesChange(Sender: TObject);
begin
    if cxMaskEdit1.Text<>'' then
       cxRadioButton1.Checked:=True;
end;

procedure TReportCostSend.cxMaskEdit2PropertiesChange(Sender: TObject);
begin
    if cxMaskEdit2.Text<>'' then
       cxRadioButton2.Checked:=True;
end;

procedure TReportCostSend.cxMaskEdit3PropertiesChange(Sender: TObject);
begin
    if cxMaskEdit3.Text<>'' then
       cxRadioButton2.Checked:=True;
end;

procedure TReportCostSend.cxRadioButton1Click(Sender: TObject);
begin
    cxMaskEdit1.Text := main.DateNow;
end;

procedure TReportCostSend.cxRadioButton2Click(Sender: TObject);
begin
    cxMaskEdit2.Text := main.DateNow;
    cxMaskEdit3.Text := main.DateNow;
end;

end.
