unit frmStorage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmDM ,ADODB, frmTMP, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxDropDownEdit, cxLabel,
  cxTextEdit, cxMaskEdit, cxContainer, cxGroupBox, StdCtrls, cxButtons,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

Const
     TableName = 'Storage';
     FieldName = 'storageNO,groupcode,code,CurrentExists,MinExists,RequestPoint,DateSave,TimeSave,UserSave,DocNO,Alarm';

type
  TStorage = class(TTMP)
    cxMaskEdit1: TcxMaskEdit;
    cxMaskEdit3: TcxMaskEdit;
    cxMaskEdit4: TcxMaskEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxComboBox2: TcxComboBox;
    cxComboBox3: TcxComboBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxComboBox4: TcxComboBox;
    cxComboBox1: TcxComboBox;
    cxLabel6: TcxLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxMaskEdit2: TcxMaskEdit;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxMaskEdit5: TcxMaskEdit;
    cxLabel3: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure cxComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxMaskEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxMaskEdit5PropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
        RecSelect : integer;
        ADO ,ADO2 ,ADO3 : TADODataSet;
        DS : TDataSource;
        procedure EmptyTextBox();
        procedure RefreshGrid();
        procedure RefreshGridStorage();
  public

  end;

var
  Storage: TStorage;

implementation

uses frmMain;

{$R *.dfm}

procedure TStorage.EmptyTextBox();
begin
    cxMaskEdit1.Text:='';
    cxMaskEdit2.text:='';
    cxMaskEdit3.text:='';
    cxMaskEdit4.text:='';
    RecSelect := 0;
end;

procedure TStorage.RefreshGrid();
begin
    DM.Select('kala k,units u','k.codekala,k.code,k.name,u.unitname','k.unit=u.code AND k.groupcode='+cxComboBox3.Text);
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource:=DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName:='code';
    cxGrid1DBTableView1Column2.DataBinding.FieldName:='name';
    cxGrid1DBTableView1Column4.DataBinding.FieldName:='unitname';
    cxGrid1DBTableView1Column5.DataBinding.FieldName:='codekala';
end;

procedure TStorage.RefreshGridStorage();
begin
    ADO.Close;
    ADO.CommandText:='SELECT s.code,s.CurrentExists,s.MinExists,s.RequestPoint,k.name,k.Code CodeKalaUser ,u.unitname FROM Storage s inner join kala k on s.code=k.codekala inner join units u on k.unit=u.code Where s.storageNO='+cxComboBox4.Text;
    ADO.Open;
    ADO.Fields[0].Alignment := taCenter;
    ADO.Fields[1].Alignment := taCenter;
    ADO.Fields[2].Alignment := taCenter;
    ADO.Fields[3].Alignment := taCenter;
    ADO.Fields[4].Alignment := taRightJustify;
    ADO.Fields[5].Alignment := taCenter;
    ADO.Fields[6].Alignment := taCenter;

    DS.DataSet := ADO;
    cxGridDBTableView1.DataController.DataSource:=DS;
    cxGridDBTableView1Column5.DataBinding.FieldName:='code';
    cxGridDBTableView1Column4.DataBinding.FieldName:='name';
    cxGridDBTableView1Column2.DataBinding.FieldName:='MinExists';
    cxGridDBTableView1Column1.DataBinding.FieldName:='RequestPoint';
    cxGridDBTableView1Column3.DataBinding.FieldName:='CurrentExists';
    cxGridDBTableView1Column6.DataBinding.FieldName:='CodeKalaUser';
    cxGridDBTableView1Column7.DataBinding.FieldName:='unitname';
end;

procedure TStorage.FormShow(Sender: TObject);
begin
    DM.FillCombo(cxComboBox3,cxComboBox2,'codeL2','Level2','Level2','','CodeL2,Level2');
    DM.FillCombo(cxComboBox4,cxComboBox1,'SN3','name','StorageL3','','SN3,name');
    DM.BTNState(cxButton2,cxButton3,cxButton4,cxButton5,cxButton6,main.Permission[4],main.Permission[4],main.Permission[5],main.Permission[6],'0');
    ADO := TADODataSet.Create(self);
    ADO.Connection := DM.Connection;
    ADO2 := TADODataSet.Create(self);
    ADO2.Connection := DM.Connection;
    ADO3 := TADODataSet.Create(self);
    ADO3.Connection := DM.Connection;
    DS  := TDataSource.Create(self);
