unit frmChangePass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxTextEdit, cxLabel,
  cxControls, cxContainer, cxEdit, cxGroupBox, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TChangePass = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

  public

  end;

var
  ChangePass: TChangePass;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TChangePass.cxButton2Click(Sender: TObject);
begin
    Close;
end;

procedure TChangePass.cxButton1Click(Sender: TObject);
var
    i , c :integer;
    S , FechPass : string;
begin
    if DM.GetAlarm(cxTextEdit1,'—„“ ⁄»Ê— ﬁœÌ„ —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxTextEdit2,'—„“ ⁄»Ê— ÃœÌœ —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxTextEdit3,' ò—«— —„“ ⁄»Ê— —« Ê«—œ ò‰Ìœ')=False then
       exit;

    DM.ADORun.Close;
    DM.ADORun.CommandText:='SELECT pass FROM users WHERE state=1 AND userid='+QuotedStr(main.UserNow);
    DM.ADORun.Open;
    if DM.ADORun.RecordCount > 0 then
    begin
        FechPass := DM.ADORun.FieldValues['pass'];
        s := cxTextEdit1.text;
        cxTextEdit1.Text:='';
        for i := 1  to Length(s) do
        begin
            c:=Ord(s[i]) + 23;
            cxTextEdit1.Text := cxTextEdit1.Text + Chr(c);
        end;
        if cxTextEdit1.Text <> FechPass then
        begin
            MessageDlg('‘„« „Ã«“ »Â  €ÌÌ— —„“ ⁄»Ê— ‰„Ì »«‘Ìœ',mtWarning,[mbOK],0);
            Exit;
        end;
    end;

    if cxTextEdit2.Text <> cxTextEdit3.Text then
    begin
        MessageDlg('—„“ ⁄»Ê— ÃœÌœ »«  ò—«— —„“ ⁄»Ê— „ÿ«»ﬁ  ‰œ«—œ',mtWarning,[mbOK],0);
        cxTextEdit2.SetFocus;
        exit;
    end;

    s := cxTextEdit2.text;
    cxTextEdit2.Text:='';
    cxTextEdit3.Text:='';
    for i := 1  to Length(s) do
    begin
        c:=Ord(s[i]) + 23;
        cxTextEdit2.Text := cxTextEdit2.Text + Chr(c);
    end;
    DM.Update('users','pass='+QuotedStr(cxTextEdit2.Text),'userid='+QuotedStr(main.UserNow));
    MessageDlg('—„“ ⁄»Ê— »« „Ê›ﬁÌ   €ÌÌ— Ì«› ',mtWarning,[mbOK],0);
    Close;
end;

procedure TChangePass.FormShow(Sender: TObject);
begin
    cxTextEdit1.SetFocus;
end;

procedure TChangePass.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DM.ADORun.Close;
end;

end.
