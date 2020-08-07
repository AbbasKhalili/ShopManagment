unit frmDefineCoding;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ADODB, DB, dxSkinsCore, dxSkinsDefaultPainters, Menus,
  cxLookAndFeelPainters, cxTextEdit, cxLabel, StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxGroupBox, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type

  Kind_Define = (Vahed_kala,Define_Customer,Define_Bank);

  TDefineCoding = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxGroupBox1: TcxGroupBox;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
       TableName,FieldName:string;
  public
       Kind : Kind_Define;
  end;

var
  DefineCoding: TDefineCoding;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TDefineCoding.cxButton2Click(Sender: TObject);
begin
    Close;
end;

procedure TDefineCoding.cxButton1Click(Sender: TObject);
begin
    case Kind of
       Vahed_kala      : DM.insert(TableName,FieldName,inttostr(DM.GetMax(TableName,'code','')) + ',' + QuotedStr(cxTextEdit1.Text));
       Define_Customer,Define_Bank : DM.insert(TableName,FieldName,inttostr(DM.GetMax(TableName,'code','')) + ',' + QuotedStr(cxTextEdit1.Text) + ',' + QuotedStr(Main.DateNow) + ',' + QuotedStr(TimeToStr(Time)) + ',' + QuotedStr(Main.UserNow));
    end;
    cxTextEdit1.Text:='';
    cxTextEdit1.SetFocus;
    Close;
end;

procedure TDefineCoding.FormShow(Sender: TObject);
begin
    case Kind of
       Vahed_kala :      begin
                             TableName:='Units';
                             FieldName:='code,unitname';
                             DefineCoding.Caption:='ãÚÑÝí æÇÍÏ ˜ÇáÇ';
                         end;
       Define_Customer : begin
                             TableName:='Customer';
                             FieldName:='code,name,DateSave,TimeSave,UserSave';
                             DefineCoding.Caption:='ãÚÑÝí ØÑÝ ÍÓÇÈ';
                         end;
       Define_Bank     : begin
                             TableName:='Banks';
                             FieldName:='code,name,DateSave,TimeSave,UserSave';
                             DefineCoding.Caption:='ãÚÑÝí ÈÇä˜';
                         end;
    end;
    cxTextEdit1.SetFocus;
end;

end.
