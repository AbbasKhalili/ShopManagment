unit frmKala;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ADODB,frxClass, frmTMP, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMaskEdit, cxTextEdit,
  cxDropDownEdit, cxLabel, StdCtrls, cxContainer, cxGroupBox, cxButtons,
  cxRadioGroup, cxImage, cxCheckBox, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter;

Const
     TableName = 'kala';
     FieldName = 'Code,groupcode,name,unit,saleprice,buyprice,persent,DateSave,TimeSave,UserSave';
type

  InvoiceType = (in_none , IN_SALE , IN_BUY , IN_BACK , IN_BACKS);

  TKala = class(TTMP)
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxComboBox1: TcxComboBox;
    cxTextEdit1: TcxTextEdit;
    cxComboBox4: TcxComboBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxMaskEdit1: TcxMaskEdit;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxMaskEdit2: TcxMaskEdit;
    cxMaskEdit3: TcxMaskEdit;
    cxButton7: TcxButton;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxTextEdit5: TcxMaskEdit;
    cxComboBox7: TcxComboBox;
    cxComboBox8: TcxComboBox;
    cxLabel9: TcxLabel;
    cxComboBox3: TcxComboBox;
    cxComboBox2: TcxComboBox;
    cxLabel5: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxMaskEdit4: TcxMaskEdit;
    cxLabel8: TcxLabel;
    cxMaskEdit5: TcxMaskEdit;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxComboBox5: TcxComboBox;
    cxComboBox6: TcxComboBox;
    cxButton11: TcxButton;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxImage1: TcxImage;
    cxLabel12: TcxLabel;
    cxMaskEdit6: TcxMaskEdit;
    cxMaskEdit7: TcxMaskEdit;
    cxLabel13: TcxLabel;
    cxButton8: TcxButton;
    cxButton12: TcxButton;
    cxCheckBox1: TcxCheckBox;
    procedure FormShow(Sender: TObject);
    procedure cxComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxTextEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton7Click(Sender: TObject);
    procedure cxTextEdit5PropertiesChange(Sender: TObject);
    procedure cxMaskEdit1Enter(Sender: TObject);
    procedure cxMaskEdit1Exit(Sender: TObject);
    procedure cxComboBox8PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox7PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxComboBox5PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxMaskEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure cxMaskEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure cxComboBox5KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton12Click(Sender: TObject);
    procedure cxMaskEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton8Click(Sender: TObject);
    procedure cxMaskEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
        RecSelect ,NewKala : integer;
        ADO : TADODataSet;
        procedure EmptyTextBox();
        procedure RefreshGrid();
        Procedure CountKala(Kind:Integer);
        procedure FindKala(Swhere:string);
  public
        InType : InvoiceType;
  end;

var
  Kala: TKala;

implementation

uses frmMain, frmDefineCoding, frmDM, frmInvoiceSell, frmInvoiceBack,
  frmInvoiceBuy, frmInvoiceBackStorage;

{$R *.dfm}

procedure TKala.EmptyTextBox();
begin
    cxTextEdit1.text:='';
   // cxTextEdit5.text:='';
    cxMaskEdit1.text:='';
    cxMaskEdit2.text:='';
    cxMaskEdit3.text:='';
    cxComboBox4.ItemIndex:=-1;
    cxComboBox1.ItemIndex:=-1;
   // cxComboBox2.ItemIndex:=-1;
    //cxComboBox8.ItemIndex:=-1;
    RecSelect:=0;
    NewKala:=0;
end;

procedure TKala.RefreshGrid();
begin
    if cxComboBox7.ItemIndex<0 then
       Exit;
    DM.Select('kala k,Storage s,units u,Level2 l','s.storageno,l.level2,k.codekala,k.code,k.name,k.saleprice,k.buyprice,k.persent,u.unitname','k.codekala=s.code AND k.unit=u.code AND l.codeL2=k.groupcode AND s.storageNO='+cxComboBox7.Text+'  order by k.code');
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource:=DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName:='code';
    cxGrid1DBTableView1Column2.DataBinding.FieldName:='name';
    cxGrid1DBTableView1Column3.DataBinding.FieldName:='persent';
    cxGrid1DBTableView1Column4.DataBinding.FieldName:='unitname';
    cxGrid1DBTableView1Column5.DataBinding.FieldName:='buyprice';
    cxGrid1DBTableView1Column6.DataBinding.FieldName:='saleprice';
    cxGrid1DBTableView1Column7.DataBinding.FieldName:='codekala';
end;

procedure TKala.FormShow(Sender: TObject);
begin
    DM.BTNState(cxButton2,cxButton3,cxButton4,cxButton5,cxButton6,main.Permission[9],main.Permission[9],main.Permission[10],main.Permission[11],'1');
    ADO := TADODataSet.Create(Self);
    ADO.Connection:= DM.Connection;
    DM.FillCombo(cxComboBox3,cxComboBox2,'codeL2','Level2','Level2','','CodeL2,Level2');
    DM.FillCombo(cxComboBox4,cxComboBox1,'code','unitname','Units','','code,unitname');
    DM.FillCombo(cxComboBox7,cxComboBox8,'SN3','name','StorageL3','','SN3,name');
    DM.FillCombo(cxComboBox6,cxComboBox5,'SN3','name','StorageL3','','SN3,name');
    cxButton2.SetFocus;
end;

procedure TKala.cxComboBox2PropertiesEditValueChanged(Sender: TObject);
begin
    cxComboBox3.ItemIndex := cxComboBox2.ItemIndex;
end;

procedure TKala.cxComboBox3PropertiesEditValueChanged(Sender: TObject);
begin
    cxComboBox2.ItemIndex := cxComboBox3.ItemIndex;
end;

procedure TKala.cxButton2Click(Sender: TObject);
begin
    IF NewKala = 0 THEN
    begin
        cxButton3.Default := True;
        EmptyTextBox;
        NewKala := 1;
        cxComboBox1.Text:='⁄œœ';
        cxMaskEdit1.SetFocus;
    end;
end;

procedure TKala.cxButton3Click(Sender: TObject);
Var
    ID : String;
