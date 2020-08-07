unit frmReportQuch;

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

  Report_Kind = (RK_QuchSend,RK_QuchResive);

  TReportQuch = class(TForm)
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
    procedure FormShow(Sender: TObject);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxMaskEdit1Exit(Sender: TObject);
    procedure cxMaskEdit2Exit(Sender: TObject);
    procedure cxMaskEdit3Exit(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxMaskEdit2PropertiesChange(Sender: TObject);
    procedure cxMaskEdit3PropertiesChange(Sender: TObject);
    procedure cxMaskEdit1PropertiesChange(Sender: TObject);
  private

  public
       RKQuch : Report_Kind;
  end;

var
  ReportQuch: TReportQuch;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TReportQuch.FormShow(Sender: TObject);
begin
    case RKQuch of
       RK_QuchResive : DM.FillCombo(cxComboBox1,cxComboBox3,'code','name','Customer','','code,name');
       RK_QuchSend   : DM.FillCombo(cxComboBox1,cxComboBox3,'SN3','name','StorageL3','','SN3,name');
    end;
    cxMaskEdit1.Text:=main.DateNow;
    cxMaskEdit2.Text:=main.DateNow;
    cxMaskEdit3.Text:=main.DateNow;
end;

procedure TReportQuch.cxComboBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox1.ItemIndex := cxComboBox3.ItemIndex;
    cxRadioButton3.Checked:=True;
end;

procedure TReportQuch.cxMaskEdit1Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit1);
end;

procedure TReportQuch.cxMaskEdit2Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit2);
end;

procedure TReportQuch.cxMaskEdit3Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit3);
end;

procedure TReportQuch.cxButton1Click(Sender: TObject);
begin
    Close;
end;

procedure TReportQuch.cxButton2Click(Sender: TObject);
var
    Mem : TfrxMemoView;
    Pic : TfrxPictureView;
    DD , Title : String;
begin
    if (cxRadioButton3.Checked=True) AND (cxComboBox3.ItemIndex < 0) then
       Exit;

    DM.ADOspReport.Close;
    DM.frxDBDataset1.Clear;
    DM.ADOspReport.Parameters.Clear;

    DM.FixDate(cxMaskEdit1);
    DM.FixDate(cxMaskEdit2);
    DM.FixDate(cxMaskEdit3);

    case RKQuch of
       RK_QuchResive  : begin
                            Title := '˜ åÇí ÏÑíÇÝÊí';
                            if cxRadioButton1.Checked = True then
                            begin
                                DM.ADOspReport.ProcedureName:='dbo.ReportQuchResive';
                                DM.ADOspReport.Parameters.Refresh;
                                DM.ADOspReport.Parameters.ParamByName('@D1').Value := '1/1/1';
                                DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit1.Text;
                                DD := 'ÊÇ ÊÇÑíÎ  :  ' + cxMaskEdit1.Text;
                            end;
                            if cxRadioButton2.Checked = True then
                            begin
                                DM.ADOspReport.ProcedureName:='dbo.ReportQuchResive';
                                DM.ADOspReport.Parameters.Refresh;
                                DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit2.Text;
                                DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit3.Text;
                                DD := 'ÇÒ ÊÇÑíÎ   ' + cxMaskEdit2.Text + ' ÊÇ ÊÇÑíÎ   ' + cxMaskEdit3.Text;
                            end;
                            if cxRadioButton3.Checked = True then
                            begin
                                DM.ADOspReport.ProcedureName:='dbo.ReportQuchResive_Buyer';
                                DM.ADOspReport.Parameters.Refresh;
                                DM.ADOspReport.Parameters.ParamByName('@param').Value := cxComboBox1.Text;
                                DD := 'ÇÒ ÎÑíÏÇÑ  ' + cxComboBox3.Text;
                            end;
                            DM.frxReport1.LoadFromFile(Main.WPath + 'Report\QuchResive.fr3');
                        end;
       RK_QuchSend    : begin
                            Title := '˜ åÇí ÑÏÇÎÊí';
                            if cxRadioButton1.Checked = True then
                            begin
                                DM.ADOspReport.ProcedureName:='dbo.ReportQuchSend';
                                DM.ADOspReport.Parameters.Refresh;
                                DM.ADOspReport.Parameters.ParamByName('@D1').Value := '1/1/1';
                                DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit1.Text;
                                DD := 'ÊÇ ÊÇÑíÎ  :  ' + cxMaskEdit1.Text;
                            end;
                            if cxRadioButton2.Checked = True then
                            begin
                                DM.ADOspReport.ProcedureName:='dbo.ReportQuchSend';
                                DM.ADOspReport.Parameters.Refresh;
                                DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit2.Text;
                                DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit3.Text;
                                DD := 'ÇÒ ÊÇÑíÎ   ' + cxMaskEdit2.Text + ' ÊÇ ÊÇÑíÎ   ' + cxMaskEdit3.Text;
                            end;
                            if cxRadioButton3.Checked = True then
                            begin
                                DM.ADOspReport.ProcedureName:='dbo.ReportQuchSend_seller';
                                DM.ADOspReport.Parameters.Refresh;
                                DM.ADOspReport.Parameters.ParamByName('@param').Value := cxComboBox1.Text;
                                DD := 'Èå ÝÑæÔäÏå  ' + cxComboBox3.Text;
                            end;
                            DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Quchsend.fr3');
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

procedure TReportQuch.cxMaskEdit2PropertiesChange(Sender: TObject);
begin
    if cxMaskEdit2.Text <>'' then
       cxRadioButton2.Checked:=True;
end;

procedure TReportQuch.cxMaskEdit3PropertiesChange(Sender: TObject);
begin
    if cxMaskEdit3.Text <>'' then
       cxRadioButton2.Checked:=True;
end;

procedure TReportQuch.cxMaskEdit1PropertiesChange(Sender: TObject);
begin
    if cxMaskEdit1.Text <>'' then
       cxRadioButton1.Checked:=True;
end;

end.
