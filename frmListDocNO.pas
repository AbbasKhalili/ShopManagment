unit frmListDocNO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  cxLookAndFeelPainters, ImgList, cxGraphics, StdCtrls, cxButtons,
  cxControls, cxContainer, cxListView;

type
  TListDocNO = class(TForm)
    cxListView1: TcxListView;
    cxButton2: TcxButton;
    cxImageList1: TcxImageList;
    cxButton1: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure cxListView1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
       Sel : integer;
  public
       Dateopen : String;
  end;

var
  ListDocNO: TListDocNO;

implementation

uses frmLogin, frmDM;

{$R *.dfm}

procedure TListDocNO.cxButton2Click(Sender: TObject);
begin
    if Sel >= 0 then
    begin
       Login.cxTextEdit3.Text := cxListView1.Items.Item[Sel].SubItems.Strings[5];
       Close;
    end;
end;

procedure TListDocNO.cxListView1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
    Sel := cxListView1.ItemIndex;
end;

procedure TListDocNO.FormShow(Sender: TObject);
begin
    DM.ADORun.Close;
    DM.ADORun.CommandText:='SELECT * FROM DocNO where DateOpen='+QuotedStr(Dateopen);
    DM.ADORun.Open;
    if DM.ADORun.RecordCount > 0 then
    begin
       while NOT DM.ADORun.Eof do
       begin
           with cxListView1.Items.Add do
           begin
               if DM.ADORun.FieldValues['userclose'] <> null then
                  Caption := DM.ADORun.FieldValues['userclose']
                  else
                  Caption := ' ';
               ImageIndex := 0;
               if DM.ADORun.FieldValues['timeclose'] <> null then
                  SubItems.Insert(0,DM.ADORun.FieldValues['timeclose'])
                  else
                  SubItems.Insert(0,'');
               if DM.ADORun.FieldValues['dateclose'] <> null then
                  SubItems.Insert(1,DM.ADORun.FieldValues['dateclose'])
                  else
                  SubItems.Insert(1,'');
               if DM.ADORun.FieldValues['timeopen'] <> null then
                  SubItems.Insert(2,DM.ADORun.FieldValues['timeopen'])
                  else
                  SubItems.Insert(2,'');
               if DM.ADORun.FieldValues['Dateopen'] <> null then
                  SubItems.Insert(3,DM.ADORun.FieldValues['Dateopen'])
                  else
                  SubItems.Insert(3,'');
               if DM.ADORun.FieldValues['useropen'] <> null then
                  SubItems.Insert(4,DM.ADORun.FieldValues['useropen'])
                  else
                  SubItems.Insert(4,'');
               SubItems.Insert(5,DM.ADORun.FieldValues['docno']);
           end;
           DM.ADORun.Next;
       end;
    end;
    DM.ADORun.Close;
end;

procedure TListDocNO.cxButton1Click(Sender: TObject);
begin
    DM.ADORun.Close;
    DM.ADORun.CommandText:='SELECT MAX(docno) FROM DocNO';
    DM.ADORun.Open;
    Login.cxTextEdit3.Text :=inttostr(DM.ADORun.Fields[0].AsInteger + 1);
    Close;
end;

end.
