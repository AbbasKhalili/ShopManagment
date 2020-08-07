unit frmRestore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxLabel, dxGDIPlusClasses, ExtCtrls,ADODB,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  TRestore = class(TForm)
    cxLabel1: TcxLabel;
    Txtpath: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    OpenDialog1: TOpenDialog;
    Image1: TImage;
    Label1: TLabel;
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
       ADO : TADOCommand;
  public

  end;

var
  Restore: TRestore;

implementation

uses frmMain, frmDM;

{$R *.dfm}

procedure TRestore.cxButton3Click(Sender: TObject);
begin
    Close;
end;

procedure TRestore.cxButton2Click(Sender: TObject);
begin
   IF MessageDlg('⁄„·Ì«  »«“ê—œ«‰Ì Å‘ Ì»«‰ ’Ê—  êÌ—œø',mtWarning, [mbYes, mbNo], 0) = mrYes THEN
   begin
      ADO.CommandText:='use master RESTORE DATABASE [ParsaSM] FROM  DISK = '+ QuotedStr(txtpath.text);
      ADO.Execute;
      ADO.CommandText:='use ParsaSM';
      ADO.Execute;
      DM.AlarmStorage;
      MessageDlg('»«“ê—œ«‰Ì Å‘ Ì»«‰ »« „Ê›ﬁÌ  «‰Ã«„ ‘œ',mtInformation, [mbOk], 0);
      close;
   end
   else
   Abort;
end;

procedure TRestore.cxButton1Click(Sender: TObject);
begin
   OpenDialog1.InitialDir:=Main.WPath + '\Backup';
   OpenDialog1.Filter:='›«Ì· Å‘ Ì»«‰ (*.PSM)|*.PSM';

   if OpenDialog1.Execute then
      Txtpath.Text:=OpenDialog1.FileName;
end;

procedure TRestore.FormCreate(Sender: TObject);
begin
    ADO := TADOCommand.Create(Self);
    ADO.Connection := DM.Connection;
end;

end.