begin
    IF NewKala > 0 THEN
    begin
       IF DM.GetAlarm(cxMaskEdit1,'òœ ò«·« —« Ê«—œ ò‰Ìœ')    = False THEN
          Exit;
       IF DM.GetCount('Kala','code','code='+QuotedStr(cxMaskEdit1.Text)) > 0 THEN
       begin
           MessageDlg('ò«·«ÌÌ »« «Ì‰ òœ ﬁ»·« œ— ”Ì” „ À»  ‘œÂ «” ',mtInformation,[mbOK],0);
           cxMaskEdit1.SetFocus;
           Exit;
       end;
       IF DM.GetAlarm(cxTextEdit1,'‰«„ ò«·« —« Ê«—œ ò‰Ìœ')    = False THEN
          Exit;
       IF DM.GetAlarm(cxComboBox2,'ê—ÊÂ ò«·« —« «‰ Œ«» ò‰Ìœ') = False THEN
          Exit;
       IF DM.GetAlarm(cxComboBox1,'Ê«Õœ ò«·« —« «‰ Œ«» ò‰Ìœ') = False THEN
          Exit;

       IF Strtoint(cxMaskEdit2.Text) > Strtoint(cxMaskEdit3.Text) THEN
       begin
           MessageDlg('ﬁÌ„  Œ—Ìœ »Ì‘ — «“ ﬁÌ„  ›—Ê‘ „Ì »«‘œ',mtInformation,[mbOK],0);
           Exit;
       end;
       If DM.GetAlarm(cxTextEdit5,'œ—’œ ”Êœ —« „‘Œ’ ò‰Ìœ')=False THEN
          Exit;
       If StrToInt(cxTextEdit5.Text)>100  THEN
       Begin
           MessageDlg('„Ì“«‰ œ—’œ ”Êœ Ê«—œ ‘œÂ „⁄ »— ‰„Ì »«‘œ',mtInformation,[mbOK],0);
           Exit;
       End;

              //'Code,groupcode,name,unit,saleprice,buyprice,persent,DateSave,TimeSave,UserSave';
       Dm.insert(TableName,FieldName,QuotedStr(cxMaskEdit1.text) + ',' +
                                     QuotedStr(cxComboBox3.text) + ',' +
                                     QuotedStr(cxTextEdit1.text) + ',' +
                                     cxComboBox4.text + ',' +
                                     cxMaskEdit3.text + ',' +
                                     cxMaskEdit2.text + ',' +
                                     cxTextEdit5.text + ',' +
                                     QuotedStr(Main.DateNow) + ',' +
                                     QuotedStr(Main.TimeNow) + ',' +
                                     QuotedStr(Main.UserNow));

       ADO.Close;
       ADO.CommandText:='SELECT MAX(Codekala) AS X from kala';
       ADO.Open;
       ID:=ADO.Fields[0].AsString;
       ADO.Close;

       IF cxComboBox8.ItemIndex>=0 THEN
       begin
           DM.insert('Storage','StorageNO,Groupcode,code,CurrentExists,MinExists,RequestPoint'+
                     ',DateSave,TimeSave,Usersave,DocNO,Alarm',cxComboBox7.Text + ',' +
                                                               cxComboBox3.Text + ',' +
                                                               ID + ',0,0,0,' +
                                                               QuotedStr(main.DateNow) + ',' +
                                                               QuotedStr(main.TimeNow) + ',' +
                                                               QuotedStr(main.UserNow) + ',' +
                                                               inttostr(main.DocNumber) + ',1');
       end;
       RefreshGrid();
       EmptyTextBox();

       Main.FillQuickFaktor();
       
       cxButton2.SetFocus;

       Case InType OF
           in_none  : begin Abort; end;
           IN_SALE  : BEGIN
                          InvoiceSell.cxComboBox6.Properties.Items.Clear;
                          InvoiceSell.cxComboBox5.Properties.Items.Clear;
                          InvoiceSell.cxComboBox2.Properties.Items.Clear;
                          InvoiceSell.cxComboBox4.Properties.Items.Clear;
                          InvoiceSell.cxComboBox7.Properties.Items.Clear;
                          InvoiceSell.comSalePrice.Properties.Items.Clear;
                          InvoiceSell.ComBuyPrice.Properties.Items.Clear;
                          InvoiceSell.ComPersent.Properties.Items.Clear;
                          DM.ADOReport.Close;
                          DM.ADOReport.CommandText:=' select s.storageno SNO,s3.[name] Sname,s.Code Scode,k.Code Ucode,k.[name] Namekala,K.saleprice saleprice,K.buyprice buyprice,k.persent ' +
                                                    ' from Storage s,StorageL3 s3,kala k ' +
                                                    ' where s3.sn3=s.storageno and s.code=k.codekala order by k.code';
                          DM.ADOReport.Open;
                          IF DM.ADOReport.RecordCount>0 THEN
                          begin
                              While Not DM.ADOReport.Eof DO
                              begin
                                  InvoiceSell.cxComboBox6.Properties.Items.Add(DM.ADOReport.FieldValues['SNO']);
                                  InvoiceSell.cxComboBox5.Properties.Items.Add(DM.ADOReport.FieldValues['Sname']);
                                  InvoiceSell.cxComboBox2.Properties.Items.Add(DM.ADOReport.FieldValues['Scode']);
                                  InvoiceSell.cxComboBox4.Properties.Items.Add(DM.ADOReport.FieldValues['Namekala']);
                                  InvoiceSell.cxComboBox7.Properties.Items.Add(DM.ADOReport.FieldValues['Ucode']);
                                  InvoiceSell.comSalePrice.Properties.Items.Add(DM.ADOReport.FieldValues['saleprice']);
                                  InvoiceSell.ComBuyPrice.Properties.Items.Add(DM.ADOReport.FieldValues['buyprice']);
                                  InvoiceSell.ComPersent.Properties.Items.Add(DM.ADOReport.FieldValues['persent']);
                                  DM.ADOReport.Next;
                              end;
                          end;
                          DM.ADOReport.Close;
                      END;
