unit frmChangeUser;

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
  TChangeUser = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
        TiNow , Today : string;
  public

  end;

var
  ChangeUser: TChangeUser;

implementation

uses frmDM, frmMain, DateUtils;

{$R *.dfm}

procedure TChangeUser.cxButton2Click(Sender: TObject);
begin
    Close;
end;

procedure TChangeUser.cxButton1Click(Sender: TObject);
Var
    DDD : string;
    YY , MM , DD : Word;
    i , c :integer;
    S : string;
begin
    if (cxTextEdit1.Text = '') or (cxTextEdit2.Text = '') then
    begin
        MessageDlg('‰«„ ò«—»—Ì Ê ò·„Â ⁄»Ê— —« Ê«—œ ò‰Ìœ',mtError,[mbOK],0);
        cxTextEdit1.SetFocus;
        exit;
    end;

    s := cxTextEdit2.text;
    cxTextEdit2.Text:='';
    for i := 1  to Length(s) do
    begin                                 
        c:=Ord(s[i]) + 23;
        cxTextEdit2.Text := cxTextEdit2.Text + Chr(c);
    end;

    DM.ADORun.Close;
    DM.ADORun.CommandText:='SELECT state,Permission FROM Users WHERE state=1 AND userid='+QuotedStr(cxTextEdit1.Text) +' AND pass='+QuotedStr(cxTextEdit2.Text);
    DM.ADORun.Open;
    if DM.ADORun.RecordCount > 0 then
    begin
        Main.Permission:=DM.ADORun.FieldValues['Permission'];
        DM.ApplyPermission;

        DM.ADORun.Close;
        DM.ADORun.CommandText:='SELECT GETDATE()';
        DM.ADORun.Open;
        TiNow := TimeToStr(TimeOf(DM.ADORun.Fields[0].AsDateTime));
        DDD := DateToStr(DM.ADORun.Fields[0].AsDateTime);
        DM.Julian2Persian(strtoint(Copy(DDD,1,4)),strtoint(Copy(DDD,6,2)),strtoint(Copy(DDD,9,2)),YY , MM , DD);
        Today := DM.FixDate(inttostr(YY)+'/'+inttostr(MM)+'/'+inttostr(DD));

        DM.ADORun.Close;
        DM.ADORun.CommandText:='SELECT Tax,Title,Slogan FROM Settings';
        DM.ADORun.Open;
        
        Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(cxTextEdit1.Text,main.DateNow));
        Main.Tax := DM.ADORun.Fields[0].AsString;
        Main.TitleReport := DM.ADORun.Fields[1].AsString;
        Main.Slogan := DM.ADORun.Fields[2].AsString;
        DM.ADORun.Close;
        DM.ADOStored.Close;
        Main.TimeNow := TiNow;
        Main.DateNow := Today;
        Main.UserNow := cxTextEdit1.Text;
        Main.dxRibbonStatusBar1.Panels.Items[2].Text := Today;
        Main.dxRibbonStatusBar1.Panels.Items[4].Text := cxTextEdit1.Text;
        DM.AlarmStorage;
        DM.AlarmQuchSend;
        DM.AlarmQuchResive;
    end
    else
    begin
        MessageDlg('‘„« „ÃÊ“  €ÌÌ— ò«—»— —« ‰œ«—Ìœ',mtWarning,[mbOK],0);
        cxTextEdit1.Text:='';
        cxTextEdit2.Text:='';
        cxTextEdit1.SetFocus;
        exit;
    end;
    Close;
end;

procedure TChangeUser.FormShow(Sender: TObject);
begin
    cxTextEdit1.SetFocus;
end;

procedure TChangeUser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DM.ADORun.Close;
end;

end.
