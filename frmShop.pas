unit frmShop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DB,ADODB, frmTMP, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxLabel, cxControls, cxContainer,
  cxEdit, cxGroupBox, StdCtrls, cxButtons, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

Const
     TableName = 'Shop';
     FieldName = 'name,tel,fax,address';

type
  TShop = class(TTMP)
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxButton7: TcxButton;
    cxTextEdit5: TcxTextEdit;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxTextEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
       procedure EmptyTextBox();
       procedure RefreshGrid();
  public

  end;

var
  Shop: TShop;

implementation

uses frmMain, frmDM;

{$R *.dfm}

procedure TShop.EmptyTextBox();
begin
    cxTextEdit5.Text:='';
    cxTextEdit1.text:='';
    cxTextEdit2.text:='';
    cxTextEdit3.text:='';
    cxTextEdit4.Text:='';
end;

procedure TShop.RefreshGrid();
begin
    EmptyTextBox;
    DM.Select(TableName,FieldName,'');
    if DM.ADORun.RecordCount > 0 then
    begin
        cxTextEdit5.Text := DM.ADORun.FieldValues['name'];
        cxTextEdit1.Text := DM.ADORun.FieldValues['tel'];
        cxTextEdit2.Text := DM.ADORun.FieldValues['fax'];
        cxTextEdit3.Text := DM.ADORun.FieldValues['address'];
        cxButton2.Enabled:=false;
        cxButton3.Enabled:=false;
        cxButton4.Enabled:=True;
        cxButton5.Enabled:=True;
    end
    else
    begin
        cxButton2.Enabled:=True;
        cxButton3.Enabled:=True;
        cxButton4.Enabled:=False;
        cxButton5.Enabled:=False;
    end;
end;

procedure TShop.FormShow(Sender: TObject);
begin
    DM.BTNState(cxButton2,cxButton3,cxButton4,cxButton5,cxButton6,main.Permission[24],main.Permission[24],main.Permission[25],main.Permission[26],'1');
    RefreshGrid();
end;

procedure TShop.cxButton2Click(Sender: TObject);
begin
    cxTextEdit5.SetFocus;
end;

procedure TShop.cxButton3Click(Sender: TObject);
begin
    if DM.GetAlarm(cxTextEdit5,'‰«„ ›—Ê‘ê«Â —« Ê«—œ ò‰Ìœ')=False then
       exit;
    Dm.insert(TableName,FieldName,QuotedStr(cxTextEdit5.text) + ',' +
                                  QuotedStr(cxTextEdit1.text) + ',' +
                                  QuotedStr(cxTextEdit2.text) + ',' +
                                  QuotedStr(cxTextEdit3.text)
                                  //QuotedStr(cxTextEdit4.text)
                                  );
    RefreshGrid();
    main.AddTel:='¬œ—”:'+cxTextEdit3.Text +'   ·›‰ '+cxTextEdit1.Text;
end;

procedure TShop.cxButton4Click(Sender: TObject);
begin
    if DM.GetAlarm(cxTextEdit5,'‰«„ ›—Ê‘ê«Â —« Ê«—œ ò‰Ìœ')=False then
       exit;
    DM.Update(TableName,'name='    + QuotedStr(cxTextEdit5.text) + ',' +
                        'tel='     + QuotedStr(cxTextEdit1.text) + ',' +
                        'fax='     + QuotedStr(cxTextEdit2.Text) + ',' +
                        'address=' + QuotedStr(cxTextEdit3.Text)
                   //   'image='+ QuotedStr(cxMemo1.Text)
                        ,'');
    RefreshGrid;
    main.AddTel:='¬œ—”:'+cxTextEdit3.Text +'   ·›‰ '+cxTextEdit1.Text;
end;

procedure TShop.cxButton5Click(Sender: TObject);
begin
    DM.Delete(TableName,'');
    main.AddTel:='';
    RefreshGrid;
end;

procedure TShop.cxTextEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
//       VK_F8        : cxButton6.Click;
       VK_F9        : cxButton2.Click;
       VK_F10       : cxButton3.Click;
       VK_F11       : cxButton4.Click;
       VK_F12       : cxButton5.Click;
       VK_ESCAPE    : Close;
    end;
end;

procedure TShop.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Main.CmdShop.Enabled:=True;
end;

end.