//-------------------------------------------------------------------------------------------------
           IN_BUY   : BEGIN
                         IF InvoiceBuy.cxComboBox3.ItemIndex < 0 THEN
                             Exit;
                         InvoiceBuy.cxComboBox4.Properties.Items.Clear;
                         InvoiceBuy.cxComboBox5.Properties.Items.Clear;
                         InvoiceBuy.cxComboBox6.Properties.Items.Clear;
                         InvoiceBuy.cxComboBox7.Properties.Items.Clear;
                         InvoiceBuy.cxComboBox8.Properties.Items.Clear;
                         InvoiceBuy.cxComboBox2.Properties.Items.Clear;
                         InvoiceBuy.ComBuyPrice.Properties.Items.Clear;
                         InvoiceBuy.comSalePrice.Properties.Items.Clear;
                         InvoiceBuy.ComPersent.Properties.Items.Clear;
                         DM.ADOReport.Close;
                         DM.ADOReport.CommandText:=' select k.Groupcode,s.storageno SNO,s3.[name] Sname,s.Code Scode,k.Code Ucode,k.[name] Namekala,K.saleprice saleprice,K.buyprice buyprice,k.persent ' +
                                                   ' from Storage s,StorageL3 s3,kala k ' +
                                                   ' where s3.sn3=s.storageno and s.code=k.codekala and s.storageno='+InvoiceBuy.cxComboBox1.Text + ' order by k.code';
                         DM.ADOReport.Open;
                         IF DM.ADOReport.RecordCount > 0 THEN
                         begin
                             While Not DM.ADOReport.Eof DO
                             begin
                                 InvoiceBuy.cxComboBox8.Properties.Items.Add(DM.ADOReport.FieldValues['SNO']);
                                 InvoiceBuy.cxComboBox6.Properties.Items.Add(DM.ADOReport.FieldValues['Sname']);
                                 InvoiceBuy.cxComboBox7.Properties.Items.Add(DM.ADOReport.FieldValues['Ucode']);
                                 InvoiceBuy.cxComboBox4.Properties.Items.Add(DM.ADOReport.FieldValues['Namekala']);
                                 InvoiceBuy.cxComboBox5.Properties.Items.Add(DM.ADOReport.FieldValues['Groupcode']);
                                 InvoiceBuy.cxComboBox2.Properties.Items.Add(DM.ADOReport.FieldValues['Scode']);
                                 InvoiceBuy.comSalePrice.Properties.Items.Add(DM.ADOReport.FieldValues['saleprice']);
                                 InvoiceBuy.ComBuyPrice.Properties.Items.Add(DM.ADOReport.FieldValues['buyprice']);
                                 InvoiceBuy.ComPersent.Properties.Items.Add(DM.ADOReport.FieldValues['Persent']);
                                 DM.ADOReport.Next;
                             end;
                         end;
                         DM.ADOReport.close;
                      END;
//-------------------------------------------------------------------------------------------------
           IN_BACK  : BEGIN
                          InvoiceBack.cxComboBox6.Properties.Items.Clear;
                          InvoiceBack.cxComboBox5.Properties.Items.Clear;
                          InvoiceBack.cxComboBox2.Properties.Items.Clear;
                          InvoiceBack.cxComboBox4.Properties.Items.Clear;
                          InvoiceBack.cxComboBox7.Properties.Items.Clear;
                          InvoiceBack.comSalePrice.Properties.Items.Clear;
                          InvoiceBack.ComBuyPrice.Properties.Items.Clear;
                          InvoiceBack.ComPersent.Properties.Items.Clear;
                          DM.ADOReport.Close;
                          DM.ADOReport.CommandText:=' select s.storageno SNO,s3.[name] Sname,s.Code Scode,k.Code Ucode,k.[name] Namekala,K.saleprice saleprice,K.buyprice buyprice,k.Persent ' +
                                                    ' from Storage s,StorageL3 s3,kala k ' +
                                                    ' where s3.sn3=s.storageno and s.code=k.codekala order by k.code';
                          DM.ADOReport.Open;
                          IF DM.ADOReport.RecordCount>0 THEN
                          begin
                              While Not DM.ADOReport.Eof DO
                              begin
                                  InvoiceBack.cxComboBox6.Properties.Items.Add(DM.ADOReport.FieldValues['SNO']);
                                  InvoiceBack.cxComboBox5.Properties.Items.Add(DM.ADOReport.FieldValues['Sname']);
                                  InvoiceBack.cxComboBox2.Properties.Items.Add(DM.ADOReport.FieldValues['Scode']);
                                  InvoiceBack.cxComboBox4.Properties.Items.Add(DM.ADOReport.FieldValues['Namekala']);
                                  InvoiceBack.cxComboBox7.Properties.Items.Add(DM.ADOReport.FieldValues['Ucode']);
                                  InvoiceBack.comSalePrice.Properties.Items.Add(DM.ADOReport.FieldValues['saleprice']);
                                  InvoiceBack.ComBuyPrice.Properties.Items.Add(DM.ADOReport.FieldValues['buyprice']);
                                  InvoiceBack.ComPersent.Properties.Items.Add(DM.ADOReport.FieldValues['Persent']);
                                  DM.ADOReport.Next;
                              end;
                          end;
                          DM.ADOReport.close;
                      END;
