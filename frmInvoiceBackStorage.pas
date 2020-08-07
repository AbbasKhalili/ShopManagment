unit frmInvoiceBackStorage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ADODB, DB, Menus, cxLookAndFeelPainters, dxSkinsCore,
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
     TableName1 = 'InvoiceBackStorage';
     FieldName1 = 'num,date,seller,description,DateSave,TimeSave,UserSave,DocNO';
     TableName2 = 'InvoiceBackStorageDetials';
     FieldName2 = 'num,no,StorageNO,code,count,price,SalePrice,Persent,DocNO';

type

   TInvoiceBackStorage = class(TForm)
    cxButton1: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    cxComboBox3: TcxComboBox;
    cxLabel1: TcxLabel;
    cxLabel8: TcxLabel;
    cxListView1: TcxListView;
    cxGroupBox2: TcxGroupBox;
    cxMemo1: TcxMemo;
    cxComboBox1: TcxComboBox;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel2: TcxLabel;
    cxTextEdit1: TcxMaskEdit;
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
    cxLabel4: TcxLabel;
    cxButton7: TcxButton;
    cxComboBox7: TcxComboBox;
    comSalePrice: TcxComboBox;
    cxComboBox6: TcxComboBox;
    cxComboBox8: TcxComboBox;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    ComBuyPrice: TcxComboBox;
    ComPersent: TcxComboBox;
    cxButton11: TcxButton;
    cxMaskEdit9: TcxMaskEdit;
    cxMaskEdit11: TcxMaskEdit;
    cxMaskEdit10: TcxMaskEdit;
    cxButton10: TcxButton;
    cxComboBox5: TcxComboBox;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxComboBox6PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox8PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox7PropertiesEditValueChanged(Sender: TObject);
    procedure comSalePricePropertiesEditValueChanged(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox4PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxMaskEdit1Exit(Sender: TObject);
    procedure ComBuyPricePropertiesEditValueChanged(Sender: TObject);
    procedure ComPersentPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxMaskEdit10PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxButton10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxComboBox5PropertiesEditValueChanged(Sender: TObject);
  private
       NewFactor ,SelStore : Integer;
       ADO : TADODataSet;
       procedure EmptyTextBox();
       procedure CalcSum();
  public
       RecSelect : Integer;
  end;

var
  InvoiceBackStorage: TInvoiceBackStorage;

implementation

uses frmDM, frmMain, frmDefineCoding, frmSearchInvoice, frmKala,
  frmStorage;

{$R *.dfm}

procedure TInvoiceBackStorage.EmptyTextBox();
begin
    cxTextEdit1.Text:='';
    cxComboBox7.ItemIndex:=-1;
    cxMaskEdit1.text:='';
    cxComboBox4.text:='';
    cxMaskEdit1.text:='0';
    cxMaskEdit7.text:='0';cxMaskEdit8.text:='0';
    cxMaskEdit3.text:='0';cxMaskEdit1.text:='';
    cxComboBox3.ItemIndex:=-1;cxMaskEdit9.Text:='0';
    cxComboBox6.ItemIndex:=0;
    cxMaskEdit10.Text:='';cxMaskEdit11.Text:='';
    cxMemo1.Text:='';
    cxListView1.Items.Clear;
    RecSelect:=0;
    NewFactor:=0;
end;

procedure TInvoiceBackStorage.CalcSum();
Var
    i : Integer;
begin
    cxMaskEdit3.text :='0';
    cxMaskEdit9.text :='0';
    for i:=0 to cxListView1.Items.Count-1 do
    begin
        cxMaskEdit3.text := FloatToStr( StrToFloat(cxMaskEdit3.text) + StrToFloat(cxListView1.Items.Item[i].Caption));
        cxMaskEdit9.Text := FloatTostr(StrtoFloat(cxMaskEdit9.Text) + StrtoFloat(cxListView1.Items.item[i].SubItems.Strings[1]));
    end;
end;

procedure TInvoiceBackStorage.FormShow(Sender: TObject);
begin
    //DM.FillCombo(cxComboBox1,cxComboBox3,'code','name','Customer','','code,name');
    DM.BTNState(cxButton2,cxButton3,cxButton4,cxButton5,cxButton6,main.Permission[55],main.Permission[55],main.Permission[56],main.Permission[57],'1');
    DM.FillCombo(cxComboBox1,cxComboBox3,'SN3','name','StorageL3','','SN3,name');
    ADO := TADODataSet.Create(Self);
    ADO.Connection:=DM.Connection;
    cxButton2.SetFocus;
    SelStore:=-1;
end;

procedure TInvoiceBackStorage.cxButton2Click(Sender: TObject);
begin
    cxGroupBox1.Enabled:=True;
    EmptyTextBox;
    cxTextEdit1.text := inttostr(DM.GetFieldMax(TableName1));
    NewFactor := strtoint(cxTextEdit1.text);
    //cxComboBox8.ItemIndex := 0;
    //cxComboBox3.Text:='„ ›—ﬁÂ';
    cxMaskEdit1.Text:=main.DateNow;
    cxComboBox3.SetFocus;
end;

procedure TInvoiceBackStorage.cxComboBox6PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox8.ItemIndex := cxComboBox6.ItemIndex;
end;

procedure TInvoiceBackStorage.cxComboBox8PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox6.ItemIndex:=cxComboBox8.ItemIndex;
end;

procedure TInvoiceBackStorage.cxComboBox7PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox2.ItemIndex:=cxComboBox7.ItemIndex;
    cxComboBox4.ItemIndex:=cxComboBox7.ItemIndex;
    comSalePrice.ItemIndex:=cxComboBox7.ItemIndex;
    cxComboBox6.ItemIndex:=cxComboBox7.ItemIndex;
end;

procedure TInvoiceBackStorage.comSalePricePropertiesEditValueChanged(
  Sender: TObject);
begin
    ComBuyPrice.ItemIndex:=comSalePrice.ItemIndex;
    ComPersent.ItemIndex:=comSalePrice.ItemIndex;    
end;

procedure TInvoiceBackStorage.cxButton7Click(Sender: TObject);
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

procedure TInvoiceBackStorage.cxButton9Click(Sender: TObject);
var
    Count , i : Integer;
    X : Double;
begin
    if DM.GetAlarm(cxComboBox6,'«‰»«— —« «‰ Œ«» ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxComboBox7,'ò«·«Ì „Ê—œ ‰Ÿ— —« «‰ Œ«» ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit7,' ⁄œ«œ Ì« „ﬁœ«— «“ ò«·« «‰ Œ«»Ì —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit8,'ﬁÌ„  ò«·« —« Ê«—œ ò‰Ìœ')=False then
       exit;

    if strtoint(cxMaskEdit7.Text)<=0 then
    begin
        MessageDlg(' ⁄œ«œ ò«·«Ì Ê«—œ ‘œÂ „⁄ »— ‰„Ì »«‘œ',mtWarning,[mbOK],0);
        cxMaskEdit7.SetFocus;
        cxMaskEdit7.SelectAll;
        exit;
    end;
    if strtoint(cxMaskEdit8.Text)<=0 then
    begin
        MessageDlg('ﬁÌ„  ò«·«Ì «‰ Œ«»Ì „⁄ »— ‰„Ì »«‘œ',mtWarning,[mbOK],0);
        cxMaskEdit8.SetFocus;
        cxMaskEdit8.SelectAll;
        exit;
    end;

    DM.ADOStored.Active:=False;
    DM.ADOStored.Parameters.Clear;
    DM.ADOStored.ProcedureName:='dbo.CountKala';
    DM.ADOStored.Parameters.Refresh;
    DM.ADOStored.Parameters.ParamValues['@SNO']:= strtoint(cxComboBox8.Text);
    DM.ADOStored.Parameters.ParamValues['@Kcode']:= strtoint(cxComboBox2.Text);
    DM.ADOStored.Parameters.ParamValues['@DNO']:= Main.DocNumber;
    DM.ADOStored.ExecProc;
    Count := DM.ADOStored.Parameters.ParamValues['@RETURN_VALUE'];
    if  Count < strtoint(cxMaskEdit7.Text) then
    begin
        MessageDlg('«“ ò«·«Ì «‰ Œ«» ‘œÂ œ— «‰»«— »Â „ﬁœ«— ò«›Ì „ÊÃÊœ ‰Ì” '+ #13+#13+ '„ﬁœ«— ò«·«Ì ' + cxComboBox4.Text + ' : ' + inttostr(Count) ,mtInformation,[mbOK],0);
        cxMaskEdit7.SetFocus;
        cxMaskEdit7.SelectAll;
        exit;
    end;

    for i:=0 to cxListView1.Items.Count-1 do
       if cxComboBox7.Text = cxListView1.Items.Item[i].SubItems.Strings[3] then
          if cxComboBox8.Text = cxListView1.Items.Item[i].SubItems.Strings[6] then
          begin
             X := strtoFloat(cxListView1.Items.Item[i].SubItems.Strings[1]);
             X := X + strtoFloat(cxMaskEdit7.Text);


             DM.ADOStored.Active:=False;
             DM.ADOStored.Parameters.Clear;
             DM.ADOStored.ProcedureName:='dbo.CountKala';
             DM.ADOStored.Parameters.Refresh;
             DM.ADOStored.Parameters.ParamValues['@SNO']:= strtoint(cxComboBox8.Text);
             DM.ADOStored.Parameters.ParamValues['@Kcode']:= strtoint(cxComboBox2.Text);
             DM.ADOStored.Parameters.ParamValues['@DNO']:= Main.DocNumber;
             DM.ADOStored.ExecProc;
             Count := DM.ADOStored.Parameters.ParamValues['@RETURN_VALUE'];
             if  Count < X then
             begin
                 MessageDlg('«“ ò«·«Ì «‰ Œ«» ‘œÂ œ— «‰»«— »Â „ﬁœ«— ò«›Ì „ÊÃÊœ ‰Ì” '+ #13+#13+ '„ﬁœ«— ò«·«Ì ' + cxComboBox4.Text + ' : ' + inttostr(Count) ,mtInformation,[mbOK],0);
                 cxMaskEdit7.SetFocus;
                 cxMaskEdit7.SelectAll;
                 exit;
             end;

             cxListView1.Items.Item[i].SubItems.Strings[1]:= Floattostr(X);
             cxListView1.Items.item[i].Caption := FloatToStr((StrToFloat(cxMaskEdit8.Text) * X));

             CalcSum();

             cxMaskEdit10.SetFocus;
             cxComboBox7.ItemIndex:=-1;
             cxComboBox2.ItemIndex:=-1;
             cxMaskEdit8.Text:='0';
             cxMaskEdit7.Text:='0';
             cxMaskEdit10.Text:='';
             cxMaskEdit11.Text:='';
             Exit;
          end;


    with cxListView1.Items.Add do
    begin
        Caption := FloatToStr(StrToFloat(cxMaskEdit8.Text)* (StrToFloat(cxMaskEdit7.Text)));
        SubItems.Insert(0,cxMaskEdit8.Text);
        SubItems.Insert(1,cxMaskEdit7.Text);
        SubItems.Insert(2,cxComboBox4.Text);
        SubItems.Insert(3,cxComboBox7.Text);
        SubItems.Insert(4,inttostr(cxListView1.Items.Count));
        SubItems.Insert(5,cxComboBox6.Text);
        SubItems.Insert(6,cxComboBox8.Text);
        SubItems.Insert(7,cxComboBox2.Text);
        SubItems.Insert(8,comSalePrice.Text);
        SubItems.Insert(9,ComPersent.Text);
        //cxMaskEdit3.Text := FloatToStr(StrToFloat(cxMaskEdit3.Text) +  StrToFloat(Caption));
        CalcSum();
    end;
    cxMaskEdit10.SetFocus;
    cxComboBox7.ItemIndex:=-1;
    cxComboBox2.ItemIndex:=-1;
    cxMaskEdit8.Text:='0';
    cxMaskEdit7.Text:='0';
    cxMaskEdit10.Text:='';
    cxMaskEdit11.Text:='';
end;

procedure TInvoiceBackStorage.cxButton8Click(Sender: TObject);
begin
    if cxListView1.ItemIndex >= 0 then
       cxListView1.Items.Delete(cxListView1.ItemIndex);
    CalcSum();
end;

procedure TInvoiceBackStorage.cxButton3Click(Sender: TObject);
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
            cxMaskEdit10.SetFocus;
            exit;
        end;

                         //  'num,date,seller,description,DateSave,TimeSave,UserSave,DocNO';
        Dm.insert(TableName1,FieldName1,cxTextEdit1.text + ',' +
                                        QuotedStr(cxMaskEdit1.text) + ',' +
                                        cxComboBox1.text + ',' +
                                        QuotedStr(cxMemo1.text) + ',' +
                                        QuotedStr(Main.DateNow) + ',' +
                                        QuotedStr(Main.TimeNow) + ',' +
                                        QuotedStr(Main.UserNow) + ',' +
                                        inttostr(Main.DocNumber));

        for i:=0 to cxListView1.Items.Count-1 do
        begin                        //'num,no,StorageNO,code,count,price,SalePrice,Persent,DocNO';
            Dm.insert(TableName2,FieldName2,cxTextEdit1.text + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[4] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[6] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[7] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[1] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[0] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[8] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[9] + ',' +
                                            inttostr(Main.DocNumber));
        end;
        DM.FillReportDay('„—ÃÊ⁄Ì «“ «‰»«—','À»  ›«ò Ê— „—ÃÊ⁄Ì «“ «‰»«— »Â ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit3.Text + ' »Â ›—Ê‘‰œÂ '+cxComboBox3.Text);
        DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('„—ÃÊ⁄Ì «“ «‰»«—') + ',' +
                                QuotedStr('À»  ›«ò Ê— „—ÃÊ⁄Ì «“ «‰»«— »Â ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit3.Text + ' »Â ›—Ê‘‰œÂ '+cxComboBox3.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));

        DM.AlarmStorage;
        EmptyTextBox();
        cxButton2.SetFocus;
        cxGroupBox1.Enabled:=False;
    end;
end;

procedure TInvoiceBackStorage.cxButton4Click(Sender: TObject);
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
            cxComboBox6.SetFocus;
            exit;
        end;

        DM.Delete(TableName2,'num='+ inttostr(RecSelect),0);

        DM.Update(TableName1,'date='        + QuotedStr(cxMaskEdit1.text) + ',' +
                             'seller='      + cxComboBox1.text + ',' +
                             'description=' + QuotedStr(cxMemo1.Text) + ',' +
                             'DateSave='    + QuotedStr(Main.DateNow) + ',' +
                             'TimeSave='    + QuotedStr(Main.TimeNow) + ',' +
                             'UserSave='    + QuotedStr(Main.UserNow) + ',' +
                             'DocNo='       + inttostr(Main.DocNumber)
                            ,'num='+ inttostr(RecSelect));

        for i:=0 to cxListView1.Items.Count-1 do
        begin                         //num,no,StorageNO,code,count,price,DocNO';
           Dm.insert(TableName2,FieldName2,cxTextEdit1.text + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[4] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[6] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[7] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[1] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[0] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[8] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[9] + ',' +
                                            inttostr(Main.DocNumber));
        end;
        DM.FillReportDay('„—ÃÊ⁄Ì «“ «‰»«—','«’·«Õ ›«ò Ê— „—ÃÊ⁄Ì «“ «‰»«— »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit3.Text + ' »Â ›—Ê‘‰œÂ '+cxComboBox3.Text);
        DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('„—ÃÊ⁄Ì «“ «‰»«—') + ',' +
                                QuotedStr('«’·«Õ ›«ò Ê— „—ÃÊ⁄Ì «“ «‰»«— »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit3.Text + ' »Â ›—Ê‘‰œÂ '+cxComboBox3.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));
        EmptyTextBox;
        DM.AlarmStorage;
        cxGroupBox1.Enabled:=False;
    end;
end;

procedure TInvoiceBackStorage.cxButton5Click(Sender: TObject);
begin
    if RecSelect > 0 then
    begin
        If MessageDlg('„«Ì· »Â Õ–› «ÿ·«⁄«  ›Êﬁ „Ì »«‘Ìœø',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
        begin
            DM.Delete(TableName1,'num='+ inttostr(RecSelect),0);
            DM.Delete(TableName2,'num='+ inttostr(RecSelect),0);
            DM.FillReportDay('„—ÃÊ⁄Ì «“ «‰»«—','Õ–› ›«ò Ê— „—ÃÊ⁄Ì «“ «‰»«— »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit3.Text + ' »Â ›—Ê‘‰œÂ '+cxComboBox3.Text);
            DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('„—ÃÊ⁄Ì «“ «‰»«—') + ',' +
                                QuotedStr('Õ–› ›«ò Ê— „—ÃÊ⁄Ì «“ «‰»«— »« ‘„«—Â '+cxTextEdit1.Text+' »Â „»·€ '+cxMaskEdit3.Text + ' »Â ›—Ê‘‰œÂ '+cxComboBox3.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));
        end
        else
        Abort;
        EmptyTextBox;
        DM.AlarmStorage;
        cxGroupBox1.Enabled:=False;
    end;
end;

procedure TInvoiceBackStorage.cxButton6Click(Sender: TObject);
begin
    SearchInvoice := TSearchInvoice.Create(self);
    SearchInvoice.IT := IT_BackStorage;
    SearchInvoice.Show;//Modal;
    //SearchInvoice.Destroy;
end;

procedure TInvoiceBackStorage.cxTextEdit1PropertiesChange(Sender: TObject);
begin
    if RecSelect > 0 then
    begin
        cxListView1.Items.Clear;
        Dm.Select( TableName2 , FieldName2 , 'num=' + inttostr(RecSelect));
        if DM.ADORun.RecordCount > 0 then
           while Not DM.ADORun.Eof do
           begin
               cxComboBox8.Text := DM.ADORun.FieldByName('StorageNO').Value;
               cxComboBox2.Text := DM.ADORun.FieldByName('code').Value;
               with cxListView1.Items.Add do
               begin
                   Caption := FloatToStr( StrToFloat(DM.ADORun.FieldValues['count']) * StrToFloat(DM.ADORun.FieldValues['price']));
                   SubItems.Insert(0,DM.ADORun.FieldValues['price']);
                   SubItems.Insert(1,DM.ADORun.FieldValues['Count']);
                   SubItems.Insert(2,cxComboBox4.Text);
                   SubItems.Insert(3,cxComboBox7.Text);
                   SubItems.Insert(4,DM.ADORun.FieldValues['no']);
                   SubItems.Insert(5,cxComboBox6.Text);
                   SubItems.Insert(6,cxComboBox8.Text);
                   SubItems.Insert(7,cxComboBox2.Text);
                   SubItems.Insert(8,DM.ADORun.FieldValues['SalePrice']);
                   SubItems.Insert(9,DM.ADORun.FieldValues['Persent']);
                   cxMaskEdit3.Text := FloatToStr(StrToFloat(cxMaskEdit3.Text) +  StrToFloat(Caption));
               end;
               DM.ADORun.Next;
           end;
        cxGroupBox1.Enabled:=True;
        CalcSum();   
    end;
end;

procedure TInvoiceBackStorage.cxComboBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox1.ItemIndex:=cxComboBox3.ItemIndex;

    cxComboBox8.Properties.Items.Clear;
    cxComboBox6.Properties.Items.Clear;
    cxComboBox2.Properties.Items.Clear;
    cxComboBox4.Properties.Items.Clear;
    cxComboBox7.Properties.Items.Clear;
    ComBuyPrice.Properties.Items.Clear;
    comSalePrice.Properties.Items.Clear;
    ComPersent.Properties.Items.Clear;

    if cxComboBox3.ItemIndex<0 then
       Exit;
    DM.ADOReport.Close;
    DM.ADOReport.CommandText:=' select s.storageno SNO,s3.[name] Sname,s.Code Scode,k.Code Ucode,k.[name] Namekala,K.saleprice saleprice,K.buyprice buyprice,k.Persent ' +
                              ' from Storage s,StorageL3 s3,kala k ' +
                              ' where s3.sn3=s.storageno and s.code=k.codekala and s.storageno='+cxComboBox1.Text + ' order by k.code';
    DM.ADOReport.Open;
    if DM.ADOReport.RecordCount > 0 then
    begin
        While Not DM.ADOReport.Eof do
        begin
            cxComboBox8.Properties.Items.Add(DM.ADOReport.FieldValues['SNO']);
            cxComboBox6.Properties.Items.Add(DM.ADOReport.FieldValues['Sname']);
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
end;

procedure TInvoiceBackStorage.cxComboBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox3.ItemIndex:=cxComboBox1.ItemIndex;
end;

procedure TInvoiceBackStorage.cxComboBox4PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxMaskEdit11.Text:=cxComboBox4.Text;
    cxComboBox2.ItemIndex:=cxComboBox4.ItemIndex;
    cxComboBox7.ItemIndex:=cxComboBox4.ItemIndex;
    comSalePrice.ItemIndex:=cxComboBox4.ItemIndex;
end;

procedure TInvoiceBackStorage.cxComboBox2PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox7.ItemIndex:=cxComboBox2.ItemIndex;
    cxComboBox4.ItemIndex:=cxComboBox2.ItemIndex;
    comSalePrice.ItemIndex:=cxComboBox2.ItemIndex;
end;

procedure TInvoiceBackStorage.cxTextEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TInvoiceBackStorage.cxMaskEdit1Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit1);
end;

procedure TInvoiceBackStorage.ComBuyPricePropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox2.ItemIndex:=ComBuyPrice.ItemIndex;
    cxComboBox4.ItemIndex:=ComBuyPrice.ItemIndex;
    cxComboBox7.ItemIndex:=ComBuyPrice.ItemIndex;
    
    cxComboBox5.Properties.Items.Clear;
    cxComboBox5.Properties.Items.Add(ComBuyPrice.Text);
    cxComboBox5.Properties.Items.Add(ComSalePrice.Text);
end;

procedure TInvoiceBackStorage.ComPersentPropertiesEditValueChanged(
  Sender: TObject);
begin
    comSalePrice.ItemIndex:=ComPersent.ItemIndex;
end;

procedure TInvoiceBackStorage.cxButton11Click(Sender: TObject);
Var
    F : TKala;
begin
    F := TKala.Create(Self);
    F.InType := IN_BACKS;
    F.ShowModal;
    F.Destroy;
end;

procedure TInvoiceBackStorage.cxMaskEdit10PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
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

procedure TInvoiceBackStorage.cxButton10Click(Sender: TObject);
var
    Mem : TfrxMemoView;
    //Pic : TfrxPictureView;
begin
    if (NewFactor > 0) or (RecSelect > 0) then
    begin
        DM.ADOspReport.Close;
        DM.ADOspReport.Parameters.Clear;
        DM.ADOspReport.ProcedureName:='dbo.Print_InvoiceBackStorage';
        DM.ADOspReport.Parameters.Refresh;
        DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxTextEdit1.Text;
        DM.frxReport1.LoadFromFile(Main.WPath + 'Report\InvoiceBackStoragePrint.fr3');
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

procedure TInvoiceBackStorage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Main.dxBarLargeButton34.Enabled:=True;
    ADO.Free;
end;

procedure TInvoiceBackStorage.cxComboBox5PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxMaskEdit8.Text:=cxComboBox5.Text;
end;

end.
