unit frmPermission;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ADODB,DB, dxSkinsCore, dxSkinsDefaultPainters, cxGraphics, Menus,
  cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL, cxTextEdit,
  cxCheckBox, cxInplaceContainer, StdCtrls, cxButtons, cxLabel, cxMaskEdit,
  cxDropDownEdit, cxControls, cxContainer, cxEdit, cxImage, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  TPermission = class(TForm)
    cxImage1: TcxImage;
    cxComboBox3: TcxComboBox;
    cxLabel1: TcxLabel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxComboBox1: TcxComboBox;
    Lst1: TcxTreeList;
    cxTreeList1cxTreeListColumn1: TcxTreeListColumn;
    cxTreeList1cxTreeListColumn2: TcxTreeListColumn;
    cxTreeList1cxTreeListColumn3: TcxTreeListColumn;
    cxTreeList1cxTreeListColumn4: TcxTreeListColumn;
    cxTreeList1cxTreeListColumn5: TcxTreeListColumn;
    Lst2: TcxTreeList;
    cxTreeListColumn1: TcxTreeListColumn;
    cxTreeListColumn2: TcxTreeListColumn;
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
  private
        ADO : TADODataSet;
  public
    
  end;

var
  Permission: TPermission;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TPermission.cxButton2Click(Sender: TObject);
var
    I , J ,K : integer;
    S : string;
begin
    if DM.GetAlarm(cxComboBox3,'˜ÇÑÈÑí ÌåÊ ÊÚííä ÓØæÍ ÏÓÊÑÓí ÇäÊÎÇÈ äÔÏå ÇÓÊ')=false then
       Exit;

    for k:=0 to lst1.Count-1 do
    begin
        S:= S + '#';
        For j:=0 to lst1.Items[k].Count-1 do
        begin
            S:= S + '-';
            for i:=1 to 4 do
                if lst1.Items[k].Items[j].Values[i]='1' then
                   S := S + '1'
                   else
                   S := S + '0';
                end;
        end;
    for k:=0 to lst2.Count-1 do
    begin
        S:= S + '#';
        For j:=0 to lst2.Items[k].Count-1 do
        begin
            S:= S + '-';
            if lst2.Items[k].Items[j].Values[1]='1' then
               S := S + '1'
               else
               S := S + '0';
            end;
        end;
    S := S + '#';

    DM.Update('Users','permission='+QuotedStr(S),'Code='+cxComboBox1.Text);
    Main.Permission:=S;
    MessageDlg('ÚãáíÇÊ ÊÚííä ÓØæÍ ÏÓÊÑÓí ÈÑÇí ˜ÇÑÈÑ ÇäÊÎÇÈí ËÈÊ ÔÏ',mtInformation, [mbOk], 0);
end;

procedure TPermission.FormShow(Sender: TObject);
begin
    ADO := TADODataSet.Create(self);
    ADO.Connection:=DM.Connection;
    DM.FillCombo(cxComboBox1,cxComboBox3,'code','userid','Users','','code,userid');
    cxComboBox3.SetFocus;
end;

procedure TPermission.cxButton1Click(Sender: TObject);
begin
    Close;
end;

procedure TPermission.cxComboBox3PropertiesEditValueChanged(
  Sender: TObject);
Var
    S ,S1 : String;
    X , I , J , K : integer;
begin
    cxComboBox1.ItemIndex:=cxComboBox3.ItemIndex;
    S:='';
    ADO.Close;
    ADO.CommandText:='Select Permission from users where code='+cxComboBox1.Text +' AND Userid='+QuotedStr(cxComboBox3.Text);
    ADO.Open;
    if ADO.RecordCount > 0 then
       S := ADO.Fields[0].AsString;
    ADO.Close;

    for k:=0 to lst1.Count-1 do
        For j:=0 to lst1.Items[k].Count-1 do
            For i:=1 to 4 do
                lst1.Items[k].Items[j].Values[i]:='0';
    for k:=0 to lst2.Count-1 do
        For j:=0 to lst2.Items[k].Count-1 do
            lst2.Items[k].Items[j].Values[1]:='0';


    if Length(trim(S)) > 0 then
    begin
        J:=0;
        K:=0;
        for X:=1 to 92 do
        begin
            if (S[X]<>'-') AND (S[X]<>'#') then
               S1 := S1 + S[X];
            if S[X]='-' then
               if (S1<>'') AND (Length(S1)>1) then
               begin
                   for i:=1 to 4 do
                       Lst1.Items[K].Items[J].Values[i] := S1[i];
                   J := J + 1;
                   if (J = 7) and (K = 0) then
                   begin
                      K:= K + 1;
                      J:=0;
                   end;
                   if (J = 4) and (K = 1) then
                   begin
                      K := K + 1;
                      J := 0;
                   end;
                   if (J = 6) and (K = 2) then
                   begin
                      K := K + 1;
                      J := 0;
                   end;
                   S1:='';
               end;
        end;
        K:=0;
        J:=0;
        S1:='';
        for X:=89 to Length(S) do
        begin
            if (S[X]<>'-') AND (S[X]<>'#') then
               S1 := S1 + S[X];
            if S[X]='-' then
               if (S1<>'') AND (Length(S1)>=1) then
               begin
                   Lst2.Items[K].Items[J].Values[1] := S1[1];
                   J := J + 1;
                   if (J = 8) and (K = 0) then
                   begin
                      K:= K + 1;
                      J:=0;
                   end;
                   if (J = 16) and (K = 1) then
                   begin
                      K := K + 1;
                      J := 0;
                   end;
                   if (J = 7) and (K = 2) then
                   begin
                      K := K + 1;
                      J := 0;
                   end;
                   if (J = 4) and (K = 3) then
                   begin
                      K := K + 1;
                      J := 0;
                   end;
                   S1:='';
               end;
        end;
    end;

end;

procedure TPermission.cxComboBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
    cxComboBox3.ItemIndex:=cxComboBox1.ItemIndex;
end;

end.