//--------------------------------------------------------------------------------------------------
           IN_BACKS : BEGIN
                          IF InvoiceBackStorage.cxComboBox3.ItemIndex < 0 THEN
                             Exit;
                          InvoiceBackStorage.cxComboBox8.Properties.Items.Clear;
                          InvoiceBackStorage.cxComboBox6.Properties.Items.Clear;
                          InvoiceBackStorage.cxComboBox2.Properties.Items.Clear;
                          InvoiceBackStorage.cxComboBox4.Properties.Items.Clear;
                          InvoiceBackStorage.cxComboBox7.Properties.Items.Clear;
                          InvoiceBackStorage.ComBuyPrice.Properties.Items.Clear;
                          InvoiceBackStorage.comSalePrice.Properties.Items.Clear;
                          InvoiceBackStorage.ComPersent.Properties.Items.Clear;
                          DM.ADOReport.Close;
                          DM.ADOReport.CommandText:=' select s.storageno SNO,s3.[name] Sname,s.Code Scode,k.Code Ucode,k.[name] Namekala,K.saleprice saleprice,K.buyprice buyprice,k.Persent ' +
                                                    ' from Storage s,StorageL3 s3,kala k ' +
                                                    ' where s3.sn3=s.storageno and s.code=k.codekala and s.storageno='+InvoiceBackStorage.cxComboBox1.Text + ' order by k.code';
                          DM.ADOReport.Open;
                          IF DM.ADOReport.RecordCount > 0 THEN
                          begin
                              While Not DM.ADOReport.Eof DO
                              begin
                                  InvoiceBackStorage.cxComboBox8.Properties.Items.Add(DM.ADOReport.FieldValues['SNO']);
                                  InvoiceBackStorage.cxComboBox6.Properties.Items.Add(DM.ADOReport.FieldValues['Sname']);
                                  InvoiceBackStorage.cxComboBox2.Properties.Items.Add(DM.ADOReport.FieldValues['Scode']);
                                  InvoiceBackStorage.cxComboBox4.Properties.Items.Add(DM.ADOReport.FieldValues['Namekala']);
                                  InvoiceBackStorage.cxComboBox7.Properties.Items.Add(DM.ADOReport.FieldValues['Ucode']);
                                  InvoiceBackStorage.comSalePrice.Properties.Items.Add(DM.ADOReport.FieldValues['saleprice']);
                                  InvoiceBackStorage.ComBuyPrice.Properties.Items.Add(DM.ADOReport.FieldValues['buyprice']);
                                  InvoiceBackStorage.ComPersent.Properties.Items.Add(DM.ADOReport.FieldValues['Persent']);
                                  DM.ADOReport.Next;
                              end;
                          end;
                          DM.ADOReport.close;
                      END;
       end;
    end;
end;

procedure TKala.cxComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
    cxComboBox4.ItemIndex := cxComboBox1.ItemIndex;
end;

procedure TKala.cxButton5Click(Sender: TObject);
begin
    IF RecSelect > 0 THEN
    begin
        ADO.Close;
        ADO.CommandText:='Select code from InvoiceSellDetials where code='+inttostr(RecSelect);
        ADO.Open;
        if ADO.RecordCount>0 then
        begin
            MessageDlg('«„ò«‰ Õ–› ò«·«Ì ›Êﬁ ÊÃÊœ ‰œ«—œ',mtWarning,[mbOK],0);
            Exit;
        end;
        ADO.Close;
        ADO.CommandText:='Select code from InvoiceBuyDetials where code='+inttostr(RecSelect);
        ADO.Open;
        if ADO.RecordCount>0 then
        begin
            MessageDlg('«„ò«‰ Õ–› ò«·«Ì ›Êﬁ ÊÃÊœ ‰œ«—œ',mtWarning,[mbOK],0);
            Exit;
        end;
        ADO.Close;
        ADO.CommandText:='Select code from InvoiceBackStorageDetials where code='+inttostr(RecSelect);
        ADO.Open;
        if ADO.RecordCount>0 then
        begin
            MessageDlg('«„ò«‰ Õ–› ò«·«Ì ›Êﬁ ÊÃÊœ ‰œ«—œ',mtWarning,[mbOK],0);
            Exit;
        end;
        ADO.Close;
        ADO.CommandText:='Select code from InvoiceBackDetials where code='+inttostr(RecSelect);
        ADO.Open;
        if ADO.RecordCount>0 then
        begin
            MessageDlg('«„ò«‰ Õ–› ò«·«Ì ›Êﬁ ÊÃÊœ ‰œ«—œ',mtWarning,[mbOK],0);
            Exit;
        end;
        ADO.Close;
        ADO.CommandText:='Select CurrentExists from Storage where code='+inttostr(RecSelect);
        ADO.Open;
        if (ADO.RecordCount > 0) AND (ADO.Fields[0].AsInteger > 0) then
        begin
            MessageDlg('«„ò«‰ Õ–› ò«·«Ì ›Êﬁ ÊÃÊœ ‰œ«—œ',mtWarning,[mbOK],0);
            Exit;
        end;
        DM.Delete(TableName,'codekala='+ inttostr(RecSelect));
        RefreshGrid;
        if Trim(cxMaskEdit6.Text)<>'' then
           FindKala(' k.code like '+QuotedStr(cxMaskEdit6.Text + '%'));
        if Trim(cxMaskEdit7.Text)<>'' then
           FindKala(' k.name like '+QuotedStr(cxMaskEdit7.Text + '%'));

        EmptyTextBox;
    end;
end;

