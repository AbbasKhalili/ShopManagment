unit frmTransferCQ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, dxSkinsCore, dxSkinsDefaultPainters, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxLookAndFeelPainters, cxLabel, StdCtrls, cxRadioGroup, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxContainer, cxGroupBox, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TTransferCQ = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    cxComboBox1: TcxComboBox;
    cxComboBox2: TcxComboBox;
    cxComboBox5: TcxComboBox;
    cxComboBox6: TcxComboBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton3: TcxRadioButton;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxComboBox5PropertiesEditValueChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
       RecSelect : integer;
       AC_CE,AC_Field : string;
  public
       procedure RefreshGrid();
  end;

var
  TransferCQ: TTransferCQ;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TTransferCQ.RefreshGrid();
var
    I : integer;
begin
    DM.ADOStored.close;
    DM.ADOStored.Parameters.Clear;
    DM.ADOStored.ProcedureName:='dbo.TransferCost';
    DM.ADOStored.Parameters.Refresh;
    DM.ADOStored.Parameters.ParamValues['@username']:= main.UserNow;
    DM.ADOStored.Open;
    for i:=0 to DM.ADOStored.FieldCount-1 do
        DM.ADOStored.Fields[i].Alignment:=taCenter;
    DM.DataS.DataSet := DM.ADOStored;
    cxGrid1DBTableView1.DataController.DataSource    := DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName := 'id';
    cxGrid1DBTableView1Column2.DataBinding.FieldName := 'ActivityDate';
    cxGrid1DBTableView1Column3.DataBinding.FieldName := 'Price';
    cxGrid1DBTableView1Column4.DataBinding.FieldName := 'date';
    cxGrid1DBTableView1Column5.DataBinding.FieldName := 'name';
    cxGrid1DBTableView1Column6.DataBinding.FieldName := 'userid';
    cxGrid1DBTableView1Column7.DataBinding.FieldName := 'state';
end;

procedure TTransferCQ.cxButton1Click(Sender: TObject);
begin
    Close;
end;

procedure TTransferCQ.FormShow(Sender: TObject);
var
    I : integer;
begin
    DM.FillCombo(cxComboBox2,cxComboBox1,'code','userid','users','','Code,userid');
    DM.FillCombo(cxComboBox6,cxComboBox5,'code','name','Acounts','','code,name');
    for i :=0 to cxComboBox1.Properties.Items.Count-1 do
    begin
        cxComboBox1.ItemIndex := i;
        if cxComboBox1.text=main.UserNow then
        begin
           cxComboBox1.Properties.Items.Delete(i);
           Break;
        end;
    end;
    RefreshGrid();
end;

procedure TTransferCQ.cxComboBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxRadioButton1.Checked:=True;
    cxComboBox2.ItemIndex:=cxComboBox1.ItemIndex;
end;

procedure TTransferCQ.cxComboBox2PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox1.ItemIndex:=cxComboBox2.ItemIndex;
end;

procedure TTransferCQ.cxButton2Click(Sender: TObject);
begin
    if DM.ADORun.RecordCount < 0 then
       exit;
       
    if cxRadioButton1.Checked=true then
    begin
        if DM.GetAlarm(cxComboBox1,'ÕÏæÞÏÇÑ ÑÇ ÇäÊÎÇÈ ˜äíÏ')=False then
           exit;

        DM.ADOStored.First;
        While not DM.ADOStored.Eof do
        begin
            RecSelect := DM.ADOStored.FieldValues['id'];
            AC_CE := InttoStr(DM.ADOStored.FieldValues['Ccode']);
            if DM.ADOStored.FieldValues['state']='ÏÑíÇÝÊí' then
                   AC_Field:='AC_CR'
               else
                   AC_Field:='AC_CS';
            DM.Update('Cach','linkto='+QuotedStr(cxComboBox1.Text),'id=' + inttostr(RecSelect));

            DM.insert('Cach','linkfrom,userid,ActivityDate,'+AC_Field,QuotedStr(main.UserNow) + ',' +
                                                                      QuotedStr(cxComboBox1.Text) + ',' +
                                                                      QuotedStr(main.DateNow) + ',' +
                                                                      AC_CE);
            DM.ADOStored.Next;
        end;
        RecSelect:=0;
        RefreshGrid();
    end;

    if cxRadioButton3.Checked=true then
    begin
        if DM.GetAlarm(cxComboBox5,'äÇã ÈÇä˜ ÑÇ ÇäÊÎÇÈ ˜äíÏ')=False then
           exit;

        DM.ADOStored.First;
        While not DM.ADOStored.Eof do
        begin
            RecSelect := DM.ADOStored.FieldValues['id'];
            DM.Update('Cach','linkto='+QuotedStr(cxComboBox6.Text) + ',Deliverbank='+QuotedStr(cxComboBox6.Text),'id='+inttostr(RecSelect));
            DM.ADOStored.Next;
        end;
        RecSelect:=0;
        RefreshGrid();
    end;
    Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(Main.UserNow,main.DateNow));
end;

procedure TTransferCQ.cxComboBox5PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxRadioButton3.Checked:=True;
    cxComboBox6.ItemIndex:=cxComboBox5.ItemIndex;
end;

procedure TTransferCQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Main.dxBarLargeButton22.Enabled:=True;
end;

end.
