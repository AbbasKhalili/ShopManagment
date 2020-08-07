unit frmSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImage, cxTextEdit, cxLabel, cxContainer,
  cxEdit, cxMaskEdit, cxPC, cxControls, StdCtrls, cxButtons, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TSettings = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxMaskEdit1: TcxMaskEdit;
    cxMaskEdit2: TcxMaskEdit;
    cxMaskEdit3: TcxMaskEdit;
    cxMaskEdit4: TcxMaskEdit;
    cxMaskEdit5: TcxMaskEdit;
    cxMaskEdit6: TcxMaskEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxMaskEdit7: TcxMaskEdit;
    cxMaskEdit8: TcxMaskEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxMaskEdit9: TcxMaskEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxImage1: TcxImage;
    cxLabel11: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxMaskEdit10: TcxMaskEdit;
    cxLabel12: TcxLabel;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxMaskEdit1PropertiesChange(Sender: TObject);
    procedure cxMaskEdit2PropertiesChange(Sender: TObject);
    procedure cxMaskEdit3PropertiesChange(Sender: TObject);
    procedure cxMaskEdit4PropertiesChange(Sender: TObject);
    procedure cxMaskEdit5PropertiesChange(Sender: TObject);
    procedure cxMaskEdit6PropertiesChange(Sender: TObject);
    procedure cxMaskEdit7PropertiesChange(Sender: TObject);
    procedure cxMaskEdit8PropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
       Procedure SetText(MSK : TcxMaskEdit);
  public

  end;

var
  Settings: TSettings;

implementation

uses frmDM, DB, frmMain;

{$R *.dfm}

Procedure TSettings.SetText(MSK : TcxMaskEdit);
begin
    if (Trim(MSK.Text)='0') or (Trim(MSK.Text)='') then
    begin
        MSK.Text := '1';
        MSK.SelectAll;
    end;
end;

procedure TSettings.cxButton2Click(Sender: TObject);
begin
    Close;
end;

procedure TSettings.cxButton1Click(Sender: TObject);
begin
    DM.Update('Settings','InvoiceSell=' + cxMaskEdit1.text + ',' +
                         'InvoiceBack=' + cxMaskEdit2.text + ',' +
                         'CostSend=' + cxMaskEdit3.Text + ',' +
                         'CostResive=' + cxMaskEdit4.text + ',' +
                         'QuchSend=' + cxMaskEdit5.text + ',' +
                         'QuchResive=' + cxMaskEdit6.text + ',' +
                         'QuchSendToAlarm=' + cxMaskEdit7.text + ',' +
                         'QuchResiveToAlarm=' + cxMaskEdit8.text + ',' +
                         'tax=' + cxMaskEdit9.text  + ',' +
                         'Title=' + QuotedStr(cxTextEdit1.text)  + ',' +
                         'Slogan=' + QuotedStr(cxTextEdit2.text)  + ',' +
                         'InvoiceBackStorage=' + cxMaskEdit10.text
                         ,'');
    Main.Tax:= cxMaskEdit9.text;
    Main.Slogan := cxTextEdit2.text;
    Main.TitleReport := cxTextEdit1.text;
    Close;
end;

procedure TSettings.FormShow(Sender: TObject);
begin
    DM.Select('Settings','*','');
    if DM.ADORun.RecordCount > 0 then
    begin
        cxMaskEdit1.Text := DM.ADORun.FieldValues['InvoiceSell'];
        cxMaskEdit2.Text := DM.ADORun.FieldValues['InvoiceBack'];
        cxMaskEdit3.Text := DM.ADORun.FieldValues['CostSend'];
        cxMaskEdit4.Text := DM.ADORun.FieldValues['CostResive'];
        cxMaskEdit5.Text := DM.ADORun.FieldValues['QuchSend'];
        cxMaskEdit6.Text := DM.ADORun.FieldValues['QuchResive'];
        cxMaskEdit7.Text := DM.ADORun.FieldValues['QuchSendToAlarm'];
        cxMaskEdit8.Text := DM.ADORun.FieldValues['QuchResiveToAlarm'];
        cxMaskEdit9.Text := DM.ADORun.FieldValues['Tax'];
        cxTextEdit1.Text := DM.ADORun.FieldValues['Title'];
        cxTextEdit2.Text := DM.ADORun.FieldValues['Slogan'];
        cxMaskEdit10.Text := DM.ADORun.FieldValues['InvoiceBackStorage'];
    end;
    cxImage1.Picture.LoadFromFile(main.WPath + '\Logo.jpg');
end;

procedure TSettings.cxMaskEdit1PropertiesChange(Sender: TObject);
begin
    SetText(cxMaskEdit1);
end;

procedure TSettings.cxMaskEdit2PropertiesChange(Sender: TObject);
begin
    SetText(cxMaskEdit2);
end;

procedure TSettings.cxMaskEdit3PropertiesChange(Sender: TObject);
begin
    SetText(cxMaskEdit3);
end;

procedure TSettings.cxMaskEdit4PropertiesChange(Sender: TObject);
begin
    SetText(cxMaskEdit4);
end;

procedure TSettings.cxMaskEdit5PropertiesChange(Sender: TObject);
begin
    SetText(cxMaskEdit5);
end;

procedure TSettings.cxMaskEdit6PropertiesChange(Sender: TObject);
begin
    SetText(cxMaskEdit6);
end;

procedure TSettings.cxMaskEdit7PropertiesChange(Sender: TObject);
begin
    SetText(cxMaskEdit7);
end;

procedure TSettings.cxMaskEdit8PropertiesChange(Sender: TObject);
begin
    SetText(cxMaskEdit8);
end;

procedure TSettings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DM.ADORun.Close;
end;

end.