procedure TKala.cxButton4Click(Sender: TObject);
begin
    IF RecSelect > 0 THEN
    begin
       // IF DM.GetAlarm(cxComboBox2,'ê—ÊÂ ò«·« —« «‰ Œ«» ò‰Ìœ')=False THEN
         //  exit;
        IF DM.GetAlarm(cxMaskEdit1,'òœ ò«·« —« Ê«—œ ò‰Ìœ')= False THEN
          Exit;
        IF DM.GetAlarm(cxTextEdit1,'‰«„ ò«·« —« Ê«—œ ò‰Ìœ')=False THEN
           Exit;
        IF DM.GetAlarm(cxTextEdit5,'œ—’œ ”Êœ —« „‘Œ’ ò‰Ìœ')=False THEN
           Exit;

        IF Strtoint(cxMaskEdit2.Text) > Strtoint(cxMaskEdit3.Text) THEN
        begin
           MessageDlg('ﬁÌ„  Œ—Ìœ »Ì‘ — «“ ﬁÌ„  ›—Ê‘ „Ì »«‘œ',mtInformation,[mbOK],0);
           Exit;
        end;

        IF DM.GetAlarm(cxTextEdit5,'œ—’œ ”Êœ —« „‘Œ’ ò‰Ìœ')=False THEN
           Exit;
        IF strtoint(cxTextEdit5.Text)>100  THEN
        Begin
            MessageDlg('„Ì“«‰ œ—’œ ”Êœ Ê«—œ ‘œÂ „⁄ »— ‰„Ì »«‘œ',mtInformation,[mbOK],0);
            Exit;
        End;

        DM.Update(TableName,'code=' + QuotedStr(cxMaskEdit1.text) + ',' +
                            'name=' + QuotedStr(cxTextEdit1.text) + ',' +
                            'unit=' + cxComboBox4.text + ',' +
                            'saleprice=' + cxMaskEdit3.Text  + ',' +
                            'buyprice='  + cxMaskEdit2.Text  + ',' +
                            'persent='   + cxTextEdit5.text  + ',' +
                            'DateSave='  + QuotedStr(Main.DateNow) + ',' +
                            'TimeSave='  + QuotedStr(Main.TimeNow) + ',' +
                            'UserSave='  + QuotedStr(Main.UserNow)
                           ,'codekala='  + inttostr(RecSelect));
        RefreshGrid;
        EmptyTextBox;
        Main.FillQuickFaktor();

        Case InType OF
           in_none  : begin Abort; end;
           IN_SALE  : BEGIN
                          InvoiceSell.cxComboBox6.Properties.Items.Clear;
                          InvoiceSell.cxComboBox5.Properties.Items.Clear;
                          InvoiceSell.cxComboBox2.Properties.Items.Clear;
                          InvoiceSell.cxComboBox4.Properties.Items.Clear;
                          InvoiceSell.cxComboBox7.Properties.Items.Clear;
                          InvoiceSell.comSalePrice.Properties.Items.Clear;
                          InvoiceSell.ComBuyPrice.Properties.Items.Clear;
                          InvoiceSell.ComPersent.Properties.Items.Clear;
                          DM.ADOReport.Close;
                          DM.ADOReport.CommandText:=' select s.storageno SNO,s3.[name] Sname,s.Code Scode,k.Code Ucode,k.[name] Namekala,K.saleprice saleprice,K.buyprice buyprice,k.persent ' +
                                                    ' from Storage s,StorageL3 s3,kala k ' +
                                                    ' where s3.sn3=s.storageno and s.code=k.codekala order by k.code';
                          DM.ADOReport.Open;
                          IF DM.ADOReport.RecordCount>0 THEN
                          begin
                              While Not DM.ADOReport.Eof DO
                              begin
                                  InvoiceSell.cxComboBox6.Properties.Items.Add(DM.ADOReport.FieldValues['SNO']);
                                  InvoiceSell.cxComboBox5.Properties.Items.Add(DM.ADOReport.FieldValues['Sname']);
                                  InvoiceSell.cxComboBox2.Properties.Items.Add(DM.ADOReport.FieldValues['Scode']);
                                  InvoiceSell.cxComboBox4.Properties.Items.Add(DM.ADOReport.FieldValues['Namekala']);
                                  InvoiceSell.cxComboBox7.Properties.Items.Add(DM.ADOReport.FieldValues['Ucode']);
                                  InvoiceSell.comSalePrice.Properties.Items.Add(DM.ADOReport.FieldValues['saleprice']);
                                  InvoiceSell.ComBuyPrice.Properties.Items.Add(DM.ADOReport.FieldValues['buyprice']);
                                  InvoiceSell.ComPersent.Properties.Items.Add(DM.ADOReport.FieldValues['persent']);
                                  DM.ADOReport.Next;
                              end;
                          end;
                          DM.ADOReport.close;
                      END;
//-------------------------------------------------------------------------------------------------                      
           IN_BUY   : BEGIN
                         IF InvoiceBuy.cxComboBox3.ItemIndex < 0 THEN
                             Exit;
                         InvoiceBuy.cxComboBox4.Properties.Items.Clear;
                         InvoiceBuy.cxComboBox5.Properties.Items.Clear;
                         InvoiceBuy.cxComboBox6.Properties.Items.Clear;
                         InvoiceBuy.cxComboBox7.Properties.Items.Clear;
                         InvoiceBuy.cxComboBox8.Properties.Items.Clear;
                         InvoiceBuy.cxComboBox2.Properties.Items.Clear;
                         InvoiceBuy.ComBuyPrice.Properties.Items.Clear;
                         InvoiceBuy.comSalePrice.Properties.Items.Clear;
                         InvoiceBuy.ComPersent.Properties.Items.Clear;
                         DM.ADOReport.Close;
                         DM.ADOReport.CommandText:=' select k.Groupcode,s.storageno SNO,s3.[name] Sname,s.Code Scode,k.Code Ucode,k.[name] Namekala,K.saleprice saleprice,K.buyprice buyprice,k.persent ' +
                                                   ' from Storage s,StorageL3 s3,kala k ' +
                                                   ' where s3.sn3=s.storageno and s.code=k.codekala and s.storageno='+InvoiceBuy.cxComboBox1.Text + ' order by k.code';
                         DM.ADOReport.Open;
                         IF DM.ADOReport.RecordCount > 0 THEN
                         begin
                             While Not DM.ADOReport.Eof DO
                             begin
                                 InvoiceBuy.cxComboBox8.Properties.Items.Add(DM.ADOReport.FieldValues['SNO']);
                                 InvoiceBuy.cxComboBox6.Properties.Items.Add(DM.ADOReport.FieldValues['Sname']);
                                 InvoiceBuy.cxComboBox7.Properties.Items.Add(DM.ADOReport.FieldValues['Ucode']);
                                 InvoiceBuy.cxComboBox4.Properties.Items.Add(DM.ADOReport.FieldValues['Namekala']);
                                 InvoiceBuy.cxComboBox5.Properties.Items.Add(DM.ADOReport.FieldValues['Groupcode']);
                                 InvoiceBuy.cxComboBox2.Properties.Items.Add(DM.ADOReport.FieldValues['Scode']);
                                 InvoiceBuy.comSalePrice.Properties.Items.Add(DM.ADOReport.FieldValues['saleprice']);
                                 InvoiceBuy.ComBuyPrice.Properties.Items.Add(DM.ADOReport.FieldValues['buyprice']);
                                 InvoiceBuy.ComPersent.Properties.Items.Add(DM.ADOReport.FieldValues['Persent']);
                                 DM.ADOReport.Next;
                             end;
                         end;
                         DM.ADOReport.close;
                      END;
