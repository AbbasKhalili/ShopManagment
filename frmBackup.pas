unit frmBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,frmDM ,ADODB, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  dxGDIPlusClasses, ExtCtrls;

type
  TBackup = class(TForm)
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    Image1: TImage;
    Label1: TLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
       ADO : TADOCommand;
  public

  end;

var
  Backup: TBackup;

implementation

uses frmMain;

{$R *.dfm}

procedure TBackup.cxButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TBackup.cxButton2Click(Sender: TObject);
Var
   i : integer;
   D , DD , T ,TT : String;
begin
   DD := Main.DateNow;
   TT := Main.TimeNow;
   D := '';
   T := '';
   for i:=1 to Length(DD) do
   begin
      if DD[i] = '/' then
         D := D + '.'
         else
         D := D + DD[i];
   end;

   for i:=1 to Length(TT) do
      if TT[i] = ':' then
         T := T + '.'
         else
         T := T + TT[i];

   ADO.CommandText:='BACKUP DATABASE ParsaSM TO DISK =' + QuotedStr(Main.WPath + 'Backup\Backup_PSM_' + D + '_' + T + '.PSM');
   ADO.Execute;
   ADO.Destroy;
   MessageDlg('.⁄„·Ì«  Å‘ Ì»«‰ êÌ—Ì »« „Ê›ﬁÌ  «‰Ã«„ ‘œ',mtInformation, [mbOk], 0);
   Close;
end;

procedure TBackup.FormCreate(Sender: TObject);
begin
    ADO := TADOCommand.Create(Self);
    ADO.Connection := DM.Connection;
end;

end.
