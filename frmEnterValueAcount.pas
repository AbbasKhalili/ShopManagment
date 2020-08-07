unit frmEnterValueAcount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ADODB, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLabel, cxContainer, cxGroupBox, StdCtrls, cxButtons,
  cxImage, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TEnterValueAcount = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxComboBox3: TcxComboBox;
    cxComboBox1: TcxComboBox;
    cxMaskEdit1: TcxMaskEdit;
    cxMaskEdit2: TcxMaskEdit;
    cxMaskEdit3: TcxMaskEdit;
    cxTextEdit1: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel3: TcxLabel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxButton5: TcxButton;
    cxImage1: TcxImage;
    cxMaskEdit6: TcxMaskEdit;
    cxLabel12: TcxLabel;
    cxButton12: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxMaskEdit2PropertiesChange(Sender: TObject);
    procedure cxMaskEdit3PropertiesChange(Sender: TObject);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxMaskEdit1Exit(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxMaskEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton12Click(Sender: TObject);
  private
        RecSelect , NewRec : Integer;
        DS : TDataSource;
        procedure EmptyTextBoxs();
        procedure RefreshGrid();
  public

  end;

var
  EnterValueAcount: TEnterValueAcount;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TEnterValueAcount.EmptyTextBoxs();
begin
    cxTextEdit1.Text:='';
    cxMaskEdit1.Text:='';
    cxMaskEdit2.Text:='0';
    cxMaskEdit3.Text:='0';
    NewRec:=0;
end;

procedure TEnterValueAcount.RefreshGrid();
begin
    if cxComboBox1.Text='' then
       Exit;
    DM.Select('Deb_Cred','[ID],[date],[desc],debtor,creditor,Tarafhesab','TarafHesab='+cxComboBox1.Text + ' AND Manual='+QuotedStr('1'));
    DS.DataSet := DM.ADORun;
    DS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource:=DS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName:='ID';
    cxGrid1DBTableView1Column2.DataBinding.FieldName:='Date';
    cxGrid1DBTableView1Column3.DataBinding.FieldName:='debtor';
    cxGrid1DBTableView1Column4.DataBinding.FieldName:='creditor';
    cxGrid1DBTableView1Column5.DataBinding.FieldName:='Desc';
end;

procedure TEnterValueAcount.FormShow(Sender: TObject);
begin
    DM.FillCombo(cxComboBox1,cxComboBox3,'SN3','name','StorageL3','','SN3,name');
    DS := TDataSource.Create(self);
    cxButton1.SetFocus;
end;

procedure TEnterValueAcount.cxButton1Click(Sender: TObject);
begin
    EmptyTextBoxs();
    cxMaskEdit1.Text := Main.DateNow;
    cxTextEdit1.Text := '«›  «ÕÌÂ';
    cxTextEdit1.SetFocus;
    cxButton2.Default:=True;
    NewRec:=1;
end;

procedure TEnterValueAcount.cxButton2Click(Sender: TObject);
begin
    If Newrec<=0 then
       Exit;

    if dm.GetAlarm(cxComboBox3,'«» œ« ÿ—› Õ”«» —« «‰ Œ«» ò‰Ìœ')=False then
       Exit;
    if dm.GetAlarm(cxMaskEdit1,' «—ÌŒ —« Ê«—œ ò‰Ìœ')=False then
       Exit;
    if (cxMaskEdit2.Text='') and (cxMaskEdit3.Text='') then
    begin
        MessageDlg('„Ì“«‰ »œÂò«—Ì Ì« »” «‰ò«—Ì —« „‘Œ’ ò‰Ìœ',mtWarning,[mbOK],0);
        cxMaskEdit2.SetFocus;
        Exit;
    end;
    if cxMaskEdit2.Text <> '' then
       DM.insert('Deb_Cred','Code_Save,[date],[desc],debtor,creditor,Remain_D,TarafHesab,Manual',QuotedStr('0') + ',' +
                                                                                              QuotedStr(cxMaskEdit1.Text) + ',' +
                                                                                              QuotedStr(cxTextEdit1.Text) + ',' +
                                                                                              cxMaskEdit2.Text + ',' +
                                                                                              cxMaskEdit3.Text + ',' +
                                                                                              '0,' +
                                                                                              cxComboBox1.Text + ',' +
                                                                                              QuotedStr('1'))
       else if cxMaskEdit3.Text <> '' then
       DM.insert('Deb_Cred','Code_Save,[date],[desc],debtor,creditor,Remain_D,TarafHesab,Manual',QuotedStr('0') + ',' +
                                                                                              QuotedStr(cxMaskEdit1.Text) + ',' +
                                                                                              QuotedStr(cxTextEdit1.Text) + ',' +
                                                                                              cxMaskEdit2.Text + ',' +
                                                                                              cxMaskEdit3.Text + ',0,' +
                                                                                              cxComboBox1.Text + ',' +
                                                                                              QuotedStr('1'));
    EmptyTextBoxs();
    RefreshGrid;
    cxButton2.Default:=False;
end;

procedure TEnterValueAcount.cxMaskEdit2PropertiesChange(Sender: TObject);
begin
    cxMaskEdit3.Text:='0';
    if cxMaskEdit2.Text='' then
    begin
        cxMaskEdit2.Text:='0';
        cxMaskEdit2.SelectAll;
    end;
end;

procedure TEnterValueAcount.cxMaskEdit3PropertiesChange(Sender: TObject);
begin
    cxMaskEdit2.Text:='0';
    if cxMaskEdit3.Text='' then
    begin
        cxMaskEdit3.Text:='0';
        cxMaskEdit3.SelectAll;
    end;
end;

procedure TEnterValueAcount.cxComboBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox1.ItemIndex:=cxComboBox3.ItemIndex;
    RefreshGrid;
end;

procedure TEnterValueAcount.cxMaskEdit1Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit1);
end;

