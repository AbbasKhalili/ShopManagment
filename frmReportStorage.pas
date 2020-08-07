unit frmReportStorage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, ADODB, DB, dxSkinsCore, dxSkinsDefaultPainters,
  cxGraphics, Menus, cxLookAndFeelPainters, cxCheckBox, StdCtrls,
  cxButtons, cxMaskEdit, cxTextEdit, cxDropDownEdit, cxRadioGroup,
  cxControls, cxContainer, cxEdit, cxImage, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TReportStorage = class(TForm)
    cxImage3: TcxImage;
    cxRadioButton1: TcxRadioButton;
    cxComboBox3: TcxComboBox;
    cxComboBox1: TcxComboBox;
    cxRadioButton2: TcxRadioButton;
    cxMaskEdit1: TcxMaskEdit;
    cxImage1: TcxImage;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxImage2: TcxImage;
    cxRadioButton3: TcxRadioButton;
    cxComboBox2: TcxComboBox;
    cxComboBox4: TcxComboBox;
    cxImage4: TcxImage;
    cxRadioButton4: TcxRadioButton;
    cxComboBox5: TcxComboBox;
    cxComboBox6: TcxComboBox;
    cxCheckBox1: TcxCheckBox;
    procedure FormShow(Sender: TObject);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxMaskEdit1Exit(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox5PropertiesEditValueChanged(Sender: TObject);
    procedure cxMaskEdit1PropertiesChange(Sender: TObject);
    procedure cxRadioButton2Click(Sender: TObject);
  private
        ADO : TADODataSet;
  public

  end;

var
  ReportStorage: TReportStorage;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TReportStorage.FormShow(Sender: TObject);
begin
    ADO := TADODataSet.Create(Self);
    ADO.Connection := DM.Connection;
    DM.FillCombo(cxComboBox6,cxComboBox5,'SN1','name','StorageL1','','SN1,name');
    DM.FillCombo(cxComboBox4,cxComboBox2,'SN2','name','StorageL2','','SN2,name');
    DM.FillCombo(cxComboBox1,cxComboBox3,'SN3','name','StorageL3','','SN3,name');
    if cxRadioButton1.Checked=true then
       cxComboBox3.SetFocus;
    if cxRadioButton2.Checked=true then
    begin
       cxMaskEdit1.SetFocus;
       cxMaskEdit1.Text := main.DateNow;
    end;
    if cxRadioButton3.Checked=true then
       cxComboBox2.SetFocus;
    if cxRadioButton4.Checked=true then
       cxComboBox5.SetFocus;
end;

procedure TReportStorage.cxComboBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox1.ItemIndex := cxComboBox3.ItemIndex;
    cxRadioButton1.Checked:=true;
end;

procedure TReportStorage.cxMaskEdit1Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit1);
end;

procedure TReportStorage.cxButton2Click(Sender: TObject);
var
    Mem : TfrxMemoView;
    Pic : TfrxPictureView;
    DD , Title,D1,D2,D3,D4,D5 : String;
    Xresult : integer;
begin
    if (cxRadioButton3.Checked=True) AND (cxComboBox2.ItemIndex < 0) then
       Exit;
    if (cxRadioButton1.Checked=True) AND (cxComboBox3.ItemIndex < 0) then
       Exit;
    if (cxRadioButton4.Checked=True) AND (cxComboBox5.ItemIndex < 0) then
       Exit;

    DM.ADOspReport.Close;
    DM.ADOspReport.Parameters.Clear;
    Title := '„ÊÃÊœÌ ›—Ê‘ê«Â';
//***********************************************************************************************
    if cxRadioButton1.Checked = True then
    begin
       if cxCheckBox1.Checked=False then
            DM.ADOspReport.ProcedureName:='dbo.ReportStorage'
         else
            DM.ADOspReport.ProcedureName:='dbo.ReportStorage_NOZero';

       DM.ADOspReport.Parameters.Refresh;
       DM.ADOspReport.Parameters.ParamByName('@SNO').Value := cxComboBox1.Text;
       DM.ADOspReport.Parameters.ParamByName('@DNO').Value := Main.DocNumber;
       DD := ' «  «—ÌŒ :  ' + Main.DateNow;
       DM.frxReport1.LoadFromFile(Main.WPath + 'Report\ExistsStorage.fr3');
    end;
