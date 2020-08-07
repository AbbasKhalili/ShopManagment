unit frmTransferQuch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, dxSkinsCore, dxSkinsDefaultPainters, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxLookAndFeelPainters, StdCtrls, cxRadioGroup, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxContainer, cxGroupBox, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TTransferQuch = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    cxComboBox1: TcxComboBox;
    cxComboBox2: TcxComboBox;
    cxComboBox3: TcxComboBox;
    cxComboBox4: TcxComboBox;
    cxComboBox5: TcxComboBox;
    cxComboBox6: TcxComboBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton3: TcxRadioButton;
    procedure FormShow(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox5PropertiesEditValueChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
       RecSelect : integer;
       UserSel,AC_QE : string;
  public
       procedure RefreshGrid();
  end;

var
  TransferQuch: TTransferQuch;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TTransferQuch.RefreshGrid();
begin
    DM.ADORun.close;
    DM.ADORun.CommandText :='Select C.id,C.userid,C.ActivityDate,QR.date,QR.cost,QR.code QRcode,CU.name,QR.serial,B.name bankname,QR.state ' +
                            ' FROM Cach C Inner join QuchResive QR on C.AC_QR=QR.code ' +
                            '             Inner join Customer CU on QR.buyer=CU.code ' +
					                  '             Inner join Banks B on QR.bank=B.code ' +
                            ' Where (C.userid='+QuotedStr(main.UserNow)+' OR C.linkfrom=C.userid) and C.linkto is null AND C.DeliverPerson is null AND C.DeliverBank is null';
    DM.ADORun.Open;
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource    := DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName := 'id';
    cxGrid1DBTableView1Column2.DataBinding.FieldName := 'ActivityDate';
    cxGrid1DBTableView1Column3.DataBinding.FieldName := 'cost';
    cxGrid1DBTableView1Column4.DataBinding.FieldName := 'date';
    cxGrid1DBTableView1Column5.DataBinding.FieldName := 'name';
    cxGrid1DBTableView1Column6.DataBinding.FieldName := 'userid';
    cxGrid1DBTableView1Column7.DataBinding.FieldName := 'serial';
    cxGrid1DBTableView1Column8.DataBinding.FieldName := 'bankname';
    cxGrid1DBTableView1Column9.DataBinding.FieldName := 'state';
end;

procedure TTransferQuch.FormShow(Sender: TObject);
var
    I : integer;
begin
    DM.FillCombo(cxComboBox2,cxComboBox1,'code','userid','users','','Code,userid');
    DM.FillCombo(cxComboBox4,cxComboBox3,'code','name','Customer','','code,name');
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

procedure TTransferQuch.cxComboBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxRadioButton1.Checked:=true;
    cxComboBox2.ItemIndex:=cxComboBox1.ItemIndex;
end;

procedure TTransferQuch.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    RecSelect := DM.ADORun.FieldValues['id'];
    UserSel := DM.ADORun.FieldValues['userid'];
    AC_QE := InttoStr(DM.ADORun.FieldValues['QRcode']);
end;

procedure TTransferQuch.cxButton2Click(Sender: TObject);
begin
    if Recselect = 0 then
    begin
        MessageDlg('ÇÈÊÏÇ ÊÑÇ˜äÔí ÑÇ ÇäÊÎÇÈ ˜äíÏ ÓÓ Úãá ÇäÊÞÇá ÑÇ ÇäÌÇã ÏåíÏ',mtInformation,[mbOK],0);
        exit;
    end;

    if cxRadioButton1.Checked=true then
    begin
        if cxComboBox1.Text='' then
        begin
            MessageDlg('ÕäÏæÞ ÏÇÑ ÑÇ ÇäÊÎÇÈ ˜äíÏ',mtInformation,[mbOK],0);
            cxComboBox1.SetFocus;
            exit;
        end;
        if Recselect > 0 then
        begin
            DM.Update('Cach','linkto='+QuotedStr(cxComboBox1.Text),'id='+inttostr(RecSelect));
            DM.insert('Cach','linkfrom,userid,ActivityDate,AC_QR',QuotedStr(main.UserNow) + ',' +
                                                                  QuotedStr(cxComboBox1.Text) + ',' +
                                                                  QuotedStr(main.DateNow) + ',' +
                                                                  AC_QE);
            RecSelect:=0;
            RefreshGrid();
        end;
    end;

    if cxRadioButton2.Checked=true then
    begin
        if cxComboBox3.Text='' then
        begin
            MessageDlg('äÇã ÔÎÕ ÑÇ ÇäÊÎÇÈ ˜äíÏ',mtInformation,[mbOK],0);
            cxComboBox3.SetFocus;
            exit;
        end;
        if Recselect > 0 then
        begin
            DM.Update('Cach','linkto='+QuotedStr(cxComboBox4.Text) + ',DeliverPerson='+QuotedStr(cxComboBox4.Text),'id='+inttostr(RecSelect));
            RecSelect:=0;
            RefreshGrid();
        end;
    end;

    if cxRadioButton3.Checked=true then
    begin
        if cxComboBox5.Text='' then
        begin
            MessageDlg('äÇã ÈÇä˜ ÑÇ ÇäÊÎÇÈ ˜äíÏ',mtInformation,[mbOK],0);
            cxComboBox5.SetFocus;
            exit;
        end;
        if Recselect > 0 then
        begin
            DM.Update('Cach','linkto='+QuotedStr(cxComboBox6.Text) + ',Deliverbank='+QuotedStr(cxComboBox6.Text),'id='+inttostr(RecSelect));
            RecSelect:=0;
            RefreshGrid();
        end;
    end;
    Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(Main.UserNow,main.DateNow));
end;

procedure TTransferQuch.cxButton1Click(Sender: TObject);
begin
    Close;
end;

procedure TTransferQuch.cxComboBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxRadioButton2.Checked:=true;
    cxComboBox4.ItemIndex := cxComboBox3.ItemIndex;
end;

procedure TTransferQuch.cxComboBox5PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxRadioButton3.Checked:=true;
    cxComboBox6.ItemIndex := cxComboBox5.ItemIndex;
end;

procedure TTransferQuch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Main.dxBarLargeButton21.Enabled:=True;
end;

end.
