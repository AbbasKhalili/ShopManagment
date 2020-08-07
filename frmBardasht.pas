unit frmBardasht;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmTMP, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxControls, cxContainer, cxEdit, cxGroupBox,
  StdCtrls, cxButtons, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxMaskEdit, cxTextEdit, cxMemo, cxLabel, cxImage, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

Const
     TableName = 'Bardasht';
     FieldName = 'Date,price,description,DateSave,TimeSave,UserSave,DocNO';

type
  TBardasht = class(TTMP)
    cxLabel1: TcxLabel;
    cxMemo1: TcxMemo;
    cxLabel2: TcxLabel;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel3: TcxLabel;
    cxMaskEdit2: TcxMaskEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxMaskEdit6: TcxMaskEdit;
    cxLabel12: TcxLabel;
    cxButton12: TcxButton;
    cxImage1: TcxImage;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxMaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxMaskEdit1Exit(Sender: TObject);
    procedure cxMaskEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton12Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
       RecSelect,NewRec: Integer;
       procedure EmptyTextBox();
       procedure RefreshGrid();
  public

  end;

var
  Bardasht: TBardasht;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TBardasht.EmptyTextBox();
begin
    cxMaskEdit1.text:='';
    cxMaskEdit2.text:='';
    cxMemo1.Text:='';
    RecSelect:=0;
    NewRec:=0;
end;

procedure TBardasht.RefreshGrid();
begin
    DM.Select(TableName,'[id],[date],price,[description]','usersave='+QuotedStr(main.UserNow));
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource := DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName := 'ID';
    cxGrid1DBTableView1Column2.DataBinding.FieldName := 'date';
    cxGrid1DBTableView1Column3.DataBinding.FieldName := 'price';
    cxGrid1DBTableView1Column4.DataBinding.FieldName := 'description';
end;

procedure TBardasht.cxButton2Click(Sender: TObject);
begin
    cxGroupBox1.Enabled:=True;
    EmptyTextBox();
    cxMaskEdit1.Text := main.DateNow;
    NewRec:=1;
    cxMaskEdit2.SetFocus;
    cxButton3.Default:=True;
end;

procedure TBardasht.cxButton3Click(Sender: TObject);
begin
    if NewRec<=0 then
       Exit;

    if DM.GetAlarm(cxMaskEdit1,' «—ÌŒ »—œ«‘  —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit2,'„»·€ »—œ«‘ Ì —« Ê«—œ ò‰Ìœ')=False then
       exit;

                 //    Date,price,description,DateSave,TimeSave,UserSave,DocNO';
    Dm.insert(TableName,FieldName,QuotedStr(cxMaskEdit1.text) + ',' +
                                  cxMaskEdit2.text + ',' +
                                  QuotedStr(cxMemo1.text) + ',' +
                                  QuotedStr(Main.DateNow) + ',' +
                                  QuotedStr(Main.TimeNow) + ',' +
                                  QuotedStr(Main.UserNow) + ',' +
                                  intTostr(Main.DocNumber));

    Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(main.UserNow,main.DateNow));

    DM.FillReportDay('»—œ«‘ ','»—œ«‘  œ—  «—ÌŒ '+cxMaskEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' »«»  ' + cxMemo1.Text);
    DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('»—œ«‘ ') + ',' +
                                QuotedStr('»—œ«‘  œ—  «—ÌŒ '+cxMaskEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' »«»  ' + cxMemo1.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));

    RefreshGrid();
    EmptyTextBox;
    cxButton3.Default:=False;
    cxButton2.SetFocus;
    cxGroupBox1.Enabled:=False;
end;