//-------------------------------------------------------------------------------------------------
           IN_BACK  : BEGIN
                          InvoiceBack.cxComboBox6.Properties.Items.Clear;
                          InvoiceBack.cxComboBox5.Properties.Items.Clear;
                          InvoiceBack.cxComboBox2.Properties.Items.Clear;
                          InvoiceBack.cxComboBox4.Properties.Items.Clear;
                          InvoiceBack.cxComboBox7.Properties.Items.Clear;
                          InvoiceBack.comSalePrice.Properties.Items.Clear;
                          InvoiceBack.ComBuyPrice.Properties.Items.Clear;
                          InvoiceBack.ComPersent.Properties.Items.Clear;
                          DM.ADOReport.Close;
                          DM.ADOReport.CommandText:=' select s.storageno SNO,s3.[name] Sname,s.Code Scode,k.Code Ucode,k.[name] Namekala,K.saleprice saleprice,K.buyprice buyprice,k.Persent ' +
                                                    ' from Storage s,StorageL3 s3,kala k ' +
                                                    ' where s3.sn3=s.storageno and s.code=k.codekala order by k.code';
                          DM.ADOReport.Open;
                          IF DM.ADOReport.RecordCount>0 THEN
                          begin
                              While Not DM.ADOReport.Eof DO
                              begin
                                  InvoiceBack.cxComboBox6.Properties.Items.Add(DM.ADOReport.FieldValues['SNO']);
                                  InvoiceBack.cxComboBox5.Properties.Items.Add(DM.ADOReport.FieldValues['Sname']);
                                  InvoiceBack.cxComboBox2.Properties.Items.Add(DM.ADOReport.FieldValues['Scode']);
                                  InvoiceBack.cxComboBox4.Properties.Items.Add(DM.ADOReport.FieldValues['Namekala']);
                                  InvoiceBack.cxComboBox7.Properties.Items.Add(DM.ADOReport.FieldValues['Ucode']);
                                  InvoiceBack.comSalePrice.Properties.Items.Add(DM.ADOReport.FieldValues['saleprice']);
                                  InvoiceBack.ComBuyPrice.Properties.Items.Add(DM.ADOReport.FieldValues['buyprice']);
                                  InvoiceBack.ComPersent.Properties.Items.Add(DM.ADOReport.FieldValues['Persent']);
                                  DM.ADOReport.Next;
                              end;
                          end;
                          DM.ADOReport.close;
                      END;
//--------------------------------------------------------------------------------------------------
           IN_BACKS : BEGIN
                          IF InvoiceBackStorage.cxComboBox3.ItemIndex < 0 THEN
                             Exit;
                          InvoiceBackStorage.cxComboBox8.Properties.Items.Clear;
                          InvoiceBackStorage.cxComboBox6.Properties.Items.Clear;
                          InvoiceBackStorage.cxComboBox2.Properties.Items.Clear;
                          InvoiceBackStorage.cxComboBox4.Properties.Items.Clear;
                          InvoiceBackStorage.cxComboBox7.Properties.Items.Clear;
                          InvoiceBackStorage.ComBuyPrice.Properties.Items.Clear;
                          InvoiceBackStorage.comSalePrice.Properties.Items.Clear;
                          InvoiceBackStorage.ComPersent.Properties.Items.Clear;
                          DM.ADOReport.Close;
                          DM.ADOReport.CommandText:=' select s.storageno SNO,s3.[name] Sname,s.Code Scode,k.Code Ucode,k.[name] Namekala,K.saleprice saleprice,K.buyprice buyprice,k.Persent ' +
                                                    ' from Storage s,StorageL3 s3,kala k ' +
                                                    ' where s3.sn3=s.storageno and s.code=k.codekala and s.storageno='+InvoiceBackStorage.cxComboBox1.Text + ' order by k.code';
                          DM.ADOReport.Open;
                          IF DM.ADOReport.RecordCount > 0 THEN
                          begin
                              While Not DM.ADOReport.Eof DO
                              begin
                                  InvoiceBackStorage.cxComboBox8.Properties.Items.Add(DM.ADOReport.FieldValues['SNO']);
                                  InvoiceBackStorage.cxComboBox6.Properties.Items.Add(DM.ADOReport.FieldValues['Sname']);
                                  InvoiceBackStorage.cxComboBox2.Properties.Items.Add(DM.ADOReport.FieldValues['Scode']);
                                  InvoiceBackStorage.cxComboBox4.Properties.Items.Add(DM.ADOReport.FieldValues['Namekala']);
                                  InvoiceBackStorage.cxComboBox7.Properties.Items.Add(DM.ADOReport.FieldValues['Ucode']);
                                  InvoiceBackStorage.comSalePrice.Properties.Items.Add(DM.ADOReport.FieldValues['saleprice']);
                                  InvoiceBackStorage.ComBuyPrice.Properties.Items.Add(DM.ADOReport.FieldValues['buyprice']);
                                  InvoiceBackStorage.ComPersent.Properties.Items.Add(DM.ADOReport.FieldValues['Persent']);
                                  DM.ADOReport.Next;
                              end;
                          end;
                          DM.ADOReport.close;
                      END;
       end;
    end;
end;

procedure TKala.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    RecSelect := DM.DataS.DataSet.FieldValues['codekala'];
    cxMaskEdit1.Text := DM.DataS.DataSet.FieldValues['code'];
    cxTextEdit1.Text := DM.DataS.DataSet.FieldValues['name'];
    cxComboBox1.Text := DM.DataS.DataSet.FieldValues['unitname'];
    cxMaskEdit2.Text := DM.DataS.DataSet.FieldValues['buyprice'];
    cxMaskEdit3.Text := DM.DataS.DataSet.FieldValues['saleprice'];
    cxTextEdit5.Text := DM.DataS.DataSet.FieldValues['persent'];
    cxComboBox7.Text := DM.DataS.DataSet.FieldValues['StorageNO'];
    cxComboBox2.Text := DM.DataS.DataSet.FieldValues['level2'];
end;

procedure TKala.cxTextEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    Case Key OF
       VK_F9        : cxButton2.Click;
       VK_F10       : cxButton3.Click;
       VK_F11       : cxButton4.Click;
       VK_F12       : cxButton5.Click;
       VK_ESCAPE    : Close;
    end;
end;

