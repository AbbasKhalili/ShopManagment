unit frmSelectDocNO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, dxSkinsCore, dxSkinsDefaultPainters, Menus,
  cxLookAndFeelPainters, ImgList, cxGraphics, StdCtrls, cxButtons,
  cxControls, cxContainer, cxListView, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TSelectDocNO = class(TForm)
    cxListView1: TcxListView;
    cxButton2: TcxButton;
    cxImageList1: TcxImageList;
    procedure cxButton2Click(Sender: TObject);
    procedure cxListView1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure FormCreate(Sender: TObject);
  private
       Sel : integer;
  public

  end;

var
  SelectDocNO: TSelectDocNO;

implementation

uses frmLogin, frmDM;

{$R *.dfm}

procedure TSelectDocNO.cxButton2Click(Sender: TObject);
begin
    if Sel >= 0 then
    begin
       Login.cxTextEdit3.Text := cxListView1.Items.Item[Sel].SubItems.Strings[2];
       Close;
    end;
end;

procedure TSelectDocNO.cxListView1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
    Sel := cxListView1.ItemIndex;
end;

procedure TSelectDocNO.FormCreate(Sender: TObject);
begin
    DM.ADORun.Close;
    DM.ADORun.CommandText:='SELECT userclose,dateclose,dateopen,docno FROM DocNO';
    DM.ADORun.Open;
    if DM.ADORun.RecordCount > 0 then
    begin
       while NOT DM.ADORun.Eof do
       begin
           with cxListView1.Items.Add do
           begin
               Caption := DM.ADORun.FieldValues['userclose'];
               ImageIndex := 0;
               if DM.ADORun.FieldValues['dateclose'] <> null then
                  SubItems.Insert(0,DM.ADORun.FieldValues['dateclose'])
                  else
                  SubItems.Insert(0,'');
               SubItems.Insert(1,DM.ADORun.FieldValues['dateopen']);
               SubItems.Insert(2,DM.ADORun.FieldValues['docno']);
           end;
           DM.ADORun.Next;
       end;
    end;
    DM.ADORun.Close;
end;

end.
