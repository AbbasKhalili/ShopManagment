unit frmInvoiceSell;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmTMP, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, ComCtrls, cxMemo, cxListView,
  cxDropDownEdit, cxLabel, cxTextEdit, cxMaskEdit, ExtCtrls, cxControls,
  cxContainer, cxEdit, cxGroupBox, StdCtrls, cxButtons,frxClass,ADODB,DB,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, cxCheckBox;

Const
     TableName1 = 'InvoiceSell';
     FieldName1 = 'num,date,buyer,discount,description,DateSave,TimeSave,UserSave,DocNO';
     TableName2 = 'InvoiceSellDetials';
     FieldName2 = 'num,no,StorageNO,code,count,price,BuyPrice,Persent,tax,Disc,DocNO';

type
  TInvoiceSell = class(TTMP)
    cxMaskEdit1: TcxMaskEdit;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel8: TcxLabel;
    cxComboBox3: TcxComboBox;
    cxMaskEdit2: TcxMaskEdit;
    cxLabel3: TcxLabel;
    cxListView1: TcxListView;
    cxMaskEdit3: TcxMaskEdit;
    cxLabel4: TcxLabel;
    cxMaskEdit4: TcxMaskEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxMaskEdit6: TcxMaskEdit;
    cxMaskEdit7: TcxMaskEdit;
    cxMaskEdit8: TcxMaskEdit;
    cxGroupBox2: TcxGroupBox;
    cxMemo1: TcxMemo;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    Shape1: TShape;
    cxComboBox1: TcxComboBox;
    cxComboBox2: TcxComboBox;
    cxComboBox4: TcxComboBox;
    cxTextEdit1: TcxMaskEdit;
    cxComboBox5: TcxComboBox;
    cxComboBox6: TcxComboBox;
    ComSalePrice: TcxComboBox;
    ComBuyPrice: TcxComboBox;
    CmdQuch: TcxButton;
    CmdCost: TcxButton;
    cxLabel13: TcxLabel;
    cxButton7: TcxButton;
    cxComboBox7: TcxComboBox;
    cxButton10: TcxButton;
    ComPersent: TcxComboBox;
    cxButton11: TcxButton;
    cxMaskEdit5: TcxMaskEdit;
    cxLabel7: TcxLabel;
    cxMaskEdit9: TcxMaskEdit;
    cxMaskEdit10: TcxMaskEdit;
    cxMaskEdit11: TcxMaskEdit;
    cxCheckBox1: TcxCheckBox;
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
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton6Click(Sender: TObject);
    procedure CmdCostClick(Sender: TObject);
    procedure CmdQuchClick(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure cxMaskEdit1Exit(Sender: TObject);
    procedure cxComboBox6PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxMaskEdit7PropertiesChange(Sender: TObject);
    procedure cxComboBox7PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure ComSalePricePropertiesEditValueChanged(Sender: TObject);
    procedure ComPersentPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxMaskEdit5PropertiesChange(Sender: TObject);
    procedure cxMaskEdit10PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
       NewFactor , OldInvoiceNum : Integer;
       DS : TDataSource;
       procedure EmptyTextBox();
       procedure CalcSum();
  public
       RecSelect : Integer;
  end;

var
  InvoiceSell: TInvoiceSell;

implementation

uses frmMain, frmSearchInvoice, frmCostResive, frmQuchResive,
  frmDefineCoding, frmKala, frmStorage, frmDM;

{$R *.dfm}

procedure TInvoiceSell.EmptyTextBox();
begin
    cxTextEdit1.Text:='';
    cxComboBox2.ItemIndex:=-1;
    cxComboBox7.ItemIndex:=-1;
    cxMaskEdit1.text:='';
    cxComboBox4.text:='';
    cxMaskEdit1.text:='0';
    cxMaskEdit7.text:='0';cxMaskEdit8.text:='0';cxMaskEdit4.text:='0';
    cxMaskEdit3.text:='0';cxMaskEdit2.text:='0';cxMaskEdit1.text:='';
    cxMaskEdit10.text:='';cxMaskEdit11.text:='';
    cxComboBox3.ItemIndex:=-1;
    cxMaskEdit9.Text:='0';cxMaskEdit5.Text:='0';
    cxMemo1.Text:='';
    cxListView1.Items.Clear;
    RecSelect:=0;
    NewFactor:=0;
end;

procedure TInvoiceSell.CalcSum();
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

procedure TInvoiceSell.FormShow(Sender: TObject);
begin
    DM.BTNState(cxButton2,cxButton3,cxButton4,cxButton5,cxButton6,main.Permission[40],main.Permission[40],main.Permission[41],main.Permission[42],'1');
    DS := TDataSource.Create(Self);
    DM.FillCombo(cxComboBox1,cxComboBox3,'code','name','Customer','','code,name');

    DM.ADOReport.Close;
    DM.ADOReport.CommandText:=' select s.storageno SNO,s3.[name] Sname,s.Code Scode,k.Code Ucode,k.[name] Namekala,K.saleprice saleprice,K.buyprice buyprice,k.persent ' +
                              ' from Storage s,StorageL3 s3,kala k ' +
                              ' where s3.sn3=s.storageno and s.code=k.codekala order by k.code';
    DM.ADOReport.Open;
    if DM.ADOReport.RecordCount>0 then
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
            ComPersent.Properties.Items.Add(DM.ADOReport.FieldValues['persent']);
            DM.ADOReport.Next;
        end;
    end;
    DM.ADOReport.close;

    cxMaskEdit6.Text := Main.Tax;
    cxButton2.SetFocus;
end;

procedure TInvoiceSell.cxButton2Click(Sender: TObject);
begin
    cxGroupBox1.Enabled:=True;
    cxCheckBox1.Checked:=false;
    EmptyTextBox;
    NewFactor := DM.GetFieldMax(TableName1);
    cxTextEdit1.text := inttostr(NewFactor);
    OldInvoiceNum := NewFactor;
    cxComboBox3.Text:='„ ›—ﬁÂ';
    cxButton10.Enabled:=False;
    cxMaskEdit1.Text:=main.DateNow;
    cxMaskEdit10.SetFocus;
end;

procedure TInvoiceSell.cxComboBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox1.ItemIndex := cxComboBox3.ItemIndex;
end;

procedure TInvoiceSell.cxButton3Click(Sender: TObject);
var
    i ,CR : integer;
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

        if StrToFloat(cxMaskEdit4.Text) < 0 then
        begin
            MessageDlg('„Ì“«‰  Œ›Ì› Ê«—œ ‘œÂ «“ ﬁÌ„  ò· ›«ò Ê— »Ì‘ — «” ',mtInformation,[mbOK],0);
            cxMaskEdit2.SetFocus;
            Exit;
        end;
                 //    'num,date,buyer,discount,description,DateSave,TimeSave,UserSave,DocNO
        Dm.insert(TableName1,FieldName1,cxTextEdit1.text + ',' +
                                        QuotedStr(cxMaskEdit1.text) + ',' +
                                        cxComboBox1.text + ',' +
                                        cxMaskEdit2.text + ',' +
                                        QuotedStr(cxMemo1.text) + ',' +
                                        QuotedStr(Main.DateNow) + ',' +
                                        QuotedStr(Main.TimeNow) + ',' +
                                        QuotedStr(Main.UserNow) + ',' +
                                        inttostr(Main.DocNumber));

        for i:=0 to cxListView1.Items.Count-1 do
        begin          //'num,no,StorageNO,code,count,price,BuyPrice,Persent,tax,Disc,DocNO';
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

        if cxCheckBox1.Checked = False then  //‰ﬁœÌ »«‘œ
        begin
            DM.FillReportDay('›«ò Ê— ›—Ê‘','À»  ›«ò Ê— ›—Ê‘ »Â ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' »Â Œ—Ìœ«— '+cxComboBox3.Text +' ‰ﬁœÌ ');
            DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('›«ò Ê— ›—Ê‘') + ',' +
                                QuotedStr('À»  ›«ò Ê— ›—Ê‘ »Â ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' »Â Œ—Ìœ«— '+cxComboBox3.Text+' ‰ﬁœÌ ') + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));


            CR := DM.GetFieldMax('CostResive');
            Dm.insert('CostResive','code,buyer,price,date,description,DateSave,TimeSave,UserSave,DocNO,invoice_number',
                                  inttostr(CR) + ',' +
                                  QuotedStr(cxComboBox1.text) + ',' +
                                  cxMaskEdit4.text + ',' +
                                  QuotedStr(cxMaskEdit1.text) + ',' +
                                  QuotedStr('»«»  ›«ò Ê— ‘„«—Â '+ cxTextEdit1.Text) + ',' +
                                  QuotedStr(Main.DateNow) + ',' +
                                  QuotedStr(Main.TimeNow) + ',' +
                                  QuotedStr(Main.UserNow) + ',' +
                                  intTostr(Main.DocNumber) + ',' +
                                  cxTextEdit1.Text);

            DM.insert('Cach','userid,ActivityDate,AC_CR',QuotedStr(Main.UserNow) + ',' +
                                                     QuotedStr(Main.DateNow) + ',' +
                                                     inttostr(CR));

            Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(Main.UserNow,main.DateNow));

            DM.FillReportDay('œ—Ì«›  ‰ﬁœÌ','À»  œ—Ì«›  ‰ﬁœÌ »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' «“ '+cxComboBox3.Text);
            DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('œ—Ì«›  ‰ﬁœÌ') + ',' +
                                QuotedStr('À»  œ—Ì«›  ‰ﬁœÌ »« ‘„«—Â '+inttostr(CR)+' »Â „»·€ '+cxMaskEdit4.text+ ' «“ '+cxComboBox3.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));
        End
        Else
        Begin
            DM.FillReportDay('›«ò Ê— ›—Ê‘','À»  ›«ò Ê— ›—Ê‘ »Â ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' »Â Œ—Ìœ«— '+cxComboBox3.Text +' €Ì— ‰ﬁœÌ ');
            DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('›«ò Ê— ›—Ê‘') + ',' +
                                QuotedStr('À»  ›«ò Ê— ›—Ê‘ »Â ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' »Â Œ—Ìœ«— '+cxComboBox3.Text+' €Ì— ‰ﬁœÌ ') + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));
        End;


        DM.AlarmStorage;

        cxButton2.SetFocus;
        if MessageDlg('›«ò Ê— ›—Ê‘ ’«œ— ‘œÂ ç«Å ‘Êœø',mtConfirmation,[mbNO,mbYes],0)=mrYes then
           cxButton10.Click;
          // else
           //Abort;
        EmptyTextBox();
        cxGroupBox1.Enabled:=False;
    end;
end;

procedure TInvoiceSell.cxButton9Click(Sender: TObject);
var
    S : String;
    Count,i: Integer;
    CountINStorage,X,C,XDis,Y: Double;
begin
    if DM.GetAlarm(cxComboBox5,'«‰»«— —« «‰ Œ«» ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit10,'ò«·«Ì „Ê—œ ‰Ÿ— —« «‰ Œ«» ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit7,' ⁄œ«œ Ì« „ﬁœ«— «“ ò«·« «‰ Œ«»Ì —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit5,'„Ì“«‰  Œ›Ì› ò«·« —« Ê«—œ ò‰Ìœ')=False then
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

    CountINStorage:=0;
    DM.ADORun.Close;
    DM.ADORun.CommandText:='select MinExists from Storage where StorageNO='+cxComboBox6.Text + ' AND code='+cxComboBox2.Text;
    DM.ADORun.Open;
    if DM.ADORun.RecordCount > 0 then
       begin
           CountINStorage := DM.ADORun.Fields[0].AsFloat;
       end
     else
       begin
           MessageDlg('«“ ò«·«Ì «‰ Œ«»Ì œ— «‰»«— „Ê—œ ‰Ÿ— „ÊÃÊœ ‰„Ì »«‘œ',mtInformation,[mbOK],0);
           cxMaskEdit10.SetFocus;
           exit;
       end;

    DM.ADOStored.Active:=False;
    DM.ADOStored.Parameters.Clear;
    DM.ADOStored.ProcedureName:='dbo.CountKala';
    DM.ADOStored.Parameters.Refresh;
    DM.ADOStored.Parameters.ParamValues['@SNO']:= strtoint(cxComboBox6.Text);
    DM.ADOStored.Parameters.ParamValues['@Kcode']:= strtoint(cxComboBox2.Text);
    DM.ADOStored.Parameters.ParamValues['@DNO']:= Main.DocNumber;
    DM.ADOStored.ExecProc;
    Count := DM.ADOStored.Parameters.ParamValues['@RETURN_VALUE'];
    if  (Count <= CountINStorage) or (Count < strtoint(cxMaskEdit7.Text)) then
    begin
        C:=Count-strtoint(cxMaskEdit7.Text);
        If C<0 then  C:=0;
        MessageDlg('«“ ò«·«Ì «‰ Œ«» ‘œÂ œ— «‰»«— »Â „ﬁœ«— ò«›Ì „ÊÃÊœ ‰Ì” '+ #13+#13+ '„ﬁœ«— ò«·«Ì ' + cxComboBox4.Text + ' : ' + FloatTostr(C) ,mtInformation,[mbOK],0);
        cxMaskEdit10.SetFocus;
        exit;
    end;

    for i:=0 to cxListView1.Items.Count-1 do
       if cxComboBox7.Text = cxListView1.Items.Item[i].SubItems.Strings[5] then
          if cxComboBox6.Text = cxListView1.Items.Item[i].SubItems.Strings[7] then
          begin
             XDis := strtoFloat(cxListView1.Items.Item[i].SubItems.Strings[0]);
             XDis := XDis + strtoFloat(cxMaskEdit5.Text);

             If NewFactor > 0 then
             Begin
                 X := strtoFloat(cxListView1.Items.Item[i].SubItems.Strings[2]);
                 X := X + strtoFloat(cxMaskEdit7.Text);
                 if Count < X then
                 begin
                     C:=Count - X;
                     If C<0 then  C:=0;
                     MessageDlg('«“ ò«·«Ì «‰ Œ«» ‘œÂ œ— «‰»«— »Â „ﬁœ«— ò«›Ì „ÊÃÊœ ‰Ì” '+ #13+#13+ '„ﬁœ«— ò«·«Ì ' + cxComboBox4.Text + ' : ' + Floattostr(C) ,mtInformation,[mbOK],0);
                     cxMaskEdit7.SetFocus;
                     exit;
                 end;
             End;

             If RecSelect > 0 then
             Begin
                 X := strtoint(cxListView1.Items.Item[i].SubItems.Strings[2]);
                 X := X + strtoint(cxMaskEdit7.Text);
                 Y := X - Count;
                 if Count < Y then
                 begin
                     C:=Count - X;
                     If C<0 then  C:=0;
                     MessageDlg('«“ ò«·«Ì «‰ Œ«» ‘œÂ œ— «‰»«— »Â „ﬁœ«— ò«›Ì „ÊÃÊœ ‰Ì” '+ #13+#13+ '„ﬁœ«— ò«·«Ì ' + cxComboBox4.Text + ' : ' + Floattostr(C) ,mtInformation,[mbOK],0);
                     cxMaskEdit7.SetFocus;
                     exit;
                 end;
             End;
             cxListView1.Items.Item[i].SubItems.Strings[2]:= Floattostr(X);

             S :=FloatToStr((StrToFloat(cxMaskEdit8.Text)* (StrToFloat(cxMaskEdit6.Text)))/100);
             S :=FloatToStr(StrToFloat(S) + StrToFloat(cxMaskEdit8.Text));

             cxListView1.Items.item[i].Caption := FloatToStr((StrToFloat(S) * X)-XDis);
             cxListView1.Items.Item[i].SubItems.Strings[0]:= FloattoStr(XDis);

             CalcSum();

             cxMaskEdit10.SetFocus;
             cxMaskEdit10.Text:='';
             cxComboBox7.ItemIndex:=-1;
             cxComboBox2.ItemIndex:=-1;
             cxMaskEdit8.Text:='0';
             cxMaskEdit7.Text:='0';
             cxMaskEdit5.Text:='0';
             Exit;
          end;

    S := FloatToStr(((StrToFloat(cxMaskEdit8.Text)* (StrToFloat(cxMaskEdit6.Text)))/100));
    S := FloatToStr(StrToFloat(S) + StrToFloat(cxMaskEdit8.Text));

    with cxListView1.Items.Add do
    begin
        Caption := FloatToStr( StrToFloat(S) * StrToFloat(cxMaskEdit7.Text)-StrToFloat(cxMaskEdit5.Text));
        SubItems.Insert(0,cxMaskEdit5.Text);
        SubItems.Insert(1,S);
        SubItems.Insert(2,cxMaskEdit7.Text);
        Y := strtoFloat(cxMaskEdit7.Text);
        SubItems.Insert(3,cxMaskEdit6.Text);
        SubItems.Insert(4,cxComboBox4.Text);
        SubItems.Insert(5,cxComboBox7.Text);
        SubItems.Insert(6,inttostr(cxListView1.Items.Count));
        SubItems.Insert(7,cxComboBox6.Text);
        SubItems.Insert(8,cxComboBox2.Text);
        SubItems.Insert(9,ComBuyPrice.Text);
        SubItems.Insert(10,ComPersent.Text);
        CalcSum();
    end;
    cxMaskEdit10.SetFocus;
    cxMaskEdit10.Text:='';
    cxComboBox7.ItemIndex:=-1;
    cxComboBox2.ItemIndex:=-1;
    cxMaskEdit8.Text:='0';
    cxMaskEdit7.Text:='0';
    cxMaskEdit5.Text:='0';
end;

procedure TInvoiceSell.cxComboBox2PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox4.ItemIndex := cxComboBox2.ItemIndex;
    cxComboBox7.ItemIndex := cxComboBox2.ItemIndex;
    ComSalePrice.ItemIndex := cxComboBox2.ItemIndex;
    ComBuyPrice.ItemIndex := cxComboBox2.ItemIndex;
    if ComSaleprice.Text <> '' then
       cxMaskEdit8.Text := ComSaleprice.Text
       else
       cxMaskEdit8.Text := '0';
end;

procedure TInvoiceSell.cxButton8Click(Sender: TObject);
begin
    if cxListView1.ItemIndex >= 0 then
       cxListView1.Items.Delete(cxListView1.ItemIndex);
    CalcSum();
end;


procedure TInvoiceSell.cxButton5Click(Sender: TObject);
begin
    if RecSelect > 0 then
    begin
        If MessageDlg('„«Ì· »Â Õ–› «ÿ·«⁄«  ›Êﬁ „Ì »«‘Ìœø',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
        begin
            DM.Delete(TableName1,'num='+ inttostr(RecSelect),0);
            DM.Delete(TableName2,'num='+ inttostr(RecSelect),0);

            DM.ADOReport.Close;
            DM.ADOReport.CommandText:='Select code From CostResive where invoice_number='+inttostr(RecSelect);
            DM.ADOReport.Open;
            if DM.ADOReport.RecordCount > 0 then
               DM.Delete('Cach','AC_CR='+DM.ADOReport.Fields[0].AsString,0);
            DM.Delete('CostResive','invoice_number='+cxTextEdit1.Text,0);
            DM.ADOReport.Close;
            Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(Main.UserNow,main.DateNow));

            DM.FillReportDay('›«ò Ê— ›—Ê‘','Õ–› ›«ò Ê— ›—Ê‘ »Â ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' »Â Œ—Ìœ«— '+cxComboBox3.Text);
            DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('›«ò Ê— ›—Ê‘') + ',' +
                                QuotedStr('Õ–› ›«ò Ê— ›—Ê‘ »Â ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' »Â Œ—Ìœ«— '+cxComboBox3.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));
            cxGroupBox1.Enabled:=False;                    
        end
        else
        Abort;
        EmptyTextBox;
        cxButton10.Enabled:=False;
        DM.AlarmStorage;
    end;
end;

procedure TInvoiceSell.cxButton4Click(Sender: TObject);
var
    i, CR : integer;
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
        DM.Update(TableName1,'date='        + QuotedStr(cxMaskEdit1.text) + ',' +
                             'buyer='       + cxComboBox1.text + ',' +
                             'discount='    + cxMaskEdit2.Text + ',' +
                             'description=' + QuotedStr(cxMemo1.Text) + ',' +
                             'DateSave='    + QuotedStr(Main.DateNow) + ',' +
                             'TimeSave='    + QuotedStr(Main.TimeNow) + ',' +
                             'UserSave='    + QuotedStr(Main.UserNow) + ',' +
                             'DocNo='       + inttostr(Main.DocNumber)
                            ,'num='+ inttostr(RecSelect));
        for i:=0 to cxListView1.Items.Count-1 do
        begin          //'num,no,StorageNO,code,count,price,BuyPrice,Persent,tax,Disc,DocNO';
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
        DM.Delete('CostResive','invoice_number='+ inttostr(RecSelect),0);
        if cxCheckBox1.Checked = False then  //‰ﬁœÌ »«‘œ
        begin
            dm.ADOReport.Close;
            dm.ADOReport.CommandText:='select price from CostResive where invoice_number='+cxTextEdit1.Text;
            dm.ADOReport.open;
            if DM.ADOReport.RecordCount>0 then
               DM.Update('CostResive','price='+cxMaskEdit4.Text +','+
                                      '[Date]='+QuotedStr(cxMaskEdit1.text)
                                     ,'invoice_number='+cxTextEdit1.Text)
            else
            begin
               CR := DM.GetFieldMax('CostResive');
               Dm.insert('CostResive','code,buyer,price,date,description,DateSave,TimeSave,UserSave,DocNO,invoice_number',
                                  inttostr(CR) + ',' +
                                  QuotedStr(cxComboBox1.text) + ',' +
                                  cxMaskEdit4.text + ',' +
                                  QuotedStr(cxMaskEdit1.text) + ',' +
                                  QuotedStr('»«»  ›«ò Ê— ‘„«—Â '+ cxTextEdit1.Text) + ',' +
                                  QuotedStr(Main.DateNow) + ',' +
                                  QuotedStr(Main.TimeNow) + ',' +
                                  QuotedStr(Main.UserNow) + ',' +
                                  intTostr(Main.DocNumber) + ',' +
                                  cxTextEdit1.Text);

               DM.insert('Cach','userid,ActivityDate,AC_CR',QuotedStr(Main.UserNow) + ',' +
                                                     QuotedStr(Main.DateNow) + ',' +
                                                     inttostr(CR));
            end;

            Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(Main.UserNow,main.DateNow));

            DM.FillReportDay('›«ò Ê— ›—Ê‘','«’·«Õ ›«ò Ê— ›—Ê‘ »Â ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' »Â Œ—Ìœ«— '+cxComboBox3.Text + ' ‰ﬁœÌ ');
            DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('›«ò Ê— ›—Ê‘') + ',' +
                                QuotedStr('«’·«Õ ›«ò Ê— ›—Ê‘ »Â ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' »Â Œ—Ìœ«— '+cxComboBox3.Text + ' ‰ﬁœÌ ') + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));
        End
        else
        Begin
            Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(Main.UserNow,main.DateNow));

            DM.FillReportDay('›«ò Ê— ›—Ê‘','«’·«Õ ›«ò Ê— ›—Ê‘ »Â ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' »Â Œ—Ìœ«— '+cxComboBox3.Text + ' €Ì—‰ﬁœÌ ');
            DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('›«ò Ê— ›—Ê‘') + ',' +
                                QuotedStr('«’·«Õ ›«ò Ê— ›—Ê‘ »Â ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit4.Text + ' »Â Œ—Ìœ«— '+cxComboBox3.Text + ' €Ì—‰ﬁœÌ ') + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));
        End;

        cxButton10.Enabled:=False;
        EmptyTextBox;
        DM.AlarmStorage;
        cxGroupBox1.Enabled:=False;
    end;
end;

procedure TInvoiceSell.cxComboBox5PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox6.ItemIndex := cxComboBox5.ItemIndex;
end;

procedure TInvoiceSell.cxMaskEdit8PropertiesChange(Sender: TObject);
begin
    if (cxMaskEdit8.Text = '') OR (cxMaskEdit8.Text = '0') then
       begin
           cxMaskEdit8.Text:='0';
           cxMaskEdit8.SelectAll;
       end;
end;

procedure TInvoiceSell.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
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
       VK_F4        : CmdQuch.Click;
       VK_F5        : CmdCost.Click;
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

procedure TInvoiceSell.cxButton6Click(Sender: TObject);
begin
    SearchInvoice := TSearchInvoice.Create(self);
    SearchInvoice.IT := IT_Sale;
    SearchInvoice.Show;//Modal;
    //SearchInvoice.Destroy;
end;

procedure TInvoiceSell.CmdCostClick(Sender: TObject);
begin
    CostResive := TCostResive.Create(self);
    CostResive.cxTextEdit1.text := inttostr(DM.getmax('CostResive','Code',''));
    CostResive.cxMaskEdit1.Text := cxMaskEdit1.Text;
    CostResive.cxMaskEdit2.Text := cxMaskEdit4.Text;
    CostResive.cxComboBox3.ItemIndex := cxComboBox3.ItemIndex;
    CostResive.cxMemo1.Text := '»«»  ›«ò Ê— ‘„«—Â ' + cxTextEdit1.Text;
    CostResive.TypeCost:=KC_In_Sale;
    CostResive.InvoiceNum := cxTextEdit1.Text;
    CostResive.ShowModal;
    CostResive.Destroy;
end;

procedure TInvoiceSell.CmdQuchClick(Sender: TObject);
begin
    QuchResive := TQuchResive.Create(self);
    QuchResive.cxMaskEdit1.Text := cxMaskEdit1.Text;
    QuchResive.cxMaskEdit2.Text := cxMaskEdit4.Text;
    QuchResive.cxComboBox3.ItemIndex := cxComboBox3.ItemIndex;
    QuchResive.cxMemo1.Text := '»«»  ›«ò Ê— ‘„«—Â ' + cxTextEdit1.Text;
    QuchResive.TypeQuch:=KQ_In_Sale;
    QuchResive.InvoiceNum := cxTextEdit1.Text;
    QuchResive.ShowModal;
    QuchResive.Destroy;
end;

procedure TInvoiceSell.cxTextEdit1PropertiesChange(Sender: TObject);
var
    S : String;
begin
    if RecSelect > 0 then
    begin
        cxButton10.Enabled:=True;
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

procedure TInvoiceSell.cxMaskEdit1Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit1);
end;

procedure TInvoiceSell.cxComboBox6PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox5.ItemIndex := cxComboBox6.ItemIndex;
end;

procedure TInvoiceSell.cxComboBox4PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxMaskEdit11.Text := cxComboBox4.Text;
    cxComboBox2.ItemIndex := cxComboBox4.ItemIndex;
    cxComboBox7.ItemIndex := cxComboBox4.ItemIndex;
    ComSalePrice.ItemIndex := cxComboBox4.ItemIndex;
    ComBuyPrice.ItemIndex := cxComboBox4.ItemIndex;
    if ComSaleprice.Text <> '' then
       cxMaskEdit8.Text := ComSaleprice.Text
       else
       cxMaskEdit8.Text := '0';
end;

procedure TInvoiceSell.cxButton7Click(Sender: TObject);
begin
    DefineCoding := TDefineCoding.Create(Self);
    DefineCoding.Kind := Define_Customer;
    DefineCoding.ShowModal;
    DefineCoding.Destroy;
    DM.FillCombo(cxComboBox1,cxComboBox3,'code','name','Customer','','code,name');
    cxComboBox3.SetFocus;
    cxComboBox3.ItemIndex:=cxComboBox3.Properties.Items.Count-1
end;

procedure TInvoiceSell.cxMaskEdit7PropertiesChange(Sender: TObject);
begin
    if (cxMaskEdit7.Text = '') OR (cxMaskEdit7.Text = '0') then
       begin
           cxMaskEdit7.Text:='0';
           cxMaskEdit7.SelectAll;
       end;
end;

procedure TInvoiceSell.cxComboBox7PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox4.ItemIndex := cxComboBox7.ItemIndex;
    cxComboBox7.ItemIndex := cxComboBox7.ItemIndex;
    cxComboBox5.ItemIndex := cxComboBox7.ItemIndex;
    ComSalePrice.ItemIndex := cxComboBox7.ItemIndex;
    if ComSaleprice.Text <> '' then
       cxMaskEdit8.Text := ComSaleprice.Text
       else
       cxMaskEdit8.Text := '0';
end;

procedure TInvoiceSell.cxButton10Click(Sender: TObject);
var
    Mem : TfrxMemoView;
    //Pic : TfrxPictureView;
begin
    if (NewFactor > 0) or (RecSelect > 0) then
    begin
        DM.ADOspReport.Close;
        DM.ADOspReport.Parameters.Clear;
        DM.ADOspReport.ProcedureName:='dbo.Print_InvoiceSale';
        DM.ADOspReport.Parameters.Refresh;
        DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxTextEdit1.Text;
        DM.frxReport1.LoadFromFile(Main.WPath + 'Report\InvoicePrint.fr3');
        DM.ADOspReport.Open;

        //Pic := DM.frxReport1.FindObject('Picture1') AS TfrxPictureView;
        //Pic.Picture.LoadFromFile(main.WPath+'\Logo.jpg');

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

procedure TInvoiceSell.ComSalePricePropertiesEditValueChanged(
  Sender: TObject);
begin
    ComBuyPrice.ItemIndex := ComSalePrice.ItemIndex;
    ComPersent.ItemIndex:= ComSalePrice.ItemIndex;
end;

procedure TInvoiceSell.ComPersentPropertiesEditValueChanged(
  Sender: TObject);
begin
    ComSalePrice.ItemIndex:= ComPersent.ItemIndex;
end;

procedure TInvoiceSell.cxButton11Click(Sender: TObject);
Var
    F : TKala;
begin
    F := TKala.Create(Self);
    F.InType := IN_SALE;
    F.ShowModal;
    F.Destroy;
end;

procedure TInvoiceSell.cxMaskEdit5PropertiesChange(Sender: TObject);
begin
    if (cxMaskEdit5.Text = '') OR (cxMaskEdit5.Text = '0') then
       begin
           cxMaskEdit5.Text:='0';
           cxMaskEdit5.SelectAll;
       end;
end;

procedure TInvoiceSell.cxMaskEdit10PropertiesValidate(Sender: TObject;
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

procedure TInvoiceSell.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Main.dxBarLargeButton31.Enabled:=True;
    DS.Free;
end;

end.