procedure TKala.cxButton7Click(Sender: TObject);
begin
    DefineCoding := TDefineCoding.Create(Self);
    DefineCoding.Kind := Vahed_kala;
    DefineCoding.ShowModal;
    DefineCoding.Destroy;
    DM.FillCombo(cxComboBox4,cxComboBox1,'code','unitname','Units','','code,unitname');
    cxComboBox1.SetFocus;
    cxComboBox1.ItemIndex:=cxComboBox1.Properties.Items.Count-1
end;

procedure TKala.cxTextEdit5PropertiesChange(Sender: TObject);
begin
    if (cxTextEdit5.Text<>'')  then
       cxMaskEdit2.Text := FloatToStr(StrToFloat(cxMaskEdit3.Text)-((StrToFloat(cxMaskEdit3.Text)*StrToFloat(cxTextEdit5.Text)) / 100));
end;

procedure TKala.cxMaskEdit1Enter(Sender: TObject);
begin
    ActivateKeyboardLayout(hkl_next,1);
end;

procedure TKala.cxMaskEdit1Exit(Sender: TObject);
begin
    ActivateKeyboardLayout(hkl_next,1);
end;

procedure TKala.cxComboBox8PropertiesEditValueChanged(Sender: TObject);
begin
    cxComboBox7.ItemIndex:=cxComboBox8.ItemIndex;
    if cxComboBox7.ItemIndex >= 0 then
       RefreshGrid;
end;

procedure TKala.cxComboBox7PropertiesEditValueChanged(Sender: TObject);
begin
    cxComboBox8.ItemIndex:=cxComboBox7.ItemIndex;
end;

procedure TKala.cxButton11Click(Sender: TObject);
var
    Mem : TfrxMemoView;
    Pic : TfrxPictureView;
    DD , Title,D1,D2,D3,D4,D5 : String;
    Xresult : integer;
begin
    if cxComboBox5.ItemIndex < 0 then
       Exit;
       
    DM.ADOspReport.Close;
    DM.ADOspReport.Parameters.Clear;
    Title := '„ÊÃÊœÌ ›—Ê‘ê«Â';
    if cxCheckBox1.Checked=False then
       DM.ADOspReport.ProcedureName:='dbo.ReportStorage'
       else
       DM.ADOspReport.ProcedureName:='dbo.ReportStorage_NOZero';

    DM.ADOspReport.Parameters.Refresh;
    DM.ADOspReport.Parameters.ParamByName('@SNO').Value := cxComboBox6.Text;
    DM.ADOspReport.Parameters.ParamByName('@DNO').Value := Main.DocNumber;
    DD := ' «  «—ÌŒ :  ' + Main.DateNow;
    DM.frxReport1.LoadFromFile(Main.WPath + 'Report\ExistsStorage.fr3');

    if cxCheckBox1.Checked = true then
    begin
       DM.ADOspReport.ExecProc;

       ADO.Close;
       ADO.CommandText:='Select StorageNO,code,CurrentExists,SK_Buy,SK_Sale,SK_Back,SK_BackS From NO_Zero';
       ADO.Open;
       While NOT ADO.Eof do
       begin
           D1:='0';D2:='0';D3:='0';D4:='0';D5:='0';
           if ADO.FieldValues['CurrentExists'] <> NULL then
              D1 := FloatToStr(ADO.FieldValues['CurrentExists']);
           if ADO.FieldValues['SK_Buy'] <> NULL then
              D2 := FloatToStr(ADO.FieldValues['SK_Buy']);
           if ADO.FieldValues['SK_Back'] <> NULL then
              D3 := FloatToStr(ADO.FieldValues['SK_Back']);
           if ADO.FieldValues['SK_Sale'] <> NULL then
              D4 := FloatToStr(ADO.FieldValues['SK_Sale']);
           if ADO.FieldValues['SK_BackS'] <> NULL then
              D5 := FloatToStr(ADO.FieldValues['SK_BackS']);
           Xresult := (StrToInt(D1) + StrToInt(D2) + StrToInt(D3))-(StrToInt(D4) + StrToInt(D5));
           DM.Update('NO_Zero','Result='+inttostr(Xresult),'StorageNO='+IntToStr(ADO.FieldValues['StorageNO'])+
                                                           ' AND Code='+IntToStr(ADO.FieldValues['code']));
           ADO.Next;
       end;
       DM.ADOspReport.Close;
       DM.ADOspReport.Parameters.Clear;
       DM.ADOspReport.ProcedureName:='dbo.Selection';
       DM.ADOspReport.Parameters.Refresh;
       DM.ADOspReport.Parameters.ParamByName('@T').Value := 'NO_Zero';
       DM.ADOspReport.Parameters.ParamByName('@F').Value := '*';
       DM.ADOspReport.Parameters.ParamByName('@W').Value := ' Result>0 ';
       DM.ADOspReport.Open;
    end
    else
    DM.ADOspReport.Open;

    Mem := DM.frxReport1.FindObject('Memo23') AS TfrxMemoView;
    Mem.Text := main.TitleReport;

    Pic := DM.frxReport1.FindObject('Picture1') AS TfrxPictureView;
    Pic.Picture.LoadFromFile(main.WPath+'Logo.jpg');

    Mem := DM.frxReport1.FindObject('Memo22') AS TfrxMemoView;
    Mem.Text := Main.UserNow;
    Mem := DM.frxReport1.FindObject('Memo21') AS TfrxMemoView;
    Mem.Text := Main.DateNow;
    Mem := DM.frxReport1.FindObject('Memo20') AS TfrxMemoView;
    Mem.Text := Title;
    Mem := DM.frxReport1.FindObject('Memo24') AS TfrxMemoView;
    Mem.Text := DD;
    DM.frxReport1.ShowReport;
end;

procedure TKala.cxComboBox5PropertiesEditValueChanged(Sender: TObject);
begin
    cxComboBox6.ItemIndex:=cxComboBox5.ItemIndex;
end;

Procedure TKala.CountKala(Kind:Integer);
var
    Mem : TfrxMemoView;
    Pic : TfrxPictureView;
    DD , Title,D1,D2,D3,D4,D5 : String;
    Xresult : integer;
