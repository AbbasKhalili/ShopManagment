unit frmReportDeb_Cred;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ADODB,frxClass, dxSkinsCore, dxSkinsDefaultPainters, Menus,
  cxLookAndFeelPainters, cxGraphics, cxLabel, cxDropDownEdit, StdCtrls,
  cxButtons, cxRadioGroup, cxTextEdit, cxMaskEdit, cxControls, cxContainer,
  cxEdit, cxImage, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  TReportDeb_Cred = class(TForm)
    cxImage2: TcxImage;
    cxImage1: TcxImage;
    cxMaskEdit1: TcxMaskEdit;
    cxMaskEdit2: TcxMaskEdit;
    cxMaskEdit3: TcxMaskEdit;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxComboBox1: TcxComboBox;
    cxComboBox3: TcxComboBox;
    cxImage3: TcxImage;
    cxLabel3: TcxLabel;
    cxLabel1: TcxLabel;
    cxMaskEdit4: TcxMaskEdit;
    cxImage4: TcxImage;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure cxMaskEdit1Exit(Sender: TObject);
    procedure cxMaskEdit2Exit(Sender: TObject);
    procedure cxMaskEdit3Exit(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxMaskEdit2PropertiesChange(Sender: TObject);
    procedure cxMaskEdit3PropertiesChange(Sender: TObject);
    procedure cxRadioButton1Click(Sender: TObject);
    procedure cxRadioButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
        ADO : TADODataSet;
  public

  end;

var
  ReportDeb_Cred: TReportDeb_Cred;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TReportDeb_Cred.cxButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TReportDeb_Cred.cxMaskEdit1Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit1);
end;

procedure TReportDeb_Cred.cxMaskEdit2Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit2);
end;

procedure TReportDeb_Cred.cxMaskEdit3Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit3);
end;

procedure TReportDeb_Cred.cxButton2Click(Sender: TObject);
var
    Mem : TfrxMemoView;
    Pic : TfrxPictureView;
    DD , Title : String;
    Deb1,Deb2,Cred1,Cred2,Man : Double;
    ID1,ID2 : Longint;
    DocNO1,DocNO2 : Integer;