procedure TBardasht.cxButton4Click(Sender: TObject);
begin
    if DM.GetAlarm(cxMaskEdit1,' «—ÌŒ »—œ«‘  —« Ê«—œ ò‰Ìœ')=False then
       exit;
    if DM.GetAlarm(cxMaskEdit2,'„»·€ »—œ«‘ Ì —« Ê«—œ ò‰Ìœ')=False then
       exit;

    if RecSelect > 0 then
    begin
        DM.Update(TableName,'price=' + cxMaskEdit2.text + ',' +
                            'date=' + QuotedStr(cxMaskEdit1.Text) + ',' +
                            'description=' + QuotedStr(cxMemo1.Text) + ',' +
                            'DateSave=' + QuotedStr(Main.DateNow) + ',' +
                            'TimeSave=' + QuotedStr(Main.TimeNow) + ',' +
                            'UserSave=' + QuotedStr(Main.UserNow)
                           ,'ID='+ inttostr(RecSelect));
        Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(main.UserNow,main.DateNow));
        DM.FillReportDay('»—œ«‘ ','«’·«Õ »—œ«‘ Ì œ—  «—ÌŒ '+cxMaskEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' »«»  ' + cxMemo1.Text);
        DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('»—œ«‘ ') + ',' +
                                QuotedStr('«’·«Õ »—œ«‘ Ì œ—  «—ÌŒ '+cxMaskEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' »«»  ' + cxMemo1.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));

        RefreshGrid;
        EmptyTextBox;
        cxGroupBox1.Enabled:=False;
    end;
end;

procedure TBardasht.cxButton5Click(Sender: TObject);
begin
    if RecSelect > 0 then
    begin
        DM.Delete(TableName,'ID='+ inttostr(RecSelect));
        Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(main.UserNow,main.DateNow));
        DM.FillReportDay('»—œ«‘ ','Õ–› »—œ«‘ Ì œ—  «—ÌŒ '+cxMaskEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' »«»  ' + cxMemo1.Text);
        DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('»—œ«‘ ') + ',' +
                                QuotedStr('Õ–› »—œ«‘ Ì œ—  «—ÌŒ '+cxMaskEdit1.Text+' »Â „»·€ '+cxMaskEdit2.Text + ' »«»  ' + cxMemo1.Text) + ',' +
                                QuotedStr(main.UserNow) + ',' +
                                QuotedStr(main.DateNow) + ',' +
                                QuotedStr(main.TimeNow) + ',' +
                                inttostr(Main.DocNumber));

        RefreshGrid;
        EmptyTextBox;
        cxGroupBox1.Enabled:=False;
    end;
end;

procedure TBardasht.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    cxGroupBox1.Enabled:=True;
    NewRec:=0;
    RecSelect := DM.DataS.DataSet.FieldValues['ID'];
    cxMaskEdit1.Text := DM.DataS.DataSet.FieldValues['date'];
    cxMaskEdit2.Text := DM.DataS.DataSet.FieldValues['price'];
    cxMemo1.Text := DM.DataS.DataSet.FieldValues['Description'];
end;

procedure TBardasht.cxMaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
       VK_F9        : cxButton2.Click;
       VK_F10       : cxButton3.Click;
       VK_F11       : cxButton4.Click;
       VK_F12       : cxButton5.Click;
       VK_ESCAPE    : Close;
    end;
end;

procedure TBardasht.FormShow(Sender: TObject);
begin
    DM.BTNState(cxButton2,cxButton3,cxButton4,cxButton5,cxButton6,main.Permission[86],main.Permission[86],main.Permission[87],main.Permission[88],'1');
    RefreshGrid();
    cxMaskEdit6.Text:=main.DateNow;
    cxButton2.SetFocus;
end;

procedure TBardasht.cxMaskEdit1Exit(Sender: TObject);
begin
    DM.FixDate(cxMaskEdit1);
end;

procedure TBardasht.cxMaskEdit6KeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then
       cxButton12.Click;
end;

procedure TBardasht.cxButton12Click(Sender: TObject);
begin
    DM.FixYear13(cxMaskEdit6);
    DM.Select(TableName,'[id],[date],price,[description]','usersave='+QuotedStr(main.UserNow)+' AND [date] Like '+QuotedStr(cxMaskEdit6.Text+'%'));
    DM.DataS.DataSet := DM.ADORun;
    DM.DataS.DataSet := DM.AlignField(DM.ADORun);
    cxGrid1DBTableView1.DataController.DataSource := DM.DataS;
    cxGrid1DBTableView1Column1.DataBinding.FieldName := 'ID';
    cxGrid1DBTableView1Column2.DataBinding.FieldName := 'date';
    cxGrid1DBTableView1Column3.DataBinding.FieldName := 'price';
    cxGrid1DBTableView1Column4.DataBinding.FieldName := 'description';
end;

procedure TBardasht.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Main.dxBarLargeButton36.Enabled:=True;
end;

end.
