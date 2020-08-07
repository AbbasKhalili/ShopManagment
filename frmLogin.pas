unit frmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, Menus,
  cxLookAndFeelPainters, ExtCtrls, cxLookAndFeels, dxSkinsForm, cxMaskEdit,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit, jpeg,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, cxGraphics, cxDropDownEdit;

type
  TLogin = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxTextEdit2: TcxTextEdit;
    Label5: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    dxSkinController1: TdxSkinController;
    tmrStart: TTimer;
    cxTextEdit3: TcxMaskEdit;
    cxComboBox2: TcxComboBox;
    cxComboBox1: TcxComboBox;
    lblKind: TLabel;
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure tmrStartTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox2PropertiesEditValueChanged(Sender: TObject);
  private
        TiNow , Today : string;
  public

  end;

var
  Login: TLogin;

implementation

uses frmDM, frmMain, frmSelectDocNO, DateUtils, DB,
  frmListDocNO;

{$R *.dfm}

procedure TLogin.cxButton3Click(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TLogin.cxButton2Click(Sender: TObject);
Var
    i , c :integer;
    S ,Perm : string;
begin
    if (cxComboBox1.ItemIndex<0) or(cxComboBox1.Text = '') or (cxTextEdit2.Text = '') then
    begin
        MessageDlg('‰«„ ò«—»—Ì Ê ò·„Â ⁄»Ê— —« Ê«—œ ò‰Ìœ',mtError,[mbOK],0);
        cxComboBox1.SetFocus;
        exit;
    end;

    if cxTextEdit3.Text = '' then
    begin
        MessageDlg('‘„«—Â Å—Ê‰œÂ —« Ê«—œ ò‰Ìœ',mtError,[mbOK],0);
        cxTextEdit3.SetFocus;
        exit;
    end;

    s := cxTextEdit2.text;
    cxTextEdit2.Text:='';
    for i := 1  to Length(s) do
    begin
        c:=Ord(s[i]) + 23;
        cxTextEdit2.Text := cxTextEdit2.Text + Chr(c);
    end;

    if cxComboBox1.Text <> 'admin' then
    begin
        DM.ADORun.Close;
        DM.ADORun.CommandText:='SELECT state,Permission FROM Users WHERE state=1 AND userid='+QuotedStr(cxComboBox1.Text) +' AND pass='+QuotedStr(cxTextEdit2.Text);
        DM.ADORun.Open;
        if DM.ADORun.RecordCount > 0 then
        begin
            if DM.ADORun.FieldValues['Permission']<> null then
               Perm:=DM.ADORun.FieldValues['Permission']
               else
               Perm:='';

            DM.ADORun.Close;
            DM.ADORun.CommandText:='SELECT docno FROM DocNO where docno='+cxTextEdit3.Text;
            DM.ADORun.Open;
            if DM.ADORun.RecordCount > 0 then
               DM.Update('DocNO','useropen='+QuotedStr(cxComboBox1.Text)+',Dateopen=' + QuotedStr(Today) + ',Timeopen=' + QuotedStr(TiNow),'docno=' + cxTextEdit3.Text)
               else
               DM.insert('DocNO','docno,useropen,dateopen,TimeOpen,userclose,dateclose,timeclose',cxTextEdit3.Text+ ',' +QuotedStr(cxComboBox1.Text) + ',' +QuotedStr(Today)+ ',' +QuotedStr(TiNow)+ ',' +QuotedStr(' ')+ ',' +QuotedStr(' ')+ ',' +QuotedStr(' '));

            DM.ADORun.Close;
            DM.ADORun.CommandText:='SELECT Tax,Title,Slogan FROM Settings';
            DM.ADORun.Open;

            Hide;
            Main := TMain.Create(self);
            Main.Permission:=Perm;
            Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(cxComboBox1.Text,Today));
            Main.Tax := DM.ADORun.Fields[0].AsString;
            Main.TitleReport := DM.ADORun.Fields[1].AsString;
            Main.Slogan := DM.ADORun.Fields[2].AsString;
            DM.ADOStored.Close;
            DM.ADORun.Close;
            DM.ADORun.CommandText:='select '+QuotedStr('¬œ—”:') + '+address+' +QuotedStr('   ·›‰ ') + '+tel AddTel from shop';
            DM.ADORun.Open;
            if DM.ADORun.RecordCount>0 then
               Main.AddTel := DM.ADORun.Fields[0].AsString;
            Main.TimeNow := TiNow;
            Main.DateNow := Today;
            Main.UserNow := cxComboBox1.Text;
            Main.DocNumber := strtoint(cxTextEdit3.Text);
            Main.WindowState:=wsMaximized;
            Main.ShowModal;
            Main.Free;
        end
        else
        begin
            MessageDlg('‘„« „ÃÊ“ Ê—Êœ »Â ”Ì” „ —« ‰œ«—Ìœ',mtWarning,[mbOK],0);
            cxComboBox1.ItemIndex:=-1;
            cxTextEdit2.Text:='';
            cxComboBox1.SetFocus;
        end;
    end
    else if (cxComboBox1.Text='admin') and (S='9345305070') then
    begin
        Perm:='';
        DM.ADORun.Close;
        DM.ADORun.CommandText:='SELECT docno FROM DocNO where docno='+cxTextEdit3.Text;
        DM.ADORun.Open;
        if DM.ADORun.RecordCount > 0 then
           DM.Update('DocNO','useropen='+QuotedStr(cxComboBox1.Text)+',Dateopen=' + QuotedStr(Today) + ',Timeopen=' + QuotedStr(TiNow),'docno=' + cxTextEdit3.Text)
           else
           DM.insert('DocNO','docno,useropen,dateopen,TimeOpen,userclose,dateclose,timeclose',cxTextEdit3.Text+ ',' +QuotedStr(cxComboBox1.Text) + ',' +QuotedStr(Today)+ ',' +QuotedStr(TiNow)+ ',' +QuotedStr(' ')+ ',' +QuotedStr(' ')+ ',' +QuotedStr(' '));

        DM.ADORun.Close;
        DM.ADORun.CommandText:='SELECT Tax,Title,Slogan FROM Settings';
        DM.ADORun.Open;

        Hide;
        Main := TMain.Create(self);
        Main.Permission:=Perm;
        Main.dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(cxComboBox1.Text,Today));
        Main.Tax := DM.ADORun.Fields[0].AsString;
        Main.TitleReport := DM.ADORun.Fields[1].AsString;
        Main.Slogan := DM.ADORun.Fields[2].AsString;

        DM.ADOStored.Close;
        DM.ADORun.Close;
        DM.ADORun.CommandText:='select '+QuotedStr('¬œ—”:') + '+address+' +QuotedStr('   ·›‰ ') + '+tel AddTel from shop';
        DM.ADORun.Open;
        if DM.ADORun.RecordCount>0 then
           Main.AddTel := DM.ADORun.Fields[0].AsString;
        Main.TimeNow := TiNow;
        Main.DateNow := Today;
        Main.UserNow := cxComboBox1.Text;
        Main.DocNumber := strtoint(cxTextEdit3.Text);
        Main.WindowState:=wsMaximized;
        Main.ShowModal;
        Main.Free;
    end;
