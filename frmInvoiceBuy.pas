unit frmInvoiceBuy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, frmTMP, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, ComCtrls, cxMaskEdit, cxMemo,
  cxListView, cxLabel, cxTextEdit, cxDropDownEdit, ExtCtrls, cxControls,
  cxContainer, cxEdit, cxGroupBox, StdCtrls, cxButtons,frxClass,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue;

Const
     TableName1 = 'InvoiceBuy';
     FieldName1 = 'num,Code,date,seller,discount,description,DateSave,TimeSave,UserSave,DocNO';
     TableName2 = 'InvoiceBuyDetials';
     FieldName2 = 'num,no,StorageNO,code,count,Disc,price,SalePrice,Persent,DocNO';
type
  TInvoiceBuy = class(TTMP)
    cxLabel1: TcxLabel;
    cxLabel8: TcxLabel;
    cxListView1: TcxListView;
    cxGroupBox2: TcxGroupBox;
    cxMemo1: TcxMemo;
    cxComboBox1: TcxComboBox;
    cxComboBox3: TcxComboBox;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel2: TcxLabel;
    cxTextEdit1: TcxMaskEdit;
    Shape1: TShape;
    cxButton9: TcxButton;
    cxButton8: TcxButton;
    cxMaskEdit8: TcxMaskEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxMaskEdit7: TcxMaskEdit;
    cxComboBox4: TcxComboBox;
    cxLabel9: TcxLabel;
    cxComboBox2: TcxComboBox;
    cxLabel6: TcxLabel;
    cxMaskEdit3: TcxMaskEdit;
    cxMaskEdit2: TcxMaskEdit;
    cxMaskEdit4: TcxMaskEdit;
    cxLabel5: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxMaskEdit5: TcxMaskEdit;
    cxButton7: TcxButton;
    cxComboBox7: TcxComboBox;
    cxComboBox5: TcxComboBox;
    cxComboBox6: TcxComboBox;
    cxComboBox8: TcxComboBox;
    ComSalePrice: TcxComboBox;
    ComBuyPrice: TcxComboBox;
    ComPersent: TcxComboBox;
    cxButton11: TcxButton;
    cxLabel7: TcxLabel;
    cxMaskEdit6: TcxMaskEdit;
    cxMaskEdit9: TcxMaskEdit;
    cxMaskEdit11: TcxMaskEdit;
    cxMaskEdit10: TcxMaskEdit;
    cxButton10: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxMaskEdit8PropertiesChange(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxMaskEdit1Exit(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxMaskEdit5PropertiesChange(Sender: TObject);
    procedure cxComboBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxMaskEdit7PropertiesChange(Sender: TObject);
    procedure cxComboBox7PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox5PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox6PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox8PropertiesEditValueChanged(Sender: TObject);
    procedure ComSalePricePropertiesEditValueChanged(Sender: TObject);
    procedure ComPersentPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxMaskEdit6PropertiesChange(Sender: TObject);
    procedure cxMaskEdit10PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxButton10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
  private
       NewFactor , XL : Integer;
       ADO : TADODataSet;
       procedure EmptyTextBox();
       procedure CalcSum();
//       procedure ApplyDelete(Sno,kcode:string);
  public
       RecSelect : Integer;
  end;

var
  InvoiceBuy: TInvoiceBuy;

implementation

uses frmMain, frmSearchInvoice, DateUtils, frmDefineCoding, frmKala,
  frmStorage, frmDM;

{$R *.dfm}

procedure TInvoiceBuy.EmptyTextBox();
begin
    RecSelect:=0;
    NewFactor:=0;
    cxTextEdit1.Text:='';
    cxComboBox7.ItemIndex:=-1;
    cxMaskEdit1.text:='';
    cxMaskEdit5.text:='';
    cxComboBox4.text:='';
    cxMaskEdit1.text:='0';
    cxMaskEdit7.text:='0';cxMaskEdit8.text:='0';cxMaskEdit4.text:='0';
    cxMaskEdit3.text:='0';cxMaskEdit2.text:='0';cxMaskEdit1.text:='';
    cxMaskEdit9.Text:='0';cxMaskEdit10.text:='';cxMaskEdit11.text:='';
    cxComboBox3.ItemIndex:=-1;cxMaskEdit6.Text:='0';
    cxComboBox6.ItemIndex:=0;
    cxMemo1.Text:='';
    cxListView1.Items.Clear;
end;

procedure TInvoiceBuy.CalcSum();
Var
    J : Integer;
begin
    cxMaskEdit4.Text:='0';
    cxMaskEdit2.Text:='0';
    cxMaskEdit9.Text:='0';
    for J:=0 to cxListView1.Items.Count-1 do
    begin
        cxMaskEdit4.Text := FloatTostr(StrtoFloat(cxMaskEdit4.Text) + StrtoFloat(cxListView1.Items.item[J].Caption));
        cxMaskEdit2.Text := FloatTostr(StrtoFloat(cxMaskEdit2.Text) + StrtoFloat(cxListView1.Items.item[J].SubItems.Strings[0]));
        cxMaskEdit9.Text := FloatTostr(StrtoFloat(cxMaskEdit9.Text) + StrtoFloat(cxListView1.Items.item[J].SubItems.Strings[2]));
    end;
    cxMaskEdit3.Text := Floattostr( strtoFloat(cxMaskEdit4.Text) + strtoFloat(cxMaskEdit2.Text));
end;

procedure TInvoiceBuy.FormShow(Sender: TObject);
begin
    //DM.FillCombo(cxComboBox1,cxComboBox3,'code','name','Customer','','code,name');
    DM.BTNState(cxButton2,cxButton3,cxButton4,cxButton5,cxButton6,main.Permission[50],main.Permission[50],main.Permission[51],main.Permission[52],'1');
    DM.FillCombo(cxComboBox1,cxComboBox3,'SN3','name','StorageL3','','SN3,name');
    ADO := TADODataSet.Create(Self);
    ADO.Connection:=DM.Connection;
    cxButton2.SetFocus;
end;

procedure TInvoiceBuy.cxButton2Click(Sender: TObject);
begin
    cxGroupBox1.Enabled:=True;
    EmptyTextBox;
    NewFactor := DM.GetFieldMax(TableName1);
    cxTextEdit1.SetFocus;
    cxMaskEdit1.Text := main.DateNow;
end;

procedure TInvoiceBuy.cxComboBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox1.ItemIndex := cxComboBox3.ItemIndex;
    
    cxComboBox4.Properties.Items.Clear;
    cxComboBox5.Properties.Items.Clear;
    cxComboBox6.Properties.Items.Clear;
    cxComboBox7.Properties.Items.Clear;
    cxComboBox8.Properties.Items.Clear;
    cxComboBox2.Properties.Items.Clear;
    ComBuyPrice.Properties.Items.Clear;
    comSalePrice.Properties.Items.Clear;
    ComPersent.Properties.Items.Clear;

    if cxComboBox3.ItemIndex<0 then
       Exit;

    if NewFactor>=1 then
    begin
    DM.ADOReport.Close;
    DM.ADOReport.CommandText:=' select k.Groupcode,s.storageno SNO,s3.[name] Sname,s.Code Scode,k.Code Ucode,k.[name] Namekala,K.saleprice saleprice,K.buyprice buyprice,k.persent ' +
                              ' from Storage s,StorageL3 s3,kala k ' +
                              ' where s3.sn3=s.storageno and s.code=k.codekala and s.storageno='+cxComboBox1.Text + ' order by k.code';
    DM.ADOReport.Open;
    if DM.ADOReport.RecordCount > 0 then
    begin
        While Not DM.ADOReport.Eof do
        begin
            cxComboBox8.Properties.Items.Add(DM.ADOReport.FieldValues['SNO']);
            cxComboBox6.Properties.Items.Add(DM.ADOReport.FieldValues['Sname']);
            cxComboBox7.Properties.Items.Add(DM.ADOReport.FieldValues['Ucode']);
            cxComboBox4.Properties.Items.Add(DM.ADOReport.FieldValues['Namekala']);
            cxComboBox5.Properties.Items.Add(DM.ADOReport.FieldValues['Groupcode']);
            cxComboBox2.Properties.Items.Add(DM.ADOReport.FieldValues['Scode']);
            comSalePrice.Properties.Items.Add(DM.ADOReport.FieldValues['saleprice']);
            ComBuyPrice.Properties.Items.Add(DM.ADOReport.FieldValues['buyprice']);
            ComPersent.Properties.Items.Add(DM.ADOReport.FieldValues['Persent']);
            DM.ADOReport.Next;
        end;
    end;
    DM.ADOReport.close;
    end;
end;

procedure TInvoiceBuy.cxButton3Click(Sender: TObject);
var
    i : integer;
begin
    if NewFactor > 0 then
    begin
        if DM.GetAlarm(cxTextEdit1,'‘„«—Â ›«ò Ê— —« Ê«—œ ò‰Ìœ')=False then
           exit;
        if DM.GetAlarm(cxMaskEdit1,' «—ÌŒ ›«ò Ê— —« Ê«—œ ò‰Ìœ')=False then
           exit;
        if DM.GetAlarm(cxComboBox3,'›—Ê‘‰œÂ —« «‰ Œ«» ò‰Ìœ')=False then
           exit;
        if cxListView1.Items.Count < 0 then
        begin
            MessageDlg('›«ò Ê— ›«ﬁœ ò«·« „Ì »«‘œ Ê ﬁ«»· –ŒÌ—Â ”«“Ì ‰Ì” ',mtInformation,[mbOK],0);
            cxMaskEdit10.SetFocus;
            exit;
        end;

        if StrToFloat(cxMaskEdit4.Text) < 0 then
        begin
            MessageDlg('„Ì“«‰  Œ›Ì› Ê«—œ ‘œÂ «“ ﬁÌ„  ò· ›«ò Ê— »Ì‘ — «” ',mtInformation,[mbOK],0);
            cxMaskEdit2.SetFocus;
            Exit;
        end;

                 //    'num,Code,date,seller,discount,description,DateSave,TimeSave,UserSave,DocNO
        Dm.insert(TableName1,FieldName1,inttostr(NewFactor) + ',' +
                                        cxTextEdit1.text + ',' +
                                        QuotedStr(cxMaskEdit1.text) + ',' +
                                        cxComboBox1.text + ',' +
                                        cxMaskEdit2.text + ',' +
                                        QuotedStr(cxMemo1.text) + ',' +
                                        QuotedStr(Main.DateNow) + ',' +
                                        QuotedStr(Main.TimeNow) + ',' +
                                        QuotedStr(Main.UserNow) + ',' +
                                        inttostr(Main.DocNumber));

       for i:=0 to cxListView1.Items.Count-1 do
       begin               //'num,no,StorageNO,code,count,Disc,price,SalePrice,Persent,DocNO';
         {  ADO.Close;
           ADO.CommandText:='Select StorageNO From Storage where StorageNO='+cxListView1.Items.Item[i].SubItems.Strings[5]+' AND code='+cxListView1.Items.Item[i].SubItems.Strings[6];
           ADO.Open;
           if ADO.RecordCount <= 0 then
           begin
               Dm.insert('Storage','storageNO,groupcode,code,CurrentExists,MinExists,RequestPoint,DateSave,TimeSave,UserSave', cxListView1.Items.Item[i].SubItems.Strings[5] + ',' +
                                   cxListView1.Items.Item[i].SubItems.Strings[7] + ',' +
                                   cxListView1.Items.Item[i].SubItems.Strings[6] + ',' +
                                   '0,1,1,' + QuotedStr(Main.DateNow) + ',' +
                                   QuotedStr(Main.TimeNow) + ',' +
                                   QuotedStr(Main.UserNow));
           end;
         }
           Dm.insert(TableName2,FieldName2,inttostr(NewFactor) + ',' +
                                           cxListView1.Items.Item[i].SubItems.Strings[5] + ',' +
                                           cxListView1.Items.Item[i].SubItems.Strings[6] + ',' +
                                           cxListView1.Items.Item[i].SubItems.Strings[7] + ',' +
                                           cxListView1.Items.Item[i].SubItems.Strings[2] + ',' +
                                           cxListView1.Items.Item[i].SubItems.Strings[0] + ',' +
                                           cxListView1.Items.Item[i].SubItems.Strings[1] + ',' +
                                           cxListView1.Items.Item[i].SubItems.Strings[9] + ',' +
                                           cxListView1.Items.Item[i].SubItems.Strings[10] + ',' +
                                           inttostr(Main.DocNumber));
       end;
       DM.FillReportDay('›«ò Ê— Œ—Ìœ','À»  ›«ò Ê— Œ—Ìœ »Â ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' «“ ›—Ê‘‰œÂ '+cxComboBox3.Text);
       DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('›«ò Ê— Œ—Ìœ') + ',' +
                                QuotedStr('À»  ›«ò Ê— Œ—Ìœ »Â ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' «“ ›—Ê‘‰œÂ '+cxComboBox3.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));

       DM.AlarmStorage;
       EmptyTextBox;
       cxButton2.SetFocus;
       cxGroupBox1.Enabled:=False;
    end;
end;

procedure TInvoiceBuy.cxButton9Click(Sender: TObject);
var
    i : Integer;
    X ,XDis : Double;
begin
    if DM.GetAlarm(cxComboBox2,'ò«·«Ì „Ê—œ ‰Ÿ— —« «‰ Œ«» ò‰Ìœ') = False then
       exit;
    if DM.GetAlarm(cxMaskEdit7,' ⁄œ«œ Ì« „ﬁœ«— «“ ò«·« «‰ Œ«»Ì —« Ê«—œ ò‰Ìœ') = False then
       exit;

    if strtoint(cxMaskEdit7.Text)<=0 then
    begin
        MessageDlg(' ⁄œ«œ ò«·«Ì Ê«—œ ‘œÂ „⁄ »— ‰„Ì »«‘œ',mtInformation,[mbOK],0);
        cxMaskEdit7.SetFocus;
        exit;
    end;
    if (strtoint(cxMaskEdit6.Text)<0) OR (strtoint(cxMaskEdit6.Text)>strtoint(cxMaskEdit8.Text)) then
    begin
        MessageDlg('„Ì“«‰  Œ›Ì› Ê«—œ ‘œÂ „⁄ »— ‰„Ì »«‘œ',mtInformation,[mbOK],0);
        cxMaskEdit6.SetFocus;
        Exit;
    end;


    for i:=0 to cxListView1.Items.Count-1 do
       if cxComboBox7.Text = cxListView1.Items.Item[i].SubItems.Strings[4] then
          if cxComboBox8.Text = cxListView1.Items.Item[i].SubItems.Strings[6] then
          begin
             XDis := strtoFloat(cxListView1.Items.Item[i].SubItems.Strings[0]);
             XDis := XDis + strtoFloat(cxMaskEdit6.Text);

             X := strtoFloat(cxListView1.Items.Item[i].SubItems.Strings[2]);
             X := X + strtoFloat(cxMaskEdit7.Text);
             cxListView1.Items.Item[i].SubItems.Strings[2]:= Floattostr(X);

             cxListView1.Items.item[i].Caption := FloatToStr((StrToFloat(cxMaskEdit8.Text) * X)-XDis);
             cxListView1.Items.Item[i].SubItems.Strings[0]:= FloatTostr(XDis);

             CalcSum();

             cxMaskEdit10.SetFocus;
             cxComboBox7.ItemIndex:=-1;
             cxMaskEdit10.text:='';
             cxMaskEdit11.text:='';
             cxMaskEdit8.Text:='0';
             cxMaskEdit7.Text:='0';
             cxMaskEdit6.Text:='0';
             Exit;
          end;

    with cxListView1.Items.Add do
    begin
        Caption := FloatToStr( StrToFloat(cxMaskEdit8.Text) * StrToFloat(cxMaskEdit7.Text)-StrToFloat(cxMaskEdit6.Text));
        SubItems.Insert(0,cxMaskEdit6.Text);
        SubItems.Insert(1,cxMaskEdit8.Text);
        SubItems.Insert(2,cxMaskEdit7.Text);
        SubItems.Insert(3,cxComboBox4.Text);
        SubItems.Insert(4,cxComboBox7.Text);
        SubItems.Insert(5,inttostr(cxListView1.Items.Count));
        SubItems.Insert(6,cxComboBox8.Text);
        SubItems.Insert(7,cxComboBox2.Text);
        SubItems.Insert(8,cxComboBox5.Text);
        SubItems.Insert(9,ComSalePrice.Text);
        SubItems.Insert(10,ComPersent.Text);
        //cxMaskEdit3.Text:= FloatToStr(StrToFloat(cxMaskEdit3.Text) +  StrToFloat(Caption));
        CalcSum();
    end;
    cxMaskEdit10.SetFocus;
    cxComboBox7.ItemIndex:=-1;
    cxMaskEdit8.Text:='0';
    cxMaskEdit7.Text:='0';
    cxMaskEdit6.Text:='0';
    cxMaskEdit10.text:='';
    cxMaskEdit11.text:='';
end;

procedure TInvoiceBuy.cxComboBox2PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox4.ItemIndex:=cxComboBox2.ItemIndex;
    cxComboBox5.ItemIndex:=cxComboBox2.ItemIndex;
    cxComboBox7.ItemIndex:=cxComboBox2.ItemIndex;
end;

procedure TInvoiceBuy.cxButton8Click(Sender: TObject);
begin
    if cxListView1.ItemIndex >= 0 then
       cxListView1.Items.Delete(cxListView1.ItemIndex);
    CalcSum();
end;

procedure TInvoiceBuy.cxButton5Click(Sender: TObject);
begin
    if RecSelect > 0 then
    begin
        If MessageDlg('„«Ì· »Â Õ–› «ÿ·«⁄«  ›Êﬁ „Ì »«‘Ìœø',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
        begin
            DM.Delete(TableName1,'num='+ inttostr(RecSelect),0);
            DM.Delete(TableName2,'num='+ inttostr(RecSelect),0);

            DM.FillReportDay('›«ò Ê— Œ—Ìœ','Õ–› ›«ò Ê— Œ—Ìœ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' «“ ›—Ê‘‰œÂ '+cxComboBox3.Text);
            DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('›«ò Ê— Œ—Ìœ') + ',' +
                                QuotedStr('Õ–› ›«ò Ê— Œ—Ìœ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' «“ ›—Ê‘‰œÂ '+cxComboBox3.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));
            cxGroupBox1.Enabled:=False;                               
        end
        else
        Abort;
        EmptyTextBox;
        DM.AlarmStorage;
    end;
end;

procedure TInvoiceBuy.cxButton4Click(Sender: TObject);
var
    i : integer;
begin
    if RecSelect > 0 then
    begin
        if DM.GetAlarm(cxTextEdit1,'‘„«—Â ›«ò Ê— —« Ê«—œ ò‰Ìœ')=False then
           exit;
        if DM.GetAlarm(cxMaskEdit1,' «—ÌŒ ›«ò Ê— —« Ê«—œ ò‰Ìœ')=False then
           exit;
        if DM.GetAlarm(cxComboBox3,'›—Ê‘‰œÂ —« «‰ Œ«» ò‰Ìœ')=False then
           exit;
        if cxListView1.Items.Count < 0 then
        begin
            MessageDlg('›«ò Ê— ›«ﬁœ ò«·« „Ì »«‘œ Ê ﬁ«»· –ŒÌ—Â ”«“Ì ‰Ì” ',mtInformation,[mbOK],0);
            cxComboBox7.SetFocus;
            exit;
        end;

        if StrToFloat(cxMaskEdit4.Text) < 0 then
        begin
            MessageDlg('„Ì“«‰  Œ›Ì› Ê«—œ ‘œÂ «“ ﬁÌ„  ò· ›«ò Ê— »Ì‘ — «” ',mtInformation,[mbOK],0);
            cxMaskEdit2.SetFocus;
            Exit;
        end;

        DM.Delete(TableName2,'num='+ inttostr(RecSelect),0);

        DM.Update(TableName1,'code=' + cxTextEdit1.Text + ',' +
                             'date=' + QuotedStr(cxMaskEdit1.text) + ',' +
                             'seller=' + cxComboBox1.text + ',' +
                             'discount=' + cxMaskEdit2.Text + ',' +
                             'description=' + QuotedStr(cxMemo1.Text) + ',' +
                             'DateSave=' + QuotedStr(Main.DateNow) + ',' +
                             'TimeSave=' + QuotedStr(Main.TimeNow) + ',' +
                             'UserSave=' + QuotedStr(Main.UserNow) + ',' +
                             'DocNo=' + inttostr(Main.DocNumber)
                            ,'num='+ inttostr(RecSelect));

       for i:=0 to cxListView1.Items.Count-1 do
       begin                     //'num,no,StorageNO,code,count,Disc,price,SalePrice,Persent,DocNO';
           Dm.insert(TableName2,FieldName2,inttostr(RecSelect) + ',' +
                                           cxListView1.Items.Item[i].SubItems.Strings[5] + ',' +
                                           cxListView1.Items.Item[i].SubItems.Strings[6] + ',' +
                                           cxListView1.Items.Item[i].SubItems.Strings[7] + ',' +
                                           cxListView1.Items.Item[i].SubItems.Strings[2] + ',' +
                                           cxListView1.Items.Item[i].SubItems.Strings[0] + ',' +
                                           cxListView1.Items.Item[i].SubItems.Strings[1] + ',' +
                                           cxListView1.Items.Item[i].SubItems.Strings[9] + ',' +
                                           cxListView1.Items.Item[i].SubItems.Strings[10] + ',' +
                                           inttostr(Main.DocNumber));
       end;
       DM.FillReportDay('›«ò Ê— Œ—Ìœ','«’·«Õ ›«ò Ê— Œ—Ìœ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' «“ ›—Ê‘‰œÂ '+cxComboBox3.Text);
       DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('›«ò Ê— Œ—Ìœ') + ',' +
                                QuotedStr('«’·«Õ ›«ò Ê— Œ—Ìœ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' «“ ›—Ê‘‰œÂ '+cxComboBox3.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));
       EmptyTextBox;
       DM.AlarmStorage;
       cxGroupBox1.Enabled:=False;
    end;
end;

procedure TInvoiceBuy.cxMaskEdit8PropertiesChange(Sender: TObject);
begin
    if (cxMaskEdit8.Text = '') or (cxMaskEdit8.Text = '0') then
       begin
           cxMaskEdit8.Text:='0';
           cxMaskEdit8.SelectAll;
       end;
end;

procedure TInvoiceBuy.cxButton6Click(Sender: TObject);
begin
    SearchInvoice := TSearchInvoice.Create(self);
    SearchInvoice.IT := IT_Buy;
    SearchInvoice.ShowModal;
    SearchInvoice.Destroy;
end;

procedure TInvoiceBuy.cxMaskEdit1Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit1);
end;

procedure TInvoiceBuy.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   F2 : TStorage;
begin
    case Key of
       VK_F2        : begin F2 := TStorage.Create(Self);
                            F2.ShowModal;
                            F2.Destroy;
                      end;
       VK_F3        : cxButton11.Click;
       VK_F6        : cxButton8.Click;
       VK_F7        : cxButton9.Click;
       VK_F8        : cxButton6.Click;
       VK_F9        : cxButton2.Click;
       VK_F10       : cxButton3.Click;
       VK_F11       : cxButton4.Click;
       VK_F12       : cxButton5.Click;
       VK_ESCAPE    : Close;
    end;
end;

procedure TInvoiceBuy.cxMaskEdit5PropertiesChange(Sender: TObject);
var
    S : String;
begin
    if RecSelect > 0 then
    begin
        cxListView1.Items.Clear;

        cxComboBox4.Properties.Items.Clear;
        cxComboBox5.Properties.Items.Clear;
        cxComboBox6.Properties.Items.Clear;
        cxComboBox7.Properties.Items.Clear;
        cxComboBox8.Properties.Items.Clear;
        cxComboBox2.Properties.Items.Clear;
        ComBuyPrice.Properties.Items.Clear;
        comSalePrice.Properties.Items.Clear;
        ComPersent.Properties.Items.Clear;
        DM.ADOReport.Close;
        DM.ADOReport.CommandText:='select k.Groupcode,s.storageno SNO,s3.[name] Sname,s.Code Scode,k.Code Ucode,k.[name] Namekala,K.saleprice saleprice,K.buyprice buyprice,k.persent '+
        'from InvoicebuyDetials ib,Storage s,StorageL3 s3,kala k '+
        'where k.codekala=ib.code and s3.sn3=s.storageno and s.code=k.codekala and num='+cxMaskEdit5.Text +' '+
        'union '+
        'select k.Groupcode,s.storageno SNO,s3.[name] Sname,s.Code Scode,k.Code Ucode,k.[name] Namekala,K.saleprice saleprice,K.buyprice buyprice,k.persent '+
        'from Storage s,StorageL3 s3,kala k '+
        'where s3.sn3=s.storageno and s.code=k.codekala and s.storageno='+cxComboBox1.Text+' order by k.code ';

        DM.ADOReport.Open;
        cxmemo1.Text:=DM.ADOReport.CommandText;
        if DM.ADOReport.RecordCount > 0 then
        begin
            While Not DM.ADOReport.Eof do
            begin
                cxComboBox8.Properties.Items.Add(DM.ADOReport.FieldValues['SNO']);
                cxComboBox6.Properties.Items.Add(DM.ADOReport.FieldValues['Sname']);
                cxComboBox7.Properties.Items.Add(DM.ADOReport.FieldValues['Ucode']);
                cxComboBox4.Properties.Items.Add(DM.ADOReport.FieldValues['Namekala']);
                cxComboBox5.Properties.Items.Add(DM.ADOReport.FieldValues['Groupcode']);
                cxComboBox2.Properties.Items.Add(DM.ADOReport.FieldValues['Scode']);
                comSalePrice.Properties.Items.Add(DM.ADOReport.FieldValues['saleprice']);
                ComBuyPrice.Properties.Items.Add(DM.ADOReport.FieldValues['buyprice']);
                ComPersent.Properties.Items.Add(DM.ADOReport.FieldValues['Persent']);
                DM.ADOReport.Next;
            end;
        end;
        DM.ADOReport.close;
 
        Dm.Select( TableName2 , FieldName2 , 'num=' + inttostr(RecSelect));
        if DM.ADORun.RecordCount > 0 then
           while Not DM.ADORun.Eof do
           begin
               cxComboBox2.Text := DM.ADORun.FieldByName('code').Value;
               cxMaskEdit6.Text := DM.ADORun.FieldByName('Disc').Value;
               S := FloatToStr((StrToFloat((DM.ADORun.FieldValues['price'])* StrToFloat(DM.ADORun.FieldValues['Count']))-StrToFloat(cxMaskEdit6.Text)));
               with cxListView1.Items.Add do
               begin
                   Caption := FloatToStr( StrToFloat(S));
                   SubItems.Insert(0,cxMaskEdit6.Text);
                   SubItems.Insert(1,DM.ADORun.FieldValues['Price']);
                   SubItems.Insert(2,DM.ADORun.FieldValues['Count']);
                   SubItems.Insert(3,cxComboBox4.Text);
                   SubItems.Insert(4,cxComboBox7.Text);
                   SubItems.Insert(5,DM.ADORun.FieldValues['no']);
                   SubItems.Insert(6,DM.ADORun.FieldValues['StorageNO']);
                   SubItems.Insert(7,cxComboBox2.Text);
                   SubItems.Insert(8,'0');
                   SubItems.Insert(9,DM.ADORun.FieldValues['SalePrice']);
                   SubItems.Insert(10,DM.ADORun.FieldValues['Persent']);
               end;
               XL := DM.ADORun.FieldValues['StorageNO'];
               cxComboBox8.text :=inttostr(XL);
               DM.ADORun.Next;
           end;
        cxGroupBox1.Enabled:=True;
        CalcSum();   
    end;
end;

procedure TInvoiceBuy.cxComboBox4PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxMaskEdit11.Text := cxComboBox4.Text;
    cxComboBox7.ItemIndex:=cxComboBox4.ItemIndex;
    cxComboBox2.ItemIndex:=cxComboBox4.ItemIndex;
    cxComboBox5.ItemIndex:=cxComboBox4.ItemIndex;
end;

procedure TInvoiceBuy.cxButton7Click(Sender: TObject);
begin
{    DefineCoding := TDefineCoding.Create(Self);
    DefineCoding.Kind := Define_Customer;
    DefineCoding.ShowModal;
    DefineCoding.Destroy;
    DM.FillCombo(cxComboBox1,cxComboBox3,'code','name','Customer','','code,name');
    cxComboBox3.SetFocus;
    cxComboBox3.ItemIndex:=cxComboBox3.Properties.Items.Count-1
}    
end;

procedure TInvoiceBuy.cxMaskEdit7PropertiesChange(Sender: TObject);
begin
    if (cxMaskEdit7.Text = '') or (cxMaskEdit7.Text = '0') then
       begin
           cxMaskEdit7.Text:='0';
           cxMaskEdit7.SelectAll;
       end;
end;

procedure TInvoiceBuy.cxComboBox7PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox4.ItemIndex:=cxComboBox7.ItemIndex;
    cxComboBox5.ItemIndex:=cxComboBox7.ItemIndex;
    cxComboBox2.ItemIndex:=cxComboBox7.ItemIndex;
    cxComboBox6.ItemIndex:=cxComboBox7.ItemIndex;
    if cxComboBox7.ItemIndex<=ComSalePrice.Properties.Items.Count then
       ComSalePrice.ItemIndex := cxComboBox7.ItemIndex
       else
       ComSalePrice.ItemIndex := -1;
end;

procedure TInvoiceBuy.cxComboBox5PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox4.ItemIndex:=cxComboBox5.ItemIndex;
    cxComboBox2.ItemIndex:=cxComboBox5.ItemIndex;
    cxComboBox7.ItemIndex:=cxComboBox5.ItemIndex;
end;

procedure TInvoiceBuy.cxComboBox6PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox8.ItemIndex:=cxComboBox6.ItemIndex
end;

procedure TInvoiceBuy.cxComboBox8PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox6.ItemIndex:=cxComboBox8.ItemIndex;
end;

procedure TInvoiceBuy.ComSalePricePropertiesEditValueChanged(
  Sender: TObject);
begin
    ComBuyPrice.ItemIndex := ComSalePrice.ItemIndex;
    ComPersent.ItemIndex := ComSalePrice.ItemIndex;
    if ComBuyPrice.Text <> '' then
       cxMaskEdit8.Text := ComBuyPrice.Text
       else
       cxMaskEdit8.Text := '0';
end;

procedure TInvoiceBuy.ComPersentPropertiesEditValueChanged(
  Sender: TObject);
begin
    ComSalePrice.ItemIndex := ComPersent.ItemIndex;
end;

procedure TInvoiceBuy.cxButton11Click(Sender: TObject);
Var
    F : TKala;
begin
    F := TKala.Create(Self);
    F.InType := IN_BUY;
    F.ShowModal;
    F.Destroy;
end;

procedure TInvoiceBuy.cxMaskEdit6PropertiesChange(Sender: TObject);
begin
    if (cxMaskEdit6.Text = '') OR (cxMaskEdit6.Text = '0') then
       begin
           cxMaskEdit6.Text:='0';
           cxMaskEdit6.SelectAll;
       end;
end;

procedure TInvoiceBuy.cxMaskEdit10PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
    cxComboBox7.ItemIndex:=-1;
    cxbutton9.Default := True;
    if cxMaskEdit10.Text <>'' then
       begin
           cxComboBox7.Text := cxMaskEdit10.Text;
           cxMaskEdit7.SetFocus;
       end
       else
       cxComboBox7.ItemIndex:=-1;

    if cxComboBox7.ItemIndex < 0 then
    begin
        MessageDlg('ò«·«ÌÌ »« òœ Ê«—œ ‘œÂ Ì«›  ‰‘œ.',mtInformation,[mbOK],0);
        cxMaskEdit10.SetFocus;
        cxMaskEdit10.SelectAll;
        cxbutton9.Default := False;
    end;
end;

procedure TInvoiceBuy.cxButton10Click(Sender: TObject);
var
    Mem : TfrxMemoView;
    //Pic : TfrxPictureView;
begin
    if (NewFactor > 0) or (RecSelect > 0) then
    begin
        DM.ADOspReport.Close;
        DM.ADOspReport.Parameters.Clear;
        DM.ADOspReport.ProcedureName:='dbo.Print_InvoiceBuy';
        DM.ADOspReport.Parameters.Refresh;
        DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxMaskEdit5.Text;
        DM.frxReport1.LoadFromFile(Main.WPath + 'Report\InvoiceBuyPrint.fr3');
        DM.ADOspReport.Open;

        Mem := DM.frxReport1.FindObject('Memo6') AS TfrxMemoView;
        Mem.Text := main.TitleReport;

        //Pic := DM.frxReport1.FindObject('Picture1') AS TfrxPictureView;
        //Pic.Picture.LoadFromFile(main.WPath+'\Logo.jpg');

        Mem := DM.frxReport1.FindObject('Memo266') AS TfrxMemoView;
        Mem.Text := Main.UserNow;
        Mem := DM.frxReport1.FindObject('Memo25') AS TfrxMemoView;
        Mem.Text := Main.DateNow;
        Mem := DM.frxReport1.FindObject('Memo27') AS TfrxMemoView;
        Mem.Text := main.Slogan;
        Mem := DM.frxReport1.FindObject('Memo26') AS TfrxMemoView;
        Mem.Text := main.AddTel;
        DM.frxReport1.ShowReport;
        cxButton2.SetFocus;
    end;
end;

procedure TInvoiceBuy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    ADO.Free;
    Main.dxBarLargeButton32.Enabled:=True;
end;

procedure TInvoiceBuy.cxComboBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox3.ItemIndex:=cxComboBox1.ItemIndex;
end;


End.