begin
    DM.ADOspReport.Close;
    DM.ADOspReport.Parameters.Clear;
    Title := '„ÊÃÊœÌ ›—Ê‘ê«Â';
    Case Kind of
       1 : begin    //Code kala
               DM.ADOspReport.ProcedureName:='dbo.ReportKalaCode_NOZero';
               DM.ADOspReport.Parameters.Refresh;
               DM.ADOspReport.Parameters.ParamByName('@Kcode').Value := cxMaskEdit4.Text;
           end;
       2 : begin     //name kala
               DM.ADOspReport.ProcedureName:='dbo.ReportKalaName_NOZero';
               DM.ADOspReport.Parameters.Refresh;
               DM.ADOspReport.Parameters.ParamByName('@Kname').Value := cxMaskEdit5.Text;
           end;
    end;
    DM.ADOspReport.Parameters.ParamByName('@DNO').Value := Main.DocNumber;
    DD := ' «  «—ÌŒ :  ' + Main.DateNow;
    DM.frxReport1.LoadFromFile(Main.WPath + 'Report\ExistsKala.fr3');
    DM.ADOspReport.ExecProc;

    ADO.Close;
    ADO.CommandText:='Select StorageNO,code,CurrentExists,SK_Buy,SK_Sale,SK_Back,SK_BackS From NO_Zero_Kala';
    ADO.Open;
    While NOT ADO.Eof do
    begin
        D1:='0';D2:='0';D3:='0';D4:='0';D5:='0';
        if ADO.FieldValues['CurrentExists'] <> NULL then
           D1 := FloatToStr(ADO.FieldValues['CurrentExists']);
        if ADO.FieldValues['SK_Buy'] <> NULL then
           D2 := FloatToStr(ADO.FieldValues['SK_Buy']);
        if ADO.FieldValues['SK_Back'] <> NULL then
           D3 := FloatToStr(ADO.FieldValues['SK_Back']);
        if ADO.FieldValues['SK_Sale'] <> NULL then
           D4 := FloatToStr(ADO.FieldValues['SK_Sale']);
        if ADO.FieldValues['SK_BackS'] <> NULL then
           D5 := FloatToStr(ADO.FieldValues['SK_BackS']);
        Xresult := (StrToInt(D1) + StrToInt(D2) + StrToInt(D3))-(StrToInt(D4) + StrToInt(D5));
        DM.Update('NO_Zero_Kala','Result='+inttostr(Xresult),'StorageNO='+IntToStr(ADO.FieldValues['StorageNO'])+
                                                        ' AND Code='+IntToStr(ADO.FieldValues['code']));
        ADO.Next;
    end;
    DM.ADOspReport.Close;
    DM.ADOspReport.Parameters.Clear;
    DM.ADOspReport.ProcedureName:='dbo.Selection';
    DM.ADOspReport.Parameters.Refresh;
    DM.ADOspReport.Parameters.ParamByName('@T').Value := 'NO_Zero_Kala';
    DM.ADOspReport.Parameters.ParamByName('@F').Value := '*';
    DM.ADOspReport.Parameters.ParamByName('@W').Value := '';   //' Result>0 ';
    DM.ADOspReport.Open;

    Mem := DM.frxReport1.FindObject('Memo23') AS TfrxMemoView;
    Mem.Text := main.TitleReport;

    Pic := DM.frxReport1.FindObject('Picture1') AS TfrxPictureView;
    Pic.Picture.LoadFromFile(main.WPath+'Logo.jpg');

    Mem := DM.frxReport1.FindObject('Memo22') AS TfrxMemoView;
    Mem.Text := Main.UserNow;
    Mem := DM.frxReport1.FindObject('Memo21') AS TfrxMemoView;
    Mem.Text := Main.DateNow;
    Mem := DM.frxReport1.FindObject('Memo20') AS TfrxMemoView;
    Mem.Text := Title;
    Mem := DM.frxReport1.FindObject('Memo24') AS TfrxMemoView;
    Mem.Text := DD;
    DM.frxReport1.ShowReport;
end;

procedure TKala.cxButton9Click(Sender: TObject);
begin
    CountKala(1);
end;

procedure TKala.cxButton10Click(Sender: TObject);
begin
    CountKala(2);
end;

procedure TKala.cxMaskEdit4KeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then
       cxButton9.Click;
end;

procedure TKala.cxMaskEdit5KeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then
       cxButton10.Click;
end;

procedure TKala.cxComboBox5KeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then
       cxButton11.Click;
end;

procedure TKala.FindKala(Swhere:string);
begin
    DM.Select('kala k,Storage s,units u,Level2 l','s.storageno,l.level2,k.codekala,k.code,k.name,k.saleprice,k.buyprice,k.persent,u.unitname','k.codekala=s.code AND k.unit=u.code AND l.codeL2=k.groupcode AND '+ Swhere + ' order by k.code');
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource:=DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName:='code';
    cxGrid1DBTableView1Column2.DataBinding.FieldName:='name';
    cxGrid1DBTableView1Column3.DataBinding.FieldName:='persent';
    cxGrid1DBTableView1Column4.DataBinding.FieldName:='unitname';
    cxGrid1DBTableView1Column5.DataBinding.FieldName:='buyprice';
    cxGrid1DBTableView1Column6.DataBinding.FieldName:='saleprice';
    cxGrid1DBTableView1Column7.DataBinding.FieldName:='codekala';
end;

procedure TKala.cxButton12Click(Sender: TObject);
begin
    if Trim(cxMaskEdit6.Text)='' then
       Exit;
    FindKala(' k.code like '+QuotedStr(cxMaskEdit6.Text + '%'));
end;

procedure TKala.cxMaskEdit6KeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then
       cxButton12.Click;
end;

procedure TKala.cxButton8Click(Sender: TObject);
begin
    if Trim(cxMaskEdit7.Text)='' then
       Exit;
    FindKala(' k.name like '+QuotedStr(cxMaskEdit7.Text + '%'));
end;

procedure TKala.cxMaskEdit7KeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then
       cxButton8.Click;
end;

procedure TKala.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Main.CmdKala.Enabled:=True;
    ADO.Free;
end;

end.