begin
    if dm.GetAlarm(cxComboBox3,'·ÿ›« ÿ—› Õ”«» —« «‰ Œ«» ò‰Ìœ')=False then
       Exit;
    if (cxMaskEdit4.Text<>'') AND (strtoint(cxMaskEdit4.Text)>100) then
    begin
        MessageDlg('„Ì“«‰ œ—’œ ”Êœ Ê«—œ ‘œÂ „⁄ »— ‰„Ì »«‘œ',mtInformation,[mbOK],0);
        Exit;
    End;

    DM.FixDate(cxMaskEdit1);
    DM.FixDate(cxMaskEdit2);
    DM.FixDate(cxMaskEdit3);

    DM.ADOspReport.Close;
    DM.frxDBDataset1.Clear;
    DM.ADOspReport.Parameters.Clear;
    Title := '’Ê—  Õ”«»';
    DM.ADOspReport.ProcedureName:='dbo.Set_Deb_Cred';
    DM.ADOspReport.Parameters.Refresh;
    DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox1.Text;
    if cxRadioButton1.Checked = True then
    begin
        DM.ADOspReport.Parameters.ParamByName('@D1').Value := '1/1/1';
        DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit1.Text;
        DD := ' «  «—ÌŒ  :  ' + cxMaskEdit1.Text;
    end;
    if cxRadioButton2.Checked = True then
    begin
        DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit2.Text;
        DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit3.Text;
        DD := '«“  «—ÌŒ   ' + cxMaskEdit2.Text + '  «  «—ÌŒ   ' + cxMaskEdit3.Text;
    end;
    DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Deb_Cred.fr3');
    DM.ADOspReport.Open;

    if DM.ADOspReport.RecordCount > 0 then
    begin
        DM.ADOspReport.First;

        Man:=0;
        Deb1 := DM.ADOspReport.FieldValues['debtor'];
        Cred1 := DM.ADOspReport.FieldValues['creditor'];
        id1 := DM.ADOspReport.FieldValues['id'];
        Man := (Man + Deb1)-Cred1;

        if Man >= 0 then
           DM.Update('Deb_Cred','Remain_D=' + FloatToStr(Man)+' ,State='+QuotedStr('»œ'),'id='+IntToStr(id1))
           else
           DM.Update('Deb_Cred','Remain_D=' + FloatToStr(Man*(-1))+' ,State='+QuotedStr('»”'),'id='+IntToStr(id1));

           //DM.Update('Deb_Cred','Remain_D=' + FloatToStr(Man),'id='+IntToStr(id1));

        while Not DM.ADOspReport.Eof Do
        begin
            DM.ADOspReport.Next;
            Deb2 := DM.ADOspReport.FieldValues['debtor'];
            Cred2 := DM.ADOspReport.FieldValues['creditor'];
            id2 := DM.ADOspReport.FieldValues['id'];
            Man := (Man + Deb2)-Cred2;
            if DM.ADOspReport.Eof = True then
            begin
               if Cred2 > 0 then
                  Man := Man + Cred2;
               if Deb2 > 0 then
                  Man := Man - Deb2;
            end;      
            //DM.Update('Deb_Cred','Remain_D=' + FloatToStr(Man),'id='+IntToStr(id2));

            if Man >= 0 then
               DM.Update('Deb_Cred','Remain_D=' + FloatToStr(Man)+' ,State='+QuotedStr('»œ'),'id='+IntToStr(id2))
               else
               DM.Update('Deb_Cred','Remain_D=' + FloatToStr(Man*(-1))+' ,State='+QuotedStr('»”'),'id='+IntToStr(id2));
        end;
    end;

    if cxMaskEdit4.Text<>'' then
    Begin
        if cxRadioButton1.Checked = True then
        begin
            ADO.Close;
            ADO.CommandText:='select Docno from DocNO where dateopen<='+QuotedStr(cxMaskEdit1.Text) +' order by dateopen';
            ADO.Open;
            if ADO.RecordCount > 0  then
            begin
                ADO.Last;
                DocNO1 := 1;
                DocNO2 := ADO.FieldValues['Docno'];
            end
            else
            begin
                DocNO1 := 1;
                DocNO2 := Main.DocNumber;
                MessageDlg('œ—  «—ÌŒ „Ê—œ ‰Ÿ— Ê—ÊœÌ »Â ‰—„ «›“«— À»  ‰‘œÂ «” . „ÊÃÊœÌ «‰»«—  « «„—Ê“ ‰„«Ì‘ œ«œÂ „Ì ‘Êœ',mtInformation,[mbOK],0);
            end;
            ADO.Close;
        end;
        if cxRadioButton2.Checked = True then
        begin
            ADO.Close;
            ADO.CommandText:='select Docno from DocNO where dateopen>='+QuotedStr(cxMaskEdit2.Text) +' AND dateopen<='+QuotedStr(cxMaskEdit3.Text)+' order by dateopen';
            ADO.Open;
            if ADO.RecordCount > 0  then
            begin
                ADO.First;
                DocNO1 := ADO.FieldValues['Docno'];
                ADO.Last;
                DocNO2 := ADO.FieldValues['Docno'];
            end
            else
            begin
                DocNO1 := 1;
                DocNO2 := Main.DocNumber;
                MessageDlg('œ—  «—ÌŒ „Ê—œ ‰Ÿ— Ê—ÊœÌ »Â ‰—„ «›“«— À»  ‰‘œÂ «” . „ÊÃÊœÌ «‰»«—  « «„—Ê“ ‰„«Ì‘ œ«œÂ „Ì ‘Êœ',mtInformation,[mbOK],0);
            end;
            ADO.Close;
        end;
    End;
    DM.ADOspReport.Close;
    DM.frxDBDataset1.Clear;
    DM.ADOspReport.Parameters.Clear;
    DM.ADOspReport.ProcedureName:='dbo.SelectAllDeb_Cred';
    DM.ADOspReport.Parameters.Refresh;
    DM.ADOspReport.Parameters.ParamByName('@Param').Value := cxComboBox1.Text;
    if cxRadioButton1.Checked = True then
    begin
        DM.ADOspReport.Parameters.ParamByName('@D1').Value := '1/1/1';
        DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit1.Text;
    end;
    if cxRadioButton2.Checked = True then
    begin
        DM.ADOspReport.Parameters.ParamByName('@D1').Value := cxMaskEdit2.Text;
        DM.ADOspReport.Parameters.ParamByName('@D2').Value := cxMaskEdit3.Text;
    end;
    DM.ADOspReport.Open;

    if cxMaskEdit4.Text<>'' then
    Begin
        DM.frxDBInvoicePrint.DataSet:=DM.ADOStored;
        DM.ADOStored.Close;
        DM.frxDBInvoicePrint.Clear;
        DM.ADOStored.Parameters.Clear;
        DM.ADOStored.ProcedureName:='dbo.SelectAllDeb_Cred_SooD';
        DM.ADOStored.Parameters.Refresh;
        DM.ADOStored.Parameters.ParamByName('@SN3').Value := cxComboBox1.Text;
        DM.ADOStored.Parameters.ParamByName('@DNO1').Value := DocNO1;
        DM.ADOStored.Parameters.ParamByName('@DNO2').Value := DocNO2;
        DM.ADOStored.Parameters.ParamByName('@SOD').Value := cxMaskEdit4.Text;
        if cxRadioButton1.Checked = True then
        begin
            DM.ADOStored.Parameters.ParamByName('@D1').Value := '1/1/1';
            DM.ADOStored.Parameters.ParamByName('@D2').Value := cxMaskEdit1.Text;
        end;
        if cxRadioButton2.Checked = True then
        begin
            DM.ADOStored.Parameters.ParamByName('@D1').Value := cxMaskEdit2.Text;
            DM.ADOStored.Parameters.ParamByName('@D2').Value := cxMaskEdit3.Text;
        end;
        DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Deb_Cred_Sood.fr3');
        DM.ADOStored.Open;
    END;

    Mem := DM.frxReport1.FindObject('Memo22') AS TfrxMemoView;
    Mem.Text := main.TitleReport;

    if cxMaskEdit4.Text<>'' then
    Begin
        Mem := DM.frxReport1.FindObject('Memo50') AS TfrxMemoView;
        Mem.Text := 'ò”— ' + cxMaskEdit4.Text + ' œ—’œ';
    End;

    Pic := DM.frxReport1.FindObject('Picture1') AS TfrxPictureView;
    Pic.Picture.LoadFromFile(main.WPath+'Logo.jpg');

    Mem := DM.frxReport1.FindObject('Memo17') AS TfrxMemoView;
    Mem.Text := Title + ' : ' + cxComboBox3.Text + '     ' + DD;

    Mem := DM.frxReport1.FindObject('Memo21') AS TfrxMemoView;
    Mem.Text := Main.UserNow;
    Mem := DM.frxReport1.FindObject('Memo20') AS TfrxMemoView;
    Mem.Text := Main.DateNow;
    Mem := DM.frxReport1.FindObject('Memo23') AS TfrxMemoView;
    Mem.Text := Title;
    Mem := DM.frxReport1.FindObject('Memo24') AS TfrxMemoView;
    Mem.Text := DD;
    DM.frxReport1.ShowReport;
