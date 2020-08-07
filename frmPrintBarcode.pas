unit frmPrintBarcode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls, cxContainer,
  cxEdit, cxImage, cxGraphics, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, ComCtrls, cxListView, ExtCtrls;

type
  TPrintBarcode = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxComboBox4: TcxComboBox;
    cxComboBox3: TcxComboBox;
    cxLabel3: TcxLabel;
    cxListView1: TcxListView;
    imgCheckAll: TImage;
    imgunCheckAll: TImage;
    cxMaskEdit4: TcxMaskEdit;
    cxLabel1: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure imgCheckAllClick(Sender: TObject);
    procedure imgunCheckAllClick(Sender: TObject);
    procedure cxMaskEdit4KeyPress(Sender: TObject; var Key: Char);
  private

  public

  end;

var
  PrintBarcode: TPrintBarcode;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TPrintBarcode.FormShow(Sender: TObject);
begin
    DM.FillCombo(cxComboBox4,cxComboBox3,'SN3','name','StorageL3','','SN3,name');
end;

procedure TPrintBarcode.cxComboBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox4.ItemIndex:=cxComboBox3.ItemIndex;
    if cxComboBox4.ItemIndex<0 then
       exit;
    cxListView1.Items.Clear;
    DM.ADOReport.Close;
    DM.ADOReport.CommandText:='SELECT k.* FROM kala k,storage s WHERE k.codekala=s.code ' +
                              ' AND s.Storageno='+cxComboBox4.Text +' ORDER BY k.code';
    DM.ADOReport.Open;
    if DM.ADOReport.RecordCount > 0 then
       While NOT DM.ADOReport.Eof DO
       begin
           with cxListView1.Items.Add do
           begin
               Caption :='1';
               SubItems.Insert(0,FloatToStr(DM.ADOReport.FieldValues['saleprice']));
               SubItems.Insert(1,FloatToStr(DM.ADOReport.FieldValues['buyprice']));
               SubItems.Insert(2,DM.ADOReport.FieldValues['name']);
               SubItems.Insert(3,DM.ADOReport.FieldValues['Code']);
           end;
        DM.ADOReport.Next;
    end;
end;

procedure TPrintBarcode.cxButton1Click(Sender: TObject);
begin
    close;
end;

procedure TPrintBarcode.cxButton2Click(Sender: TObject);
var
    i,j : integer;
begin
    DM.Delete('_tmpPrintBarcode','',0);

    if cxComboBox3.ItemIndex>-1 then
       for i:=0 to cxListView1.Items.Count-1 do
          if cxListView1.Items.Item[i].Checked=true then
          begin
             for j:=1 to strtoint(cxListView1.Items.Item[i].Caption) Do
                 DM.insert('_tmpPrintBarcode','code,name,saleprice',QuotedStr(cxListView1.Items.Item[i].SubItems.Strings[3]) + ',' +
                                                                    QuotedStr(cxListView1.Items.Item[i].SubItems.Strings[2]) + ',' +
                                                                    QuotedStr(cxListView1.Items.Item[i].SubItems.Strings[0]));
          end;

    DM.ADOspReport.Close;
    DM.ADOspReport.Parameters.Clear;
    DM.ADOspReport.ProcedureName:='dbo.Selection';
    DM.ADOspReport.Parameters.Refresh;
    DM.ADOspReport.Parameters.ParamByName('@T').Value := '_tmpPrintBarcode';
    DM.ADOspReport.Parameters.ParamByName('@F').Value := '*';
    DM.ADOspReport.Parameters.ParamByName('@W').Value := '';
    DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Barcode.fr3');
    DM.ADOspReport.Open;
    DM.frxReport1.ShowReport;
end;

procedure TPrintBarcode.imgCheckAllClick(Sender: TObject);
var
    i : integer;
begin
    for i:=0 to cxListView1.Items.Count-1 do
       cxListView1.Items.Item[i].Checked:=true;
end;

procedure TPrintBarcode.imgunCheckAllClick(Sender: TObject);
var
    i : integer;
begin
    for i:=0 to cxListView1.Items.Count-1 do
       cxListView1.Items.Item[i].Checked:=False;
end;

procedure TPrintBarcode.cxMaskEdit4KeyPress(Sender: TObject;
  var Key: Char);
Var
    i :integer;
begin
    if key=#13 then
      if cxComboBox3.ItemIndex>-1 then
         for i:=0 to cxListView1.Items.Count-1 do
            if LowerCase(cxListView1.Items.Item[i].SubItems.Strings[3])=LowerCase(cxMaskEdit4.Text) then
            begin
                cxListView1.Items.Item[i].Selected:=true;
                cxLabel1.Style.TextColor:=clGreen;
                cxLabel1.Caption:='│Мог то';
                Exit;
            end;
    cxLabel1.Style.TextColor:=clRed;
    cxLabel1.Caption:='│Мог Дто';
end;

end.