//***********************************************************************************************
    if cxRadioButton2.Checked = True then
    begin
        DM.FixDate(cxMaskEdit1);
        if cxCheckBox1.Checked=False then
            DM.ADOspReport.ProcedureName:='dbo.ReportStorage_ToDate'
         else
            DM.ADOspReport.ProcedureName:='dbo.ReportStorage_ToDate_NoZero';


        DM.ADOspReport.Parameters.Refresh;
        DD := ' «  «—ÌŒ :  ' + cxMaskEdit1.Text;
        ADO.Close;
        ADO.CommandText:='select Docno from DocNO where dateopen<='+QuotedStr(cxMaskEdit1.Text) +' order by dateopen';
        ADO.Open;                                       
        if ADO.RecordCount > 0  then
           begin
               ADO.Last;
               DM.ADOspReport.Parameters.ParamByName('@DNO').Value := ADO.FieldValues['Docno'];
           end
        else
           begin
               DM.ADOspReport.Parameters.ParamByName('@DNO').Value := Main.DocNumber;
               DD := ' «  «—ÌŒ :  ' + main.DateNow;
               MessageDlg('œ—  «—ÌŒ „Ê—œ ‰Ÿ— Ê—ÊœÌ »Â ‰—„ «›“«— À»  ‰‘œÂ «” . „ÊÃÊœÌ «‰»«—  « «„—Ê“ ‰„«Ì‘ œ«œÂ „Ì ‘Êœ',mtInformation,[mbOK],0);
           end;
        ADO.Close;
        DM.frxReport1.LoadFromFile(Main.WPath + 'Report\ExistsStorage.fr3');
    end;
//***********************************************************************************************
    if cxRadioButton3.Checked = True then
    begin
        if cxCheckBox1.Checked=False then
            DM.ADOspReport.ProcedureName:='dbo.ReportStorageLevel2'
         else
            DM.ADOspReport.ProcedureName:='dbo.ReportStorageLevel2_NOZero';

        DM.ADOspReport.Parameters.Refresh;
        DM.ADOspReport.Parameters.ParamByName('@SN2').Value := cxComboBox4.Text;
        DD := '„ÊÃÊœÌ «‰»«— ”ÿÕ 2';
        DM.frxReport1.LoadFromFile(Main.WPath + 'Report\ExistsStorageLevel2.fr3');
    end;
//***********************************************************************************************
    if cxRadioButton4.Checked = True then
    begin
        if cxCheckBox1.Checked=False then
            DM.ADOspReport.ProcedureName:='dbo.ReportStorageLevel1'
         else
            DM.ADOspReport.ProcedureName:='dbo.ReportStorageLevel1_NOZero';

        DM.ADOspReport.Parameters.Refresh;
        DM.ADOspReport.Parameters.ParamByName('@SN1').Value := cxComboBox6.Text;
        DD := '„ÊÃÊœÌ «‰»«— ”ÿÕ 1';
        DM.frxReport1.LoadFromFile(Main.WPath + 'Report\ExistsStorageLevel1.fr3');
    end;
//***********************************************************************************************
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

procedure TReportStorage.cxButton1Click(Sender: TObject);
begin
    Close;
end;

procedure TReportStorage.cxComboBox2PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox4.ItemIndex := cxComboBox2.ItemIndex;
    cxRadioButton3.Checked:=true;
end;

procedure TReportStorage.cxComboBox5PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox6.ItemIndex := cxComboBox5.ItemIndex;
    cxRadioButton4.Checked:=true;
end;

procedure TReportStorage.cxMaskEdit1PropertiesChange(Sender: TObject);
begin
    if cxMaskEdit1.Text <>'' then
       cxRadioButton2.Checked:=true;
end;

procedure TReportStorage.cxRadioButton2Click(Sender: TObject);
begin
    cxMaskEdit1.Text := main.DateNow;
end;

end.