end;

procedure TLogin.cxButton1Click(Sender: TObject);
begin
    SelectDocNO := TSelectDocNO.Create(self);
    SelectDocNO.ShowModal;
    SelectDocNO.Destroy;
end;

procedure TLogin.tmrStartTimer(Sender: TObject);
Var
    DDD : string;
    YY , MM , DD : Word;
begin
    tmrStart.Enabled := False;

    try
       if DM.Conn = True then
       begin
           DM.ADORun.Close;
           DM.ADORun.CommandText:='SELECT GETDATE()';
           DM.ADORun.Open;
           TiNow := TimeToStr(TimeOf(DM.ADORun.Fields[0].AsDateTime));
           DDD := DateToStr(DM.ADORun.Fields[0].AsDateTime);
           DM.Julian2Persian(strtoint(Copy(DDD,1,4)),strtoint(Copy(DDD,6,2)),strtoint(Copy(DDD,9,2)),YY , MM , DD);
           Today := DM.FixDate(inttostr(YY)+'/'+inttostr(MM)+'/'+inttostr(DD));
           Label5.Caption := Today;
           DM.ADORun.Close;
           DM.ADORun.CommandText:='SELECT docno FROM DocNO where Dateopen='+QuotedStr(Today);
           DM.ADORun.Open;
           if DM.ADORun.RecordCount >=2 then
              begin
                  ListDocNO := TListDocNO.Create(self);
                  ListDocNO.Dateopen:=Today;
                  ListDocNO.ShowModal;
                  ListDocNO.Destroy;
              end
           else if DM.ADORun.RecordCount > 0 then
                   cxTextEdit3.Text :=inttostr(DM.ADORun.Fields[0].AsInteger)
                   else
                   begin
                       DM.ADORun.Close;
                       DM.ADORun.CommandText:='SELECT MAX(docno) FROM DocNO';
                       DM.ADORun.Open;
                       cxTextEdit3.Text :=inttostr(DM.ADORun.Fields[0].AsInteger + 1);
                   end;
           DM.FillCombo(cxComboBox1,cxComboBox2,'userid','kind','Users','state=1 Order by userid','userid,kind');
       end;
    Except
       MessageDlg('”—Ê— Ì«›  ‰‘œ. Ê«‰«ÌÌ « ’«· »Â »«‰ò ‰„Ì »«‘œ',mtError,[mbOk], 0);
       Application.Terminate;
    end;

    //Label5.Caption:=TFarDate.farFormatDateTime('yyyy/mmmm/dddd', TFarDate.MiladyToShamsi(now));

end;

procedure TLogin.FormCreate(Sender: TObject);
begin
    tmrStart.Enabled := True;
end;

procedure TLogin.FormShow(Sender: TObject);
begin
    cxComboBox1.SetFocus;
   // ActivateKeyboardLayout(hkl_next,1);
end;

procedure TLogin.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    if Button = mbLeft then
    begin
        ReleaseCapture;
        self.Perform(WM_SYSCOMMAND,$F012,1);
    end;
end;

procedure TLogin.cxComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
    cxComboBox2.ItemIndex:=cxComboBox1.ItemIndex;
end;

procedure TLogin.cxComboBox2PropertiesEditValueChanged(Sender: TObject);
begin
    lblKind.Caption := cxComboBox2.Text;
end;

end.