end;

procedure TStorage.cxComboBox2PropertiesEditValueChanged(Sender: TObject);
begin
    cxComboBox3.ItemIndex := cxComboBox2.ItemIndex;
end;

procedure TStorage.cxComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
    cxComboBox4.ItemIndex := cxComboBox1.ItemIndex;
    RefreshGridStorage;
end;

procedure TStorage.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    //inttostr(DM.DataS.DataSet.FieldValues['codekala']);
    cxMaskEdit1.Text := inttostr(DM.DataS.DataSet.FieldValues['codekala']);
    cxMaskEdit3.Text := '0';
    cxMaskEdit2.Text := '';
    cxMaskEdit4.Text := '1';
end;

procedure TStorage.cxGridDBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    RecSelect := DS.DataSet.FieldValues['code'];
    cxMaskEdit1.Text := Inttostr(RecSelect);
    cxMaskEdit3.Text := FloatToStr(DS.DataSet.FieldValues['MinExists']);
    cxMaskEdit4.Text := FloatToStr(DS.DataSet.FieldValues['RequestPoint']);
    cxMaskEdit2.Text := FloatToStr(DS.DataSet.FieldValues['CurrentExists']);
end;

procedure TStorage.cxButton3Click(Sender: TObject);
begin
    if DM.GetAlarm(cxComboBox2,'ÇÈÊÏÇ Ñæå ˜ÇáÇ ÑÇ ÇäÊÎÇÈ ˜äíÏ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit1,'ÇÒ áíÓÊ ÈÇáÇ ˜ÇáÇíí ÑÇ ÇäÊÎÇÈ ˜äíÏ')=False then
       exit;
    if DM.GetAlarm(cxComboBox1,'äÇã ÇäÈÇÑí ˜å ˜ÇáÇí ÇäÊÎÇÈí ÏÑ Âä ãí ÈÇÔÏ ÑÇ ÇäÊÎÇÈ ˜äíÏ')=False then
       exit;

    ADO2.Close;
    ADO2.CommandText:='select [Name] from Storage s, StorageL3 S3 where S.StorageNO=S3.SN3 AND code='+cxMaskEdit1.Text;
    ADO2.Open;
    if ADO2.RecordCount>0 then
    begin
        MessageDlg('˜ÇáÇ ÇäÊÎÇÈí ÞÈáÇ Èå ÇäÈÇÑí ÇäÊÓÇÈ ÏÇÏå ÔÏå ÇÓÊ'+#13+#13+ '  ÏÑ ÇäÈÇÑ    ' + ADO2.Fields[0].AsString+'    ÞÑÇÑ ÏÇÑÏ  ',mtInformation,[mbOK],0);
        Exit;
    end;

    if DM.GetAlarm(cxMaskEdit3,'ÍÏ ÇÞá ãæÌæÏí ÇÒ Çíä ˜ÇáÇ ÏÑ ÇäÈÇÑ ÑÇ Ð˜Ñ ˜äíÏ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit4,'äÞØå ÓÝÇÑÔ ÈÑÇí Çíä ˜ÇáÇ ÑÇ æÇÑÏ ˜äíÏ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit2,'ãæÌæÏí ÑÇ æÇÑÏ ˜íäÏ')=False then
       exit;
       //'storageNO,groupcode,code,CurrentExists,MinExists,RequestPoint,DateSave,TimeSave,UserSave,DocNO,Alarm';
    Dm.insert(TableName,FieldName, cxComboBox4.Text + ',' +
                                   QuotedStr(cxComboBox3.text) + ',' +
                                   cxMaskEdit1.text + ',' +
                                   cxMaskEdit2.text + ',' +
                                   cxMaskEdit3.text + ',' +
                                   cxMaskEdit4.text + ',' +
                                   QuotedStr(Main.DateNow) + ',' +
                                   QuotedStr(Main.TimeNow) + ',' +
                                   QuotedStr(Main.UserNow) + ',' +
                                   intTostr(Main.DocNumber) + ',' +
                                   QuotedStr('1'));
    RefreshGridStorage;
    EmptyTextBox;
end;

procedure TStorage.cxButton5Click(Sender: TObject);
begin
    if RecSelect > 0 then
    begin
        DM.Delete(TableName,'code='+ inttostr(RecSelect)+' AND storageNO='+cxComboBox4.Text);
        RefreshGridStorage;
        EmptyTextBox;
    end;
end;

procedure TStorage.cxButton4Click(Sender: TObject);
begin
    if RecSelect > 0 then
    begin
        if DM.GetAlarm(cxMaskEdit3,'ÍÏ ÇÞá ãæÌæÏí ÇÒ Çíä ˜ÇáÇ ÏÑ ÇäÈÇÑ ÑÇ Ð˜Ñ ˜äíÏ')=False then
           exit;
        if DM.GetAlarm(cxMaskEdit4,'äÞØå ÓÝÇÑÔ ÈÑÇí Çíä ˜ÇáÇ ÑÇ æÇÑÏ ˜äíÏ')=False then
           exit;
        if DM.GetAlarm(cxMaskEdit2,'ãæÌæÏí ÑÇ æÇÑÏ ˜íäÏ')=False then
           exit;   

        DM.Update(TableName,'CurrentExists=' + cxMaskEdit2.Text + ',' +
                            'MinExists=' + cxMaskEdit3.text + ',' +
                            'RequestPoint=' + cxMaskEdit4.Text + ',' +
                            'DateSave=' + QuotedStr(Main.DateNow) + ',' +
                            'TimeSave=' + QuotedStr(Main.TimeNow) + ',' +
                            'UserSave=' + QuotedStr(Main.UserNow) + ',' +
                            'Alarm=' + QuotedStr('1')
                           ,'code='+ inttostr(RecSelect)+' AND storageNO='+cxComboBox4.Text);
        RefreshGridStorage;
        EmptyTextBox;
        DM.AlarmStorage;
    end;
end;

procedure TStorage.cxMaskEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
//       VK_F8        : cxButton6.Click;
//       VK_F9        : cxButton2.Click;
       VK_F10       : cxButton3.Click;
       VK_F11       : cxButton4.Click;
       VK_F12       : cxButton5.Click;
       VK_ESCAPE    : Close;
    end;
end;

procedure TStorage.cxComboBox3PropertiesEditValueChanged(Sender: TObject);
begin
    cxComboBox2.ItemIndex := cxComboBox3.ItemIndex;
    if cxComboBox3.ItemIndex>=0 then
       RefreshGrid;
end;

procedure TStorage.cxMaskEdit5PropertiesChange(Sender: TObject);
begin
    if cxMaskEdit5.Text <> '' then
    begin
        ADO3.close;
        ADO3.CommandText:='select Groupcode,codekala,code from kala where code='+QuotedStr(cxMaskEdit5.Text);
        ADO3.Open;
        if ADO3.RecordCount > 0 then
        begin
            cxComboBox3.Text := ADO3.FieldValues['Groupcode'];
            cxMaskEdit1.Text := ADO3.FieldValues['codekala'];
            DM.BTNState(cxButton2,cxButton3,cxButton4,cxButton5,cxButton6,
                main.Permission[4],main.Permission[4],main.Permission[5],main.Permission[6],'0');
            cxMaskEdit3.Text := '0';
            cxMaskEdit2.Text := '';
            cxMaskEdit4.Text := '1';
        end;
    end
    else
    begin
        DM.ADORun.Close;
        cxComboBox3.ItemIndex:=-1;
        cxMaskEdit1.Text := '';
        cxMaskEdit3.Text := '';
        cxMaskEdit2.Text := '';
        cxMaskEdit4.Text := '';
    end;
end;

procedure TStorage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Main.CmdStorage.Enabled:=True;
    ADO.free;
    ADO2.free;
    ADO3.free;
    DS.free;
end;

end.