end;

procedure TReportDeb_Cred.FormShow(Sender: TObject);
begin
    ADO := TADODataSet.Create(Self);
    ADO.Connection := DM.Connection;
    DM.FillCombo(cxComboBox1,cxComboBox3,'SN3','name','StorageL3','','SN3,name');
    cxComboBox3.SetFocus;
    cxMaskEdit1.Text := main.DateNow;
end;

procedure TReportDeb_Cred.cxComboBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox1.ItemIndex := cxComboBox3.ItemIndex;
end;

procedure TReportDeb_Cred.cxMaskEdit2PropertiesChange(Sender: TObject);
begin
    if cxMaskEdit2.Text <>'' then
       cxRadioButton2.Checked:=true;
end;

procedure TReportDeb_Cred.cxMaskEdit3PropertiesChange(Sender: TObject);
begin
    if cxMaskEdit3.Text <>'' then
       cxRadioButton2.Checked:=true;
end;

procedure TReportDeb_Cred.cxRadioButton1Click(Sender: TObject);
begin
    cxMaskEdit1.Text := main.DateNow;
end;

procedure TReportDeb_Cred.cxRadioButton2Click(Sender: TObject);
begin
    cxMaskEdit2.Text := main.DateNow;
    cxMaskEdit3.Text := main.DateNow;
end;

procedure TReportDeb_Cred.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    ADO.Free;
end;

end.
