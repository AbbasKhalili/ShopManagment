unit frmKalaTransfer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ADODB, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, ComCtrls, cxListView, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxControls, cxContainer, cxEdit, cxLabel,
  StdCtrls, cxButtons, cxImage, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TKalaTransfer = class(TForm)
    cxButton1: TcxButton;
    cxLabel2: TcxLabel;
    cxComboBox3: TcxComboBox;
    cxComboBox4: TcxComboBox;
    cxButton2: TcxButton;
    cxListView1: TcxListView;
    cxListView2: TcxListView;
    cxImage3: TcxImage;
    cxTextEdit1: TcxMaskEdit;
    cxLabel1: TcxLabel;
    cxButton3: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxListView1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure cxButton3Click(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
       ADO1,ADO2 : TADODataSet;
       CodeKala ,NameKala : String;
  public
       procedure RefreshGridTop();
       procedure RefreshGridDown();
  end;

var
  KalaTransfer: TKalaTransfer;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TKalaTransfer.RefreshGridTop();
Var
    Count : Integer;
begin
    cxListView1.Items.Clear;
    ADO1.Close;
    ADO1.CommandText :=' SELECT s.storageNO,s3.[name] anbarname,s.code,s.MinExists,s.RequestPoint,k.code CodeKalaUser,k.[name] namekala' +
                       ' FROM Storage s' +
                       ' inner join kala k on s.code=k.codekala' +
                       ' inner join StorageL3 s3 on s.storageNO=s3.SN3' +
                       ' where k.code like ' + QuotedStr(cxTextEdit1.Text + '%') +
                       ' order by k.code' ;
    ADO1.Open;
    if ADO1.RecordCount > 0 then
    begin
        While Not ADO1.Eof Do
        begin
            Count := 0;
            DM.ADOStored.Close;
            DM.ADOStored.Parameters.Clear;
            DM.ADOStored.ProcedureName:='dbo.CountKala_Transfer';
            DM.ADOStored.Parameters.Refresh;
            DM.ADOStored.Parameters.ParamValues['@SNO']:= ADO1.FieldValues['storageNO'];
            DM.ADOStored.Parameters.ParamValues['@Kcode']:= ADO1.FieldValues['code'];
            DM.ADOStored.ExecProc;
            Count := DM.ADOStored.Parameters.ParamValues['@RETURN_VALUE'];
            with cxListView1.Items.Add do
            begin
                Caption := FloatToStr(ADO1.FieldValues['RequestPoint']);
                SubItems.Insert(0,FloatToStr(ADO1.FieldValues['MinExists']));
                SubItems.Insert(1,IntToStr(Count));
                SubItems.Insert(2,ADO1.FieldValues['namekala']);
                SubItems.Insert(3,IntToStr(ADO1.FieldValues['Code']));
                SubItems.Insert(4,ADO1.FieldValues['CodeKalaUser']);
                SubItems.Insert(5,ADO1.FieldValues['anbarname']);
                SubItems.Insert(6,ADO1.FieldValues['storageNO']);
            end;
            ADO1.Next;
        end;
    end;
end;

procedure TKalaTransfer.RefreshGridDown();
Var
    Count : Integer;
begin
    cxListView2.Items.Clear;
    ADO2.Close;
    ADO2.CommandText:='SELECT s.storageNO,s3.[name] anbarname,s.code,s.MinExists,s.RequestPoint,k.code CodeKalaUser,k.[name] namekala ' +
                      'FROM Storage s ' +
                      'inner join kala k on s.code=k.codekala ' +
                      'inner join StorageL3 s3 on s.storageNO=s3.SN3 ' +
                      'Where s.storageNO=' + cxComboBox4.Text;
    ADO2.Open;
    if ADO2.RecordCount>0 then
    begin
        While Not ADO2.Eof Do
        begin
            Count := 0;
            DM.ADOStored.Close;
            DM.ADOStored.Parameters.Clear;
            DM.ADOStored.ProcedureName:='dbo.CountKala_Transfer';
            DM.ADOStored.Parameters.Refresh;
            DM.ADOStored.Parameters.ParamValues['@SNO']:= strtoint(cxComboBox4.Text);
            DM.ADOStored.Parameters.ParamValues['@Kcode']:= ADO2.FieldValues['code'];
            DM.ADOStored.ExecProc;
            Count := DM.ADOStored.Parameters.ParamValues['@RETURN_VALUE'];
            with cxListView2.Items.Add do
            begin
                Caption := FloatToStr(ADO2.FieldValues['RequestPoint']);
                SubItems.Insert(0,FloatToStr(ADO2.FieldValues['MinExists']));
                SubItems.Insert(1,IntToStr(Count));
                SubItems.Insert(2,ADO2.FieldValues['namekala']);
                SubItems.Insert(3,IntToStr(ADO2.FieldValues['Code']));
                SubItems.Insert(4,ADO2.FieldValues['CodeKalaUser']);
                SubItems.Insert(5,ADO2.FieldValues['anbarname']);
                SubItems.Insert(6,ADO2.FieldValues['storageNO']);
            end;
            ADO2.Next;
        end;
    end;
end;

procedure TKalaTransfer.FormShow(Sender: TObject);
begin
    ADO1 := TADODataSet.Create(self);
    ADO1.Connection := DM.Connection;
    ADO2 := TADODataSet.Create(self);
    ADO2.Connection := DM.Connection;
    DM.FillCombo(cxComboBox4,cxComboBox3,'SN3','name','StorageL3','','SN3,name');
    if cxComboBox3.Properties.Items.Count >0 then
       cxComboBox3.ItemIndex :=0;
end;

procedure TKalaTransfer.cxComboBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox4.ItemIndex := cxComboBox3.ItemIndex;
    RefreshGridDown;
end;

procedure TKalaTransfer.cxComboBox4PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox3.ItemIndex := cxComboBox4.ItemIndex;
end;

procedure TKalaTransfer.cxButton1Click(Sender: TObject);
begin
    Close;
end;

procedure TKalaTransfer.cxButton2Click(Sender: TObject);
begin
    if cxComboBox3.ItemIndex<0 then
    begin
        MessageDlg('ÇäÈÇÑ ãÞÕÏ ÑÇ ÇäÊÎÇÈ ˜äíÏ',mtInformation,[mbOK],0);
        cxComboBox3.SetFocus;
        exit;
    end;

    if MessageDlg('ÚãáíÇÊ ÇäÊÞÇá ˜ÇáÇ ÈÇ äÇã ' + NameKala + ' Èå ÇäÈÇÑ  ' + cxComboBox3.Text + ' ÇäÌÇã ÔæÏ¿ ',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
       begin
          if CodeKala<>'' then
          begin
              DM.Update('InvoiceSellDetials','StorageNO='+cxComboBox4.Text,'code='+CodeKala);
              DM.Update('InvoiceBackDetials','StorageNO='+cxComboBox4.Text,'code='+CodeKala);

              DM.Update('InvoiceBuyDetials ','StorageNO='+cxComboBox4.Text,'code='+CodeKala);
              //DM.Update('InvoiceBuy ','seller='+cxComboBox4.Text,'code='+CodeKala);

              DM.Update('InvoiceBackStorageDetials ','StorageNO='+cxComboBox4.Text,'code='+CodeKala);
              //DM.Update('InvoiceBackStorage ','seller='+cxComboBox4.Text,'code='+CodeKala);

              DM.Update('Storage','StorageNO='+cxComboBox4.Text,'code='+CodeKala);
              CodeKala:='';
              RefreshGridTOP;
              RefreshGridDown;
          end;
       end
       else
       Abort;
end;

procedure TKalaTransfer.cxListView1SelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
begin
    if cxListView1.ItemIndex >= 0 then
    begin
       CodeKala := cxListView1.Items.Item[cxListView1.ItemIndex].SubItems.Strings[3];
       NameKala := cxListView1.Items.Item[cxListView1.ItemIndex].SubItems.Strings[2];
    end;
end;

procedure TKalaTransfer.cxButton3Click(Sender: TObject);
begin
    RefreshGridTop();
end;

procedure TKalaTransfer.cxTextEdit1PropertiesChange(Sender: TObject);
begin
   if Trim(cxTextEdit1.Text)<>'' then
      cxButton3.Default:=True
      else
      cxButton3.Default:=False;
end;

procedure TKalaTransfer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Main.dxBarLargeButton20.Enabled:=True;
    ADO1.Free;
    ADO2.Free;
end;

end.
