unit frmInvoiceBack;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ADODB ,frmDM, frmTMP, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, ComCtrls, cxGraphics, cxMemo, cxMaskEdit,
  cxLabel, cxTextEdit, cxDropDownEdit, cxListView, ExtCtrls, cxControls,
  cxContainer, cxEdit, cxGroupBox, StdCtrls, cxButtons,frxClass,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue;

Const
     TableName1 = 'InvoiceBack';
     FieldName1 = 'num,date,discount,buyer,description,DateSave,TimeSave,UserSave,DocNO';
     TableName2 = 'InvoiceBackDetials';
     FieldName2 = 'num,no,StorageNO,code,count,price,BuyPrice,Persent,tax,Disc,DocNO';

type
  TInvoiceBack = class(TTMP)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxMaskEdit3: TcxMaskEdit;
    cxLabel4: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxMemo1: TcxMemo;
    cxComboBox1: TcxComboBox;
    cxComboBox3: TcxComboBox;
    cxLabel8: TcxLabel;
    cxMaskEdit1: TcxMaskEdit;
    cxTextEdit1: TcxMaskEdit;
    Shape1: TShape;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxMaskEdit8: TcxMaskEdit;
    cxMaskEdit7: TcxMaskEdit;
    cxMaskEdit6: TcxMaskEdit;
    cxComboBox4: TcxComboBox;
    cxComboBox2: TcxComboBox;
    cxLabel6: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel11: TcxLabel;
    cxComboBox5: TcxComboBox;
    cxComboBox6: TcxComboBox;
    cxButton7: TcxButton;
    cxListView1: TcxListView;
    cxComboBox7: TcxComboBox;
    ComBuyPrice: TcxComboBox;
    ComSalePrice: TcxComboBox;
    ComPersent: TcxComboBox;
    cxButton11: TcxButton;
    cxMaskEdit5: TcxMaskEdit;
    cxLabel7: TcxLabel;
    cxMaskEdit2: TcxMaskEdit;
    cxLabel3: TcxLabel;
    cxMaskEdit4: TcxMaskEdit;
    cxLabel5: TcxLabel;
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
    procedure cxComboBox5PropertiesEditValueChanged(Sender: TObject);
    procedure cxMaskEdit8PropertiesChange(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxMaskEdit1Exit(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxComboBox6PropertiesEditValueChanged(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure cxComboBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxMaskEdit7PropertiesChange(Sender: TObject);
    procedure cxComboBox7PropertiesEditValueChanged(Sender: TObject);
    procedure ComSalePricePropertiesEditValueChanged(Sender: TObject);
    procedure ComPersentPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxMaskEdit5PropertiesChange(Sender: TObject);
    procedure cxMaskEdit10PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxButton10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
       NewFactor : Integer;
       ADO : TADODataSet;
       procedure EmptyTextBox();
       procedure CalcSum();
  public
       RecSelect : Integer;
  end;

var
  InvoiceBack: TInvoiceBack;

implementation

uses frmMain, frmSearchInvoice, frmDefineCoding, frmKala, frmStorage;

{$R *.dfm}

procedure TInvoiceBack.EmptyTextBox();
begin
    cxTextEdit1.Text:='';
    cxComboBox2.ItemIndex:=-1;
    cxComboBox7.ItemIndex:=-1;
    cxMaskEdit1.text:='';
    cxComboBox4.text:='';
    cxMaskEdit1.text:='0';
    cxMaskEdit7.text:='0';cxMaskEdit8.text:='0';cxMaskEdit4.text:='0';
    cxMaskEdit3.text:='0';cxMaskEdit1.text:='';cxMaskEdit2.text:='0';
    cxComboBox3.ItemIndex:=-1;cxMaskEdit10.Text:='';cxMaskEdit11.Text:='';
    cxMaskEdit9.Text:='0';cxMaskEdit5.Text:='0';
    cxMemo1.Text:='';
    cxListView1.Items.Clear;
    RecSelect:=0;
    NewFactor:=0;
end;

procedure TInvoiceBack.CalcSum();
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

procedure TInvoiceBack.FormShow(Sender: TObject);
begin
    DM.BTNState(cxButton2,cxButton3,cxButton4,cxButton5,cxButton6,main.Permission[45],main.Permission[45],main.Permission[46],main.Permission[47],'1');
    ADO := TADODataSet.Create(Self);
    ADO.Connection := DM.Connection;
    
    DM.FillCombo(cxComboBox1,cxComboBox3,'code','name','Customer','','code,name');

    DM.ADOReport.Close;
    DM.ADOReport.CommandText:=' select s.storageno SNO,s3.[name] Sname,s.Code Scode,k.Code Ucode,k.[name] Namekala,K.saleprice saleprice,K.buyprice buyprice,k.Persent ' +
                              ' from Storage s,StorageL3 s3,kala k ' +
                              ' where s3.sn3=s.storageno and s.code=k.codekala order by k.code';
    DM.ADOReport.Open;
    if DM.ADOReport.RecordCount > 0 then
    begin
        While Not DM.ADOReport.Eof do
        begin
            cxComboBox6.Properties.Items.Add(DM.ADOReport.FieldValues['SNO']);
            cxComboBox5.Properties.Items.Add(DM.ADOReport.FieldValues['Sname']);
            cxComboBox2.Properties.Items.Add(DM.ADOReport.FieldValues['Scode']);
            cxComboBox4.Properties.Items.Add(DM.ADOReport.FieldValues['Namekala']);
            cxComboBox7.Properties.Items.Add(DM.ADOReport.FieldValues['Ucode']);
            comSalePrice.Properties.Items.Add(DM.ADOReport.FieldValues['saleprice']);
            ComBuyPrice.Properties.Items.Add(DM.ADOReport.FieldValues['buyprice']);
            ComPersent.Properties.Items.Add(DM.ADOReport.FieldValues['Persent']);
            DM.ADOReport.Next;
        end;
    end;
    DM.ADOReport.close;
    cxMaskEdit6.Text := Main.Tax;
    cxButton2.SetFocus;
end;

procedure TInvoiceBack.cxButton2Click(Sender: TObject);
begin
    cxGroupBox1.Enabled:=True;
    EmptyTextBox;
    NewFactor := DM.GetFieldMax(TableName1);
    cxTextEdit1.text := intTOStr(NewFactor);
    cxMaskEdit1.Text := Main.DateNow;
    cxMaskEdit10.SetFocus;
    cxComboBox3.Text:='„ ›—ﬁÂ';
end;

procedure TInvoiceBack.cxComboBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox1.ItemIndex := cxComboBox3.ItemIndex;
end;

procedure TInvoiceBack.cxButton3Click(Sender: TObject);
var
    i : integer;
begin
    if NewFactor > 0 then
    begin
        if DM.GetAlarm(cxMaskEdit1,' «—ÌŒ ›«ò Ê— —« Ê«—œ ò‰Ìœ')=False then
           exit;
        if DM.GetAlarm(cxComboBox3,'Œ—Ìœ«— —« «‰ Œ«» ò‰Ìœ')=False then
           exit;
        if cxListView1.Items.Count < 0 then
        begin
            MessageDlg('›«ò Ê— ›«ﬁœ ò«·« „Ì »«‘œ Ê ﬁ«»· –ŒÌ—Â ”«“Ì ‰Ì” ',mtInformation,[mbOK],0);
            cxComboBox5.SetFocus;
            exit;
        end;
                     //    'num,date,discount,buyer,description,DateSave,TimeSave,UserSave,DocNO';
        Dm.insert(TableName1,FieldName1,cxTextEdit1.text + ',' +
                                        QuotedStr(cxMaskEdit1.text) + ',' +
                                        cxMaskEdit2.Text + ',' +
                                        cxComboBox1.text + ',' +
                                        QuotedStr(cxMemo1.text) + ',' +
                                        QuotedStr(Main.DateNow) + ',' +
                                        QuotedStr(Main.TimeNow) + ',' +
                                        QuotedStr(Main.UserNow) + ',' +
                                        inttostr(Main.DocNumber));

        for i:=0 to cxListView1.Items.Count-1 do
        begin                   //'num,no,StorageNO,code,count,price,BuyPrice,Persent,tax,Disc,DocNO';
            Dm.insert(TableName2,FieldName2,cxTextEdit1.text + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[6] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[7] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[8] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[2] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[1] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[9] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[10] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[3] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[0] + ',' +
                                            inttostr(Main.DocNumber));
        end;
        DM.FillReportDay('›«ò Ê— „—ÃÊ⁄Ì','À»  ›«ò Ê— »—ê‘  «“ ›—Ê‘  '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' «“ Œ—Ìœ«— '+cxComboBox3.Text);
        DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('›«ò Ê— „—ÃÊ⁄Ì') + ',' +
                                QuotedStr('À»  ›«ò Ê— »—ê‘  «“ ›—Ê‘  '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' «“ Œ—Ìœ«— '+cxComboBox3.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));
        Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(Main.UserNow,Main.DateNow));
        DM.AlarmStorage;
        EmptyTextBox;
        cxButton2.SetFocus;
        cxGroupBox1.Enabled:=False;
    end;
end;

procedure TInvoiceBack.cxButton9Click(Sender: TObject);
var
    S : String;
    i ,XinSell,XinBack: Integer;
    X ,XDis : Double;
begin
    if DM.GetAlarm(cxComboBox5,'«‰»«— —« «‰ Œ«» ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxComboBox2,'ò«·«Ì „Ê—œ ‰Ÿ— —« «‰ Œ«» ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit7,' ⁄œ«œ Ì« „ﬁœ«— «“ ò«·« «‰ Œ«»Ì —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit8,'ﬁÌ„  ò«·« —« Ê«—œ ò‰Ìœ')=False then
       exit;

    if strtoint(cxMaskEdit7.Text)<=0 then
    begin
        MessageDlg(' ⁄œ«œ ò«·«Ì Ê«—œ ‘œÂ „⁄ »— ‰„Ì »«‘œ',mtInformation,[mbOK],0);
        cxMaskEdit7.SetFocus;
        exit;
    end;
    if strtoint(cxMaskEdit8.Text)<=0 then
    begin
        MessageDlg('ﬁÌ„  ò«·«Ì «‰ Œ«»Ì „⁄ »— ‰„Ì »«‘œ',mtInformation,[mbOK],0);
        cxMaskEdit8.SetFocus;
        exit;
    end;

    if (strtoint(cxMaskEdit5.Text)<0) OR (strtoint(cxMaskEdit5.Text)>strtoint(cxMaskEdit8.Text)) then
    begin
        MessageDlg('„Ì“«‰  Œ›Ì› Ê«—œ ‘œÂ „⁄ »— ‰„Ì »«‘œ',mtInformation,[mbOK],0);
        cxMaskEdit5.SetFocus;
        exit;
    end;

    for i:=0 to cxListView1.Items.Count-1 do
       if cxComboBox7.Text = cxListView1.Items.Item[i].SubItems.Strings[5] then
          if cxComboBox6.Text = cxListView1.Items.Item[i].SubItems.Strings[7] then
          begin
             XDis := strtoFloat(cxListView1.Items.Item[i].SubItems.Strings[0]);
             XDis := XDis + strtoFloat(cxMaskEdit5.Text);

             X := strtoFloat(cxListView1.Items.Item[i].SubItems.Strings[2]);
             X := X + strtoFloat(cxMaskEdit7.Text);

             XinSell := 0;
             ADO.Close;
             ADO.CommandText:='select sum(d.[count]) From  InvoiceSell i inner join InvoiceSellDetials d on d.num = i.num where D.code='+cxComboBox2.Text;
             ADO.Open;
             if ADO.RecordCount>0 then
                XinSell := ADO.Fields[0].AsInteger;

             XinBack := 0;
             ADO.Close;
             ADO.CommandText:='select sum(d.[count]) From  Invoiceback i inner join InvoicebackDetials d on d.num = i.num where D.code='+cxComboBox2.Text;
             ADO.Open;
             if ADO.RecordCount>0 then
                XinBack := ADO.Fields[0].AsInteger;

             if  (XinSell-XinBack) < X then
             begin
                 MessageDlg('„Ì“«‰ ›—Ê‘ «“ ò«·«Ì «‰ Œ«»Ì ò„ — «“ »—ê‘  «“ ›—Ê‘ Ê«—œ ‘œÂ „Ì »«‘œ',mtInformation,[mbOK],0);
                 cxMaskEdit10.SetFocus;
                 exit;
             end;

             cxListView1.Items.Item[i].SubItems.Strings[2]:= Floattostr(X);

             S :=FloatToStr((StrToFloat(cxMaskEdit8.Text)* (StrToFloat(cxMaskEdit6.Text)))/100);
             S :=FloatToStr(StrToFloat(S) + StrToFloat(cxMaskEdit8.Text));

             cxListView1.Items.item[i].Caption := FloatToStr((StrToFloat(S) * X)-XDis);
             cxListView1.Items.Item[i].SubItems.Strings[0]:= FloatTostr(XDis);

             CalcSum();

             cxMaskEdit10.SetFocus;
             cxComboBox7.ItemIndex:=-1;
             cxComboBox2.ItemIndex:=-1;
             cxMaskEdit8.Text:='0';
             cxMaskEdit7.Text:='0';
             cxMaskEdit10.Text:='';
             cxMaskEdit11.Text:='';
             cxMaskEdit5.Text:='0';
             Exit;
          end;

    XinSell := 0;
    ADO.Close;
    ADO.CommandText:='select sum(d.[count]) From  InvoiceSell i inner join InvoiceSellDetials d on d.num = i.num where D.code='+cxComboBox2.Text;
    ADO.Open;
    if ADO.RecordCount>0 then
       XinSell := ADO.Fields[0].AsInteger;

    XinBack := 0;
    ADO.Close;
    ADO.CommandText:='select sum(d.[count]) From  Invoiceback i inner join InvoicebackDetials d on d.num = i.num where D.code='+cxComboBox2.Text;
    ADO.Open;
    if ADO.RecordCount>0 then
       XinBack := ADO.Fields[0].AsInteger;

    if  (XinSell-XinBack) < (strtoint(cxMaskEdit7.Text)) then
    begin
        MessageDlg('„Ì“«‰ ›—Ê‘ «“ ò«·«Ì «‰ Œ«»Ì ò„ — «“ »—ê‘  «“ ›—Ê‘ Ê«—œ ‘œÂ „Ì »«‘œ',mtInformation,[mbOK],0);
        cxMaskEdit10.SetFocus;
        exit;
    end;

    S :=FloatToStr((StrToFloat(cxMaskEdit8.Text)* (StrToFloat(cxMaskEdit6.Text)))/100);
    S :=FloatToStr(StrToFloat(S) + StrToFloat(cxMaskEdit8.Text));

    with cxListView1.Items.Add do
    begin
        Caption := FloatToStr( StrToFloat(S) * StrToFloat(cxMaskEdit7.Text)-StrToFloat(cxMaskEdit5.Text));
        SubItems.Insert(0,cxMaskEdit5.Text);
        SubItems.Insert(1,S);
        SubItems.Insert(2,cxMaskEdit7.Text);
        SubItems.Insert(3,cxMaskEdit6.Text);
        SubItems.Insert(4,cxComboBox4.Text);
        SubItems.Insert(5,cxComboBox7.Text);
        SubItems.Insert(6,inttostr(cxListView1.Items.Count));
        SubItems.Insert(7,cxComboBox6.Text);
        SubItems.Insert(8,cxComboBox2.Text);
        SubItems.Insert(9,ComBuyPrice.Text);
        SubItems.Insert(10,ComPersent.Text);
        //cxMaskEdit3.Text:= FloatToStr(StrToFloat(cxMaskEdit3.Text) +  StrToFloat(Caption));
        CalcSum();
    end;
    cxMaskEdit10.SetFocus;
    cxComboBox2.ItemIndex:=-1;
    cxComboBox7.ItemIndex:=-1;
    cxMaskEdit8.Text:='0';
    cxMaskEdit7.Text:='0';
    cxMaskEdit5.Text:='0';
    cxMaskEdit10.Text:='';
    cxMaskEdit11.Text:='';
end;

procedure TInvoiceBack.cxComboBox2PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox4.ItemIndex := cxComboBox2.ItemIndex;
    cxComboBox7.ItemIndex := cxComboBox2.ItemIndex;
end;

procedure TInvoiceBack.cxButton8Click(Sender: TObject);
begin
    if cxListView1.ItemIndex >=0 then
       cxListView1.Items.Delete(cxListView1.ItemIndex);
    CalcSum();
end;

procedure TInvoiceBack.cxButton5Click(Sender: TObject);
begin
    if RecSelect > 0 then
    begin
        If MessageDlg('„«Ì· »Â Õ–› «ÿ·«⁄«  ›Êﬁ „Ì »«‘Ìœø',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
        begin
            DM.Delete(TableName1,'num='+ inttostr(RecSelect),0);
            DM.Delete(TableName2,'num='+ inttostr(RecSelect),0);
            DM.FillReportDay('›«ò Ê— „—ÃÊ⁄Ì','Õ–› ›«ò Ê— »—ê‘  «“ ›—Ê‘ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' «“ Œ—Ìœ«— '+cxComboBox3.Text);
            DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('›«ò Ê— „—ÃÊ⁄Ì') + ',' +
                                QuotedStr('Õ–› ›«ò Ê— »—ê‘  «“ ›—Ê‘ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' «“ Œ—Ìœ«— '+cxComboBox3.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));
            Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(Main.UserNow,Main.DateNow));
        end
        else
        Abort;
        EmptyTextBox;
        DM.AlarmStorage;
        cxGroupBox1.Enabled:=False;
    end;
end;

procedure TInvoiceBack.cxButton4Click(Sender: TObject);
var
    i : integer;
begin
    if RecSelect > 0 then
    begin
        if DM.GetAlarm(cxMaskEdit1,' «—ÌŒ ›«ò Ê— —« Ê«—œ ò‰Ìœ')=False then
           exit;
        if DM.GetAlarm(cxComboBox3,'Œ—Ìœ«— —« «‰ Œ«» ò‰Ìœ')=False then
           exit;
        if cxListView1.Items.Count < 0 then
        begin
            MessageDlg('›«ò Ê— ›«ﬁœ ò«·« „Ì »«‘œ Ê ﬁ«»· –ŒÌ—Â ”«“Ì ‰Ì” ',mtInformation,[mbOK],0);
            cxComboBox5.SetFocus;
            exit;
        end;

        DM.Delete(TableName2,'num='+ inttostr(RecSelect),0);
        DM.Update(TableName1,'date=' + QuotedStr(cxMaskEdit1.text) + ',' +
                             'buyer=' + cxComboBox1.text + ',' +
                             'discount='    + cxMaskEdit2.Text + ',' +
                             'description=' + QuotedStr(cxMemo1.Text) + ',' +
                             'DateSave=' + QuotedStr(Main.DateNow) + ',' +
                             'TimeSave=' + QuotedStr(Main.TimeNow) + ',' +
                             'UserSave=' + QuotedStr(Main.UserNow) + ',' +
                             'DocNo=' + inttostr(Main.DocNumber)
                            ,'num='+ inttostr(RecSelect));

        for i:=0 to cxListView1.Items.Count-1 do
        begin                               //'num,no,StorageNO,code,count,price,tax,Disc,DocNO';
            Dm.insert(TableName2,FieldName2,inttostr(RecSelect) + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[6] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[7] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[8] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[2] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[1] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[9] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[10] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[3] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[0] + ',' +
                                            inttostr(Main.DocNumber));
        end;
        DM.FillReportDay('›«ò Ê— „—ÃÊ⁄Ì','«’·«Õ ›«ò Ê— »—ê‘  «“ ›—Ê‘ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' «“ Œ—Ìœ«— '+cxComboBox3.Text);
        DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('›«ò Ê— „—ÃÊ⁄Ì') + ',' +
                                QuotedStr('«’·«Õ ›«ò Ê— »—ê‘  «“ ›—Ê‘ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' «“ Œ—Ìœ«— '+cxComboBox3.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));
        Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(Main.UserNow,Main.DateNow));
        EmptyTextBox;
        DM.AlarmStorage;
        cxGroupBox1.Enabled:=False;
    end;
end;

procedure TInvoiceBack.cxComboBox5PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox6.ItemIndex := cxComboBox5.ItemIndex;
end;

procedure TInvoiceBack.cxMaskEdit8PropertiesChange(Sender: TObject);
begin
    if (cxMaskEdit8.Text = '') or (cxMaskEdit8.Text = '0') then
       begin
           cxMaskEdit8.Text:='0';
           cxMaskEdit8.SelectAll;
       end;
end;

procedure TInvoiceBack.cxButton6Click(Sender: TObject);
begin
    SearchInvoice := TSearchInvoice.Create(self);
    SearchInvoice.IT := IT_Back;
    SearchInvoice.Show;//Modal;
    //SearchInvoice.Destroy;
end;

procedure TInvoiceBack.cxMaskEdit1Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit1);
end;

procedure TInvoiceBack.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TInvoiceBack.cxComboBox6PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox5.ItemIndex := cxComboBox6.ItemIndex;
end;

procedure TInvoiceBack.cxTextEdit1PropertiesChange(Sender: TObject);
var
    S : String;
begin
    if RecSelect > 0 then
    begin
        cxListView1.Items.Clear;
        Dm.Select( TableName2 , FieldName2 , 'num=' + inttostr(RecSelect));
        if DM.ADORun.RecordCount > 0 then
           while Not DM.ADORun.Eof do
           begin
               cxComboBox6.Text := DM.ADORun.FieldByName('StorageNO').Value;
               cxComboBox2.Text := DM.ADORun.FieldByName('code').Value;
               cxMaskEdit5.Text := DM.ADORun.FieldByName('Disc').Value;
               S := FloatToStr((StrToFloat(DM.ADORun.FieldValues['price'])* (StrToFloat(DM.ADORun.FieldValues['tax'])))/100);
               S := FloatToStr(StrToFloat(S) + StrToFloat(DM.ADORun.FieldValues['price']));
               with cxListView1.Items.Add do
               begin
                   Caption := FloatToStr(StrToFloat(S)*StrToFloat(DM.ADORun.FieldValues['count'])-StrToFloat(cxMaskEdit5.Text));
                   SubItems.Insert(0,cxMaskEdit5.Text);
                   SubItems.Insert(1,S);
                   SubItems.Insert(2,DM.ADORun.FieldValues['Count']);
                   SubItems.Insert(3,DM.ADORun.FieldValues['tax']);
                   SubItems.Insert(4,cxComboBox4.Text);
                   SubItems.Insert(5,cxComboBox7.Text);
                   SubItems.Insert(6,DM.ADORun.FieldValues['no']);
                   SubItems.Insert(7,cxComboBox6.Text);
                   SubItems.Insert(8,cxComboBox2.Text);
                   SubItems.Insert(9,DM.ADORun.FieldValues['BuyPrice']);
                   SubItems.Insert(10,DM.ADORun.FieldValues['Persent']);
               end;
               DM.ADORun.Next;
           end;
        cxGroupBox1.Enabled:=True;
        CalcSum();   
    end;
end;

procedure TInvoiceBack.cxComboBox4PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxMaskEdit11.Text := cxComboBox4.Text;
    cxComboBox2.ItemIndex := cxComboBox4.ItemIndex;
end;

procedure TInvoiceBack.cxButton7Click(Sender: TObject);
begin
    DefineCoding := TDefineCoding.Create(Self);
    DefineCoding.Kind := Define_Customer;
    DefineCoding.ShowModal;
    DefineCoding.Destroy;
    DM.FillCombo(cxComboBox1,cxComboBox3,'code','name','Customer','','code,name');
    cxComboBox3.SetFocus;
    cxComboBox3.ItemIndex:=cxComboBox3.Properties.Items.Count-1
end;

procedure TInvoiceBack.cxMaskEdit7PropertiesChange(Sender: TObject);
begin
    if (cxMaskEdit7.Text = '') OR (cxMaskEdit7.Text = '0') then
       begin
           cxMaskEdit7.Text:='0';
           cxMaskEdit7.SelectAll;
       end;
end;

procedure TInvoiceBack.cxComboBox7PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox4.ItemIndex := cxComboBox7.ItemIndex;
    cxComboBox2.ItemIndex := cxComboBox7.ItemIndex;
    cxComboBox5.ItemIndex := cxComboBox7.ItemIndex;
    if cxComboBox7.ItemIndex<=ComSalePrice.Properties.Items.Count then
       ComSalePrice.ItemIndex := cxComboBox7.ItemIndex
       else
       ComSalePrice.ItemIndex := -1;
end;

procedure TInvoiceBack.ComSalePricePropertiesEditValueChanged(
  Sender: TObject);
begin
    ComBuyPrice.ItemIndex := ComSalePrice.ItemIndex;
    ComPersent.ItemIndex := ComSalePrice.ItemIndex;
    if ComSalePrice.Text <> '' then
       cxMaskEdit8.Text := ComSalePrice.Text
       else
       cxMaskEdit8.Text := '0';
end;

procedure TInvoiceBack.ComPersentPropertiesEditValueChanged(
  Sender: TObject);
begin
    ComSalePrice.ItemIndex := comPersent.ItemIndex;
end;

procedure TInvoiceBack.cxButton11Click(Sender: TObject);
Var
    F : TKala;
begin
    F := TKala.Create(Self);
    F.InType := IN_BACK;
    F.ShowModal;
    F.Destroy;
end;

procedure TInvoiceBack.cxMaskEdit5PropertiesChange(Sender: TObject);
begin
    if (cxMaskEdit5.Text = '') OR (cxMaskEdit5.Text = '0') then
       begin
           cxMaskEdit5.Text:='0';
           cxMaskEdit5.SelectAll;
       end;
end;

procedure TInvoiceBack.cxMaskEdit10PropertiesValidate(Sender: TObject;
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

procedure TInvoiceBack.cxButton10Click(Sender: TObject);
var
    Mem : TfrxMemoView;
    //Pic : TfrxPictureView;
begin
    if (NewFactor > 0) or (RecSelect > 0) then
    begin
        DM.ADOspReport.Close;
        DM.ADOspReport.Parameters.Clear;
        DM.ADOspReport.ProcedureName:='dbo.Print_InvoiceBack';
        DM.ADOspReport.Parameters.Refresh;
        DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxTextEdit1.Text;
        DM.frxReport1.LoadFromFile(Main.WPath + 'Report\InvoiceBackPrint.fr3');
        DM.ADOspReport.Open;

        Mem := DM.frxReport1.FindObject('Memo266') AS TfrxMemoView;
        Mem.Text := Main.UserNow;
        Mem := DM.frxReport1.FindObject('Memo25') AS TfrxMemoView;
        Mem.Text := Main.DateNow +'*'+ TimeToStr(Time);
        Mem := DM.frxReport1.FindObject('Memo26') AS TfrxMemoView;
        Mem.Text := main.AddTel;
        DM.frxReport1.ShowReport;
        cxButton2.SetFocus;

    end;
end;

procedure TInvoiceBack.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Main.dxBarLargeButton33.Enabled:=True;
    ADO.Free;
end;

end.