procedure TEnterValueAcount.cxButton3Click(Sender: TObject);
begin
    if RecSelect > 0 then
    begin
        if dm.GetAlarm(cxMaskEdit1,' «—ÌŒ —« Ê«—œ ò‰Ìœ')=False then
           Exit;

        if (cxMaskEdit2.Text='') and (cxMaskEdit3.Text='') then
        begin
            MessageDlg('„Ì“«‰ »œÂò«—Ì Ì« »” «‰ò«—Ì —« „‘Œ’ ò‰Ìœ',mtWarning,[mbOK],0);
            cxMaskEdit2.SetFocus;
            Exit;
        end;
        DM.Update('Deb_Cred','[date]='   + QuotedStr(cxMaskEdit1.Text) + ',' +
                             '[desc]='   + QuotedStr(cxTextEdit1.Text) + ',' +
                             'debtor='   + cxMaskEdit2.Text + ',' +
                             'creditor=' + cxMaskEdit3.Text,' ID='+ inttostr(RecSelect));
        EmptyTextBoxs();
        RefreshGrid;
    end;
end;

procedure TEnterValueAcount.cxButton4Click(Sender: TObject);
begin
    if RecSelect > 0 then
    begin
        DM.Delete('Deb_Cred','ID='+ inttostr(RecSelect));
        RefreshGrid();
        EmptyTextBoxs();
    end;
end;

procedure TEnterValueAcount.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    EmptyTextBoxs();
    RecSelect := DS.DataSet.FieldValues['ID'];
    if (DS.DataSet.FieldValues['Desc']<>'') and (DS.DataSet.FieldValues['Desc']<>null) then
       cxTextEdit1.Text := DS.DataSet.FieldValues['Desc'];
    cxMaskEdit1.Text := DS.DataSet.FieldValues['Date'];
    cxMaskEdit2.Text := DS.DataSet.FieldValues['debtor'];
    cxMaskEdit3.Text := DS.DataSet.FieldValues['creditor'];
end;

procedure TEnterValueAcount.cxMaskEdit6KeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key=#13 then
       cxButton12.Click;
end;

procedure TEnterValueAcount.cxButton12Click(Sender: TObject);
begin
    if cxComboBox1.Text='' then
       Exit;
    DM.FixYear13(cxMaskEdit6);
    DM.Select('Deb_Cred','[ID],[date],[desc],debtor,creditor,Tarafhesab','TarafHesab='+cxComboBox1.Text + ' AND Manual='+QuotedStr('1')+' AND [date] Like '+QuotedStr(cxMaskEdit6.Text+'%'));
    DS.DataSet := DM.ADORun;
    DS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource:=DS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName:='ID';
    cxGrid1DBTableView1Column2.DataBinding.FieldName:='Date';
    cxGrid1DBTableView1Column3.DataBinding.FieldName:='debtor';
    cxGrid1DBTableView1Column4.DataBinding.FieldName:='creditor';
    cxGrid1DBTableView1Column5.DataBinding.FieldName:='Desc';
end;

end.
