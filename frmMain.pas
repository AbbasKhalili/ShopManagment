unit frmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,FrxClass, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxRibbonPainter, dxSkinscxPCPainter, ComCtrls,
  dxSkinsdxBarPainter, cxButtonEdit, cxTextEdit, cxBlobEdit,
  cxDropDownEdit, dxBar, dxRibbon, ImgList, cxGraphics, cxBarEditItem,
  dxBarExtItems, cxSplitter, cxContainer, cxListView, cxPC, dxStatusBar,
  dxRibbonStatusBar, cxClasses, cxControls, cxLookAndFeelPainters, cxEdit,
  cxGroupBox, Menus, StdCtrls, cxButtons, cxMaskEdit, cxLabel, ExtCtrls,
  dxGDIPlusClasses, cxImage;


Const
     TableName1 = 'InvoiceSell';
     FieldName1 = 'num,date,buyer,discount,description,DateSave,TimeSave,UserSave,DocNO';
     TableName2 = 'InvoiceSellDetials';
     FieldName2 = 'num,no,StorageNO,code,count,price,BuyPrice,Persent,tax,Disc,DocNO';
     TableName3 = 'InvoiceBack';
     TableName4 = 'InvoiceBackDetials';

type
  TMain = class(TForm)
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1: TdxBarManager;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxBarScreenTipRepository1: TdxBarScreenTipRepository;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    BarQuickAccess: TdxBar;
    dxRibbon1Tab3: TdxRibbonTab;
    dxRibbon1Tab4: TdxRibbonTab;
    dxRibbon1Tab5: TdxRibbonTab;
    dxRibbon1Tab6: TdxRibbonTab;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarManager1Bar4: TdxBar;
    dxBarManager1Bar5: TdxBar;
    dxBarButton1: TdxBarButton;
    CmdShop: TdxBarLargeButton;
    CmdSeller: TdxBarLargeButton;
    CmdBuyers: TdxBarLargeButton;
    CmdKala: TdxBarLargeButton;
    CmdStorage: TdxBarLargeButton;
    CmdAccounts: TdxBarLargeButton;
    CmdBanks: TdxBarLargeButton;
    CmdGroupingKala: TdxBarLargeButton;
    CmdPublic: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarManager1Bar8: TdxBar;
    dxBarManager1Bar9: TdxBar;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    ImgList32: TcxImageList;
    dxBarManager1Bar10: TdxBar;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarManager1Bar11: TdxBar;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarManager1Bar12: TdxBar;
    dxBarManager1Bar13: TdxBar;
    dxBarManager1Bar14: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    dxBarSubItem6: TdxBarSubItem;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    dxBarManager1Bar15: TdxBar;
    dxBarSubItem9: TdxBarSubItem;
    dxBarSubItem10: TdxBarSubItem;
    dxBarManager1Bar16: TdxBar;
    dxBarManager1Bar17: TdxBar;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarManager1Bar18: TdxBar;
    dxBarButton13: TdxBarButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarManager1Bar19: TdxBar;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarManager1Bar20: TdxBar;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarLargeButton19: TdxBarLargeButton;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarSubItem11: TdxBarSubItem;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    dxBarButton58: TdxBarButton;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarButton61: TdxBarButton;
    dxBarButton62: TdxBarButton;
    dxBarButton63: TdxBarButton;
    dxBarButton64: TdxBarButton;
    dxBarButton65: TdxBarButton;
    dxBarButton66: TdxBarButton;
    dxBarButton67: TdxBarButton;
    dxBarButton68: TdxBarButton;
    dxBarButton69: TdxBarButton;
    dxBarButton70: TdxBarButton;
    dxBarButton71: TdxBarButton;
    dxBarButton72: TdxBarButton;
    dxBarButton73: TdxBarButton;
    dxBarManager1Bar21: TdxBar;
    dxBarManager1Bar22: TdxBar;
    dxBarSubItem12: TdxBarSubItem;
    dxBarButton74: TdxBarButton;
    dxBarButton75: TdxBarButton;
    dxBarSubItem13: TdxBarSubItem;
    dxBarButton76: TdxBarButton;
    dxBarButton77: TdxBarButton;
    dxBarButton78: TdxBarButton;
    dxBarButton79: TdxBarButton;
    dxBarSubItem14: TdxBarSubItem;
    dxBarSubItem15: TdxBarSubItem;
    dxBarButton80: TdxBarButton;
    dxBarButton81: TdxBarButton;
    dxBarButton82: TdxBarButton;
    dxBarButton83: TdxBarButton;
    cxSplitter1: TcxSplitter;
    dxBarButton84: TdxBarButton;
    dxBarButton85: TdxBarButton;
    dxBarButton86: TdxBarButton;
    dxBarButton87: TdxBarButton;
    ImgList16: TcxImageList;
    dxBarButton88: TdxBarButton;
    dxBarSubItem16: TdxBarSubItem;
    dxBarLargeButton20: TdxBarLargeButton;
    dxBarManager1Bar23: TdxBar;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarManager1Bar24: TdxBar;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarButton89: TdxBarButton;
    hit_Storage: TdxBarScreenTip;
    hit_TransferKala: TdxBarScreenTip;
    hit_kala: TdxBarScreenTip;
    hit_bank: TdxBarScreenTip;
    hit_Acounts: TdxBarScreenTip;
    hit_Customer: TdxBarScreenTip;
    hit_Shop: TdxBarScreenTip;
    hit_Public: TdxBarScreenTip;
    hit_Grouping: TdxBarScreenTip;
    hit_IN_Buy: TdxBarScreenTip;
    hit_IN_Sale: TdxBarScreenTip;
    hit_IN_Back: TdxBarScreenTip;
    hit_Transactiopn: TdxBarScreenTip;
    hit_TransferCost: TdxBarScreenTip;
    hit_TransferQuch: TdxBarScreenTip;
    hit_CostResive: TdxBarScreenTip;
    hit_CostSend: TdxBarScreenTip;
    hit_QuchResive: TdxBarScreenTip;
    hit_QuchSend: TdxBarScreenTip;
    dxBarLargeButton24: TdxBarLargeButton;
    dxBarLargeButton25: TdxBarLargeButton;
    dxBarSubItem17: TdxBarSubItem;
    dxBarButton90: TdxBarButton;
    dxBarButton91: TdxBarButton;
    dxBarButton92: TdxBarButton;
    dxBarButton93: TdxBarButton;
    dxBarButton94: TdxBarButton;
    dxBarSubItem18: TdxBarSubItem;
    dxBarButton95: TdxBarButton;
    dxBarButton96: TdxBarButton;
    dxBarButton97: TdxBarButton;
    dxBarLargeButton26: TdxBarLargeButton;
    hit_IN_BackStorage: TdxBarScreenTip;
    dxBarButton98: TdxBarButton;
    dxBarButton99: TdxBarButton;
    dxBarButton100: TdxBarButton;
    dxBarButton101: TdxBarButton;
    dxBarButton102: TdxBarButton;
    dxBarButton103: TdxBarButton;
    dxBarButton104: TdxBarButton;
    dxBarButton105: TdxBarButton;
    dxBarButton106: TdxBarButton;
    dxBarButton107: TdxBarButton;
    dxBarButton108: TdxBarButton;
    dxBarButton109: TdxBarButton;
    dxBarButton110: TdxBarButton;
    dxBarButton111: TdxBarButton;
    dxBarButton112: TdxBarButton;
    dxBarButton113: TdxBarButton;
    dxBarButton114: TdxBarButton;
    dxBarButton115: TdxBarButton;
    dxBarButton116: TdxBarButton;
    dxBarButton117: TdxBarButton;
    dxBarLargeButton27: TdxBarLargeButton;
    dxBarButton118: TdxBarButton;
    dxBarButton119: TdxBarButton;
    dxBarButton120: TdxBarButton;
    dxBarManager1Bar25: TdxBar;
    dxBarLargeButton28: TdxBarLargeButton;
    dxRibbonPopupMenu1: TdxRibbonPopupMenu;
    dxBarButton121: TdxBarButton;
    dxBarButton122: TdxBarButton;
    dxBarButton123: TdxBarButton;
    dxBarManager1Bar26: TdxBar;
    dxBarLargeButton29: TdxBarLargeButton;
    dxBarSubItem19: TdxBarSubItem;
    dxBarButton124: TdxBarButton;
    dxBarLargeButton30: TdxBarLargeButton;
    dxBarManager1Bar27: TdxBar;
    dxBarManager1Bar28: TdxBar;
    dxBarLargeButton31: TdxBarLargeButton;
    dxBarLargeButton32: TdxBarLargeButton;
    dxBarLargeButton33: TdxBarLargeButton;
    dxBarLargeButton34: TdxBarLargeButton;
    dxBarButton125: TdxBarButton;
    dxBarLargeButton35: TdxBarLargeButton;
    dxBarLargeButton36: TdxBarLargeButton;
    hit_Sandogh: TdxBarScreenTip;
    hit_Bardasht: TdxBarScreenTip;
    hit_Hazineh: TdxBarScreenTip;
    dxBarSubItem20: TdxBarSubItem;
    dxBarButton126: TdxBarButton;
    dxBarButton127: TdxBarButton;
    dxBarButton128: TdxBarButton;
    dxBarButton129: TdxBarButton;
    dxRibbonQuickAccessGroupButton1: TdxRibbonQuickAccessGroupButton;
    dxBarSubItem21: TdxBarSubItem;
    dxBarEdit1: TdxBarEdit;
    cxBarEditItem3: TcxBarEditItem;
    dxBarButton130: TdxBarButton;
    cxBarEditItem4: TcxBarEditItem;
    cxBarEditItem5: TcxBarEditItem;
    dxBarListItem1: TdxBarListItem;
    cxBarEditItem6: TcxBarEditItem;
    cxBarEditItem7: TcxBarEditItem;
    dxRibbonQuickAccessGroupButton2: TdxRibbonQuickAccessGroupButton;
    cxBarEditItem8: TcxBarEditItem;
    dxBarEdit2: TdxBarEdit;
    dxBarButton131: TdxBarButton;
    dxBarSubItem22: TdxBarSubItem;
    cxBarEditItem9: TcxBarEditItem;
    dxBarCombo1: TdxBarCombo;
    dxBarCombo2: TdxBarCombo;
    dxBarButton132: TdxBarButton;
    dxBarButton133: TdxBarButton;
    Timer1: TTimer;
    cxPageControl2: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    LVStorage: TcxListView;
    cxTabSheet6: TcxTabSheet;
    LVQuchResive: TcxListView;
    cxTabSheet7: TcxTabSheet;
    LVQuchSend: TcxListView;
    cxTabSheet8: TcxTabSheet;
    ReportDay: TcxListView;
    cxGroupBox1: TcxGroupBox;
    cxImage1: TcxImage;
    cxLabel2: TcxLabel;
    cxListView1: TcxListView;
    cxLabel1: TcxLabel;
    cxLabel6: TcxLabel;
    cxMaskEdit10: TcxMaskEdit;
    cxComboBox1: TcxComboBox;
    cxComboBox2: TcxComboBox;
    cxComboBox3: TcxComboBox;
    ComPersent: TcxComboBox;
    ComBuyPrice: TcxComboBox;
    ComSalePrice: TcxComboBox;
    cxImage2: TcxImage;
    cxLabel3: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxLabel4: TcxLabel;
    cxImage3: TcxImage;
    cxImage4: TcxImage;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    cxListView2: TcxListView;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxMaskEdit2: TcxMaskEdit;
    cxImage6: TcxImage;
    cxImage5: TcxImage;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxListView3: TcxListView;
    cxLabel12: TcxLabel;
    procedure CmdStorageClick(Sender: TObject);
    procedure CmdKalaClick(Sender: TObject);
    procedure CmdBanksClick(Sender: TObject);
    procedure CmdAccountsClick(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure CmdShopClick(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure CmdGroupingKalaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton12Click(Sender: TObject);
    procedure dxBarLargeButton13Click(Sender: TObject);
    procedure dxBarLargeButton8Click(Sender: TObject);
    procedure dxBarLargeButton15Click(Sender: TObject);
    procedure dxBarLargeButton14Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure dxBarLargeButton20Click(Sender: TObject);
    procedure dxBarLargeButton22Click(Sender: TObject);
    procedure dxBarLargeButton21Click(Sender: TObject);
    procedure dxBarLargeButton23Click(Sender: TObject);
    procedure dxBarButton89Click(Sender: TObject);
    procedure dxBarButton75Click(Sender: TObject);
    procedure dxBarLargeButton24Click(Sender: TObject);
    procedure dxBarLargeButton16Click(Sender: TObject);
    procedure dxBarLargeButton18Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton99Click(Sender: TObject);
    procedure dxBarButton48Click(Sender: TObject);
    procedure dxBarButton50Click(Sender: TObject);
    procedure dxBarButton49Click(Sender: TObject);
    procedure dxBarButton52Click(Sender: TObject);
    procedure dxBarButton54Click(Sender: TObject);
    procedure dxBarButton55Click(Sender: TObject);
    procedure dxBarButton56Click(Sender: TObject);
    procedure dxBarButton57Click(Sender: TObject);
    procedure dxBarButton66Click(Sender: TObject);
    procedure dxBarButton61Click(Sender: TObject);
    procedure dxBarButton62Click(Sender: TObject);
    procedure dxBarButton63Click(Sender: TObject);
    procedure dxBarButton64Click(Sender: TObject);
    procedure dxBarButton67Click(Sender: TObject);
    procedure dxBarButton68Click(Sender: TObject);
    procedure dxBarButton69Click(Sender: TObject);
    procedure dxBarButton86Click(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure dxBarButton38Click(Sender: TObject);
    procedure dxBarButton92Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure dxBarButton32Click(Sender: TObject);
    procedure dxBarButton78Click(Sender: TObject);
    procedure dxBarButton100Click(Sender: TObject);
    procedure dxBarButton96Click(Sender: TObject);
    procedure dxBarButton101Click(Sender: TObject);
    procedure dxBarButton105Click(Sender: TObject);
    procedure dxBarButton39Click(Sender: TObject);
    procedure dxBarButton35Click(Sender: TObject);
    procedure dxBarButton93Click(Sender: TObject);
    procedure dxBarButton76Click(Sender: TObject);
    procedure dxBarButton79Click(Sender: TObject);
    procedure dxBarLargeButton27Click(Sender: TObject);
    procedure dxBarButton118Click(Sender: TObject);
    procedure dxBarLargeButton28Click(Sender: TObject);
    procedure dxBarButton121Click(Sender: TObject);
    procedure dxBarButton124Click(Sender: TObject);
    procedure dxBarLargeButton11Click(Sender: TObject);
    procedure dxBarLargeButton30Click(Sender: TObject);
    procedure dxBarLargeButton10Click(Sender: TObject);
    procedure dxBarLargeButton31Click(Sender: TObject);
    procedure dxBarLargeButton32Click(Sender: TObject);
    procedure dxBarLargeButton33Click(Sender: TObject);
    procedure dxBarLargeButton34Click(Sender: TObject);
    procedure dxBarButton125Click(Sender: TObject);
    procedure dxBarLargeButton36Click(Sender: TObject);
    procedure dxBarLargeButton35Click(Sender: TObject);
    procedure dxBarButton126Click(Sender: TObject);
    procedure dxBarButton127Click(Sender: TObject);
    procedure dxBarButton128Click(Sender: TObject);
    procedure dxBarButton129Click(Sender: TObject);
    procedure dxBarCombo2Change(Sender: TObject);
    procedure dxBarCombo1Change(Sender: TObject);
    procedure dxBarButton27Click(Sender: TObject);
    procedure dxBarButton132Click(Sender: TObject);
    procedure dxBarButton133Click(Sender: TObject);
    procedure cxComboBox3PropertiesEditValueChanged(Sender: TObject);
    procedure cxMaskEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure cxListView1DblClick(Sender: TObject);
    procedure cxMaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxMaskEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxListView2DblClick(Sender: TObject);
    procedure cxListView3DblClick(Sender: TObject);
  private
       Procedure ReportCostSend(DD,Filename,Title,SPname:String);
       procedure CalcSum(var Cxlist:Tcxlistview; var CxLab:TcxLabel);
       Procedure SaveBSfactor();
  public

       WPath : String;
       TimeNow,DateNow,UserNow,Tax,TitleReport,Slogan,AddTel,Permission: String;
       DocNumber ,NewQFactor,NewSFactor,NewBFactor: Integer;
       SumKol,CountX : Double;

       procedure FillQuickFaktor();
  end;

var
   Main: TMain;

implementation

uses frmStorage, frmKala, frmBanks, frmAcounts,
  frmQuchResive, frmQuchSend, frmShop, frmCostResive, frmCostSend,
  frmInvoiceSell, frmInvoiceBuy, frmInvoiceBack, frmGrouping, frmDM,
  frmLogin, frmDefineUser, frmBackup, frmRestore, DateUtils,
  frmSettings, frmReportInvoice, frmKalaTransfer, frmTransferCQ,
  frmTransferQuch, frmSandogh, frmStorageLevel, frmInvoiceBackStorage,
  frmChangePass, frmChangeUser, frmReportStorage,
  frmReportSaleDetial, frmReportCostSend, frmReportQuch, frmReportDeb_Cred,
  frmSaleFromSellerDate2Date, frmEnterValueAcount, frmReportCycleKala,
  frmAnbarGardany, frmReport_KalaDefineStorage, frmExpense,
  frmReportProfit, frmLogEnter_Exit, frmLogDailyReport, frmPermission,
  frmBardasht, frmDailySandogh, frmReportArchive_AG, frmAbout,
  frmSaleStorageL3, frmPrintBarcode;

{$R *.dfm}

procedure TMain.CmdStorageClick(Sender: TObject);
var
   F : TStorage;
begin
   F := TStorage.Create(Self);
   CmdStorage.Enabled:=False;
   F.Show;
end;

procedure TMain.CmdKalaClick(Sender: TObject);
var
   F : TKala;
begin
   F := TKala.Create(Self);
   CmdKala.Enabled:=False;
   F.Show;
end;

procedure TMain.CmdBanksClick(Sender: TObject);
var
    F : TBanks;
begin
    F := TBanks.Create(Self);
    CmdBanks.Enabled:=False;
    F.Show;
end;

procedure TMain.CmdAccountsClick(Sender: TObject);
var
   F : TAcounts;
begin
   F := TAcounts.Create(Self);
   CmdAccounts.Enabled:=False;
   F.Show;
end;

procedure TMain.dxBarLargeButton7Click(Sender: TObject);
var
    F : TQuchSend;
begin
    F := TQuchSend.Create(Self);
    dxBarLargeButton7.Enabled:=False;
    F.Show;
end;

procedure TMain.dxBarLargeButton6Click(Sender: TObject);
var
    F : TQuchResive;
begin
    F := TQuchResive.Create(Self);
    dxBarLargeButton6.Enabled:=False;
    F.TypeQuch:=KQ_In_FreeQuch;
    F.Show;
end;

procedure TMain.CmdShopClick(Sender: TObject);
var
   F : TShop;
begin
   F := TShop.Create(Self);
   CmdShop.Enabled:=False;
   F.Show;
end;

procedure TMain.dxBarLargeButton5Click(Sender: TObject);
var
    F : TCostSend;
begin
    F := TCostSend.Create(Self);
    dxBarLargeButton5.Enabled:=False;
    F.Show;
end;

procedure TMain.dxBarLargeButton4Click(Sender: TObject);
var
    F : TCostResive;
begin
    F := TCostResive.Create(Self);
    dxBarLargeButton4.Enabled:=False;
    F.TypeCost:=KC_In_FreeCost;
    F.Show;
end;

procedure TMain.CmdGroupingKalaClick(Sender: TObject);
var
    F : TGrouping;
begin
    F := TGrouping.Create(Self);
    CmdGroupingKala.Enabled:=False;
    F.Show;
end;

procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
Var
    DDD : string;
    YY , MM , DD : Word;
    T,D : String;
begin
    DM.ADORun.Close;
    DM.ADORun.CommandText:='SELECT GETDATE()';
    DM.ADORun.Open;
    T := TimeToStr(TimeOf(DM.ADORun.Fields[0].AsDateTime));
    DDD := DateToStr(DM.ADORun.Fields[0].AsDateTime);
    DM.Julian2Persian(strtoint(Copy(DDD,1,4)),strtoint(Copy(DDD,6,2)),strtoint(Copy(DDD,9,2)),YY , MM , DD);
    D := DM.FixDate(inttostr(YY)+'/'+inttostr(MM)+'/'+inttostr(DD));
    DM.ADORun.Close;
    dm.Update('DocNO','DateClose=' + QuotedStr(D) + ',' +
                      'TimeClose=' + QuotedStr(T) + ',' +
                      'UserClose=' + QuotedStr(UserNow)
                     ,'docno='+inttostr(DocNumber));
    Application.Terminate;
end;

procedure TMain.FormShow(Sender: TObject);
begin
    dxRibbonStatusBar1.Panels.Items[0].Text := inttostr( DocNumber);
    dxRibbonStatusBar1.Panels.Items[2].Text := DateNow;
    dxRibbonStatusBar1.Panels.Items[4].Text := UserNow;
    DM.ApplyPermission;
    DM.AlarmStorage;
    DM.AlarmQuchSend;
    DM.AlarmQuchResive;
    DM.FillDailyReport(UserNow,DateNow);
    WPath := ExtractFilePath(Application.ExeName);

    cxGroupBox3.Height:=(cxGroupBox1.Height+110) div 2;

    Timer1.Enabled:=true;
end;

procedure TMain.dxBarLargeButton12Click(Sender: TObject);
begin
    WinExec(PChar(WPath+'CalcPlus.exe'),0);
end;

procedure TMain.dxBarLargeButton13Click(Sender: TObject);
begin
    WinExec(PChar(WPath+'Notepad.exe'),0);
end;

procedure TMain.dxBarLargeButton8Click(Sender: TObject);
var
    F : TDefineUser;
begin
    F := TDefineUser.Create(Self);
    F.ShowModal;
    F.Free;
end;

procedure TMain.dxBarLargeButton15Click(Sender: TObject);
var
    F : TBackup;
begin
    F := TBackup.Create(Self);
    F.ShowModal;
    F.Free;
end;

procedure TMain.dxBarLargeButton14Click(Sender: TObject);
var
    F : TRestore;
begin
    F := TRestore.Create(Self);
    F.ShowModal;
    F.Free;
end;

procedure TMain.dxBarButton26Click(Sender: TObject);
var
    F : TSettings;
begin
    F := TSettings.Create(Self);
    F.ShowModal;
    F.Free;
end;

procedure TMain.dxBarButton28Click(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TMain.dxBarButton34Click(Sender: TObject);
var
   F : TReportInvoice;
begin
   F := TReportInvoice.Create(Self);
   F.Caption := 'ÝÇ˜ÊæÑ ÎÑíÏ-' + dxBarButton34.Caption;
   F.cxRadioButton2.Checked := True;
   F.ReportKind := rpt_InBuy;
   F.Show;
end;

procedure TMain.dxBarLargeButton20Click(Sender: TObject);
var
   F : TKalaTransfer;
begin
   F := TKalaTransfer.Create(Self);
   dxBarLargeButton20.Enabled:=False;
   F.Show;
end;

procedure TMain.dxBarLargeButton22Click(Sender: TObject);
var
    F : TTransferCQ;
begin
    F := TTransferCQ.Create(Self);
    dxBarLargeButton22.Enabled:=False;
    F.Show;
end;

procedure TMain.dxBarLargeButton21Click(Sender: TObject);
var
   F : TTransferQuch;
begin
   F := TTransferQuch.Create(Self);
   dxBarLargeButton21.Enabled:=False;
   F.Show;
end;

procedure TMain.dxBarLargeButton23Click(Sender: TObject);
var
    F : TSandogh;
begin
    F := TSandogh.Create(Self);
    dxBarLargeButton23.Enabled:=False;
    F.Show;
end;

procedure TMain.dxBarButton89Click(Sender: TObject);
var
    Mem : TfrxMemoView;
    Pic : TfrxPictureView;
    DD , Title : String;
begin
    DM.ADOspReport.Close;
    DM.ADOspReport.Parameters.Clear;
    Title := 'ãíÒÇä ÝÑæÔ';
    DM.ADOspReport.ProcedureName:='dbo.Report_InvoiceSale_Date';
    DM.ADOspReport.Parameters.Refresh;
    DM.ADOspReport.Parameters.ParamByName('@Param').Value := main.DateNow;
    DD := 'ÝÑæÔ ÇãÑæÒ : ' + main.DateNow;
    DM.frxReport1.LoadFromFile(Main.WPath + 'Report\InvoiceSale.fr3');
    DM.ADOspReport.Open;

    Mem := DM.frxReport1.FindObject('Memo23') AS TfrxMemoView;
    Mem.Text := main.TitleReport;

    Pic := DM.frxReport1.FindObject('Picture1') AS TfrxPictureView;
    Pic.Picture.LoadFromFile(main.WPath+'Logo.jpg');

    Mem := DM.frxReport1.FindObject('Memo22') AS TfrxMemoView;
    Mem.Text := Main.UserNow;
    Mem := DM.frxReport1.FindObject('Memo21') AS TfrxMemoView;
    Mem.Text := Main.DateNow;
    Mem := DM.frxReport1.FindObject('Memo24') AS TfrxMemoView;
    Mem.Text := Title;
    Mem := DM.frxReport1.FindObject('Memo25') AS TfrxMemoView;
    Mem.Text := DD;
    DM.frxReport1.ShowReport;
end;

procedure TMain.dxBarButton75Click(Sender: TObject);
var
   F : TReportInvoice;
begin
   F := TReportInvoice.Create(Self);
   F.Caption := dxBarButton75.Caption;
   F.cxRadioButton2.Checked := True;
   F.ReportKind:=rpt_Sale;
   F.Show;
end;

procedure TMain.dxBarLargeButton24Click(Sender: TObject);
var
    F : TStorageLevel;
begin
    F := TStorageLevel.Create(Self);
    dxBarLargeButton24.Enabled:=False;
    F.Show;
end;

procedure TMain.dxBarLargeButton16Click(Sender: TObject);
var
    F : TChangePass;
begin
    F := TChangePass.Create(Self);
    F.ShowModal;
    F.Free;
end;

procedure TMain.dxBarLargeButton18Click(Sender: TObject);
var
    F : TChangeUser;
begin
    F := TChangeUser.Create(Self);
    F.ShowModal;
    F.Free;
end;

procedure TMain.dxBarButton30Click(Sender: TObject);
var
   F : TReportStorage;
begin
   F := TReportStorage.Create(Self);
   f.cxRadioButton2.Checked := True;
   f.Caption := dxBarButton30.Caption;
   F.Show;
end;

procedure TMain.dxBarButton99Click(Sender: TObject);
var
   F : TReportSaleDetial;
begin
   F := TReportSaleDetial.Create(Self);
   F.Typereps:=rpt_Sale_S;
   F.Caption := dxBarButton99.Caption;
   F.Show;
end;

procedure TMain.dxBarButton48Click(Sender: TObject);
var
   F : TReportCostSend;
begin
   F := TReportCostSend.Create(Self);
   f.Caption := dxBarButton48.Caption;
   f.RK := RK_CostSend;
   f.cxRadioButton2.Checked:=True;
   F.Show;
end;

procedure TMain.dxBarButton50Click(Sender: TObject);
begin
    ReportCostSend('ÊãÇã ÑÏÇÎÊ åÇí äÞÏí','Costsend.fr3','ÑÏÇÎÊ åÇí äÞÏí','ReportCostSend_All');
end;

procedure TMain.dxBarButton49Click(Sender: TObject);
begin
    ReportCostSend('ÑÏÇÎÊ åÇí äÞÏí Èå ÊÝ˜í˜ ãÇå','Costsend_Mon.fr3','ÑÏÇÎÊ åÇí äÞÏí','ReportCostSend_All_Mon');
end;

Procedure TMain.ReportCostSend(DD,Filename,Title,SPname:String);
var
    Mem : TfrxMemoView;
    Pic : TfrxPictureView;
begin
    DM.ADOspReport.Close;
    DM.frxDBDataset1.Clear;
    DM.ADOspReport.Parameters.Clear;
    DM.ADOspReport.ProcedureName:='dbo.'+Spname;
    DM.ADOspReport.Parameters.Refresh;
    DM.frxReport1.LoadFromFile(Main.WPath + 'Report\'+Filename);
    DM.ADOspReport.Open;

    Mem := DM.frxReport1.FindObject('Memo22') AS TfrxMemoView;
    Mem.Text := TitleReport;

    Pic := DM.frxReport1.FindObject('Picture1') AS TfrxPictureView;
    Pic.Picture.LoadFromFile(WPath+'Logo.jpg');

    Mem := DM.frxReport1.FindObject('Memo21') AS TfrxMemoView;
    Mem.Text := UserNow;
    Mem := DM.frxReport1.FindObject('Memo20') AS TfrxMemoView;
    Mem.Text := DateNow;
    Mem := DM.frxReport1.FindObject('Memo23') AS TfrxMemoView;
    Mem.Text := Title;
    Mem := DM.frxReport1.FindObject('Memo24') AS TfrxMemoView;
    Mem.Text := DD;
    DM.frxReport1.ShowReport;
end;

procedure TMain.dxBarButton52Click(Sender: TObject);
begin
    ReportCostSend('ÑÏÇÎÊ åÇí äÞÏí Èå ÊÝ˜í˜ ÓÇá','Costsend_Year.fr3','ÑÏÇÎÊ åÇí äÞÏí','ReportCostSend_All_Mon');
end;

procedure TMain.dxBarButton54Click(Sender: TObject);
var
   F : TReportCostSend;
begin
   F := TReportCostSend.Create(Self);
   f.Caption := dxBarButton54.Caption;
   f.RK := RK_CostResive;
   f.cxRadioButton1.Caption:='ÏÑíÇÝÊí ÊÇ ÊÇÑíÎ';
   f.cxRadioButton2.Caption:='ÏÑíÇÝÊí ÇÒ ÊÇÑíÎ';
   f.cxRadioButton3.Caption:='  ÎÑíÏÇÑ';
   f.cxRadioButton2.Checked:=True;
   F.Show;
end;

procedure TMain.dxBarButton55Click(Sender: TObject);
begin
    ReportCostSend('ÏÑíÇÝÊ äÞÏíåÇ Èå ÊÝ˜í˜ ãÇå','CostResive_Mon.fr3','ÏÑíÇÝÊ åÇí äÞÏí','ReportCostResive_All_Mon');
end;

procedure TMain.dxBarButton56Click(Sender: TObject);
begin
    ReportCostSend('ÏÑíÇÝÊ äÞÏí åÇ Èå ÊÝ˜í˜ ÓÇá','CostResive_Year.fr3','ÏÑíÇÝÊ åÇí äÞÏí','ReportCostResive_All_Mon');
end;

procedure TMain.dxBarButton57Click(Sender: TObject);
begin
    ReportCostSend('ÊãÇã ÏÑíÇÝÊ åÇí äÞÏí','CostResive.fr3','ÏÑíÇÝÊ åÇí äÞÏí','ReportCostResive_All');
end;

procedure TMain.dxBarButton66Click(Sender: TObject);
var
   F : TReportQuch;
begin
   F := TReportQuch.Create(Self);
   f.Caption := dxBarButton66.Caption;
   f.RKQuch := RK_QuchResive;
   f.cxRadioButton1.Caption:='ÏÑíÇÝÊí ÊÇ ÊÇÑíÎ';
   f.cxRadioButton2.Caption:='ÏÑíÇÝÊí ÇÒ ÊÇÑíÎ';
   f.cxRadioButton3.Caption:='ÎÑíÏÇÑ';
   f.cxRadioButton2.Checked:=True;
   F.Show;
end;

procedure TMain.dxBarButton61Click(Sender: TObject);
var
   F : TReportQuch;
begin
   F := TReportQuch.Create(Self);
   f.Caption := dxBarButton61.Caption;
   f.RKQuch := RK_QuchSend;
   f.cxRadioButton2.Checked:=True;
   F.Show;
end;

procedure TMain.dxBarButton62Click(Sender: TObject);
begin
    ReportCostSend('˜ åÇí ÑÏÇÎÊí Èå ÊÝ˜í˜ ãÇå','QuchSend_Mon.fr3','˜ åÇí ÑÏÇÎÊí','ReportQuchSend_Mon_All');
end;

procedure TMain.dxBarButton63Click(Sender: TObject);
begin
    ReportCostSend('˜ åÇí ÑÏÇÎÊí Èå ÊÝ˜í˜ ÓÇá','QuchSend_Year.fr3','˜ åÇí ÑÏÇÎÊí','ReportQuchSend_Year_All');
end;

procedure TMain.dxBarButton64Click(Sender: TObject);
begin
    ReportCostSend('ÊãÇã ˜ åÇí ÑÏÇÎÊí','QuchSend.fr3','˜ åÇí ÑÏÇÎÊí','ReportQuchSend_All');
end;

procedure TMain.dxBarButton67Click(Sender: TObject);
begin
    ReportCostSend('˜ åÇí ÏÑíÇÝÊí Èå ÊÝ˜í˜ ãÇå','QuchResive_Mon.fr3','˜ åÇí ÏÑíÇÝÊí','ReportQuchResive_Mons_All');
end;

procedure TMain.dxBarButton68Click(Sender: TObject);
begin
    ReportCostSend('˜ åÇí ÏÑíÇÝÊí Èå ÊÝ˜í˜ ÓÇá','QuchResive_Year.fr3','˜ åÇí ÏÑíÇÝÊí','ReportQuchResive_Years_All');
end;

procedure TMain.dxBarButton69Click(Sender: TObject);
begin
    ReportCostSend('ÊãÇã ˜ åÇí ÏÑíÇÝÊí','QuchResive.fr3','˜ åÇí ÏÑíÇÝÊí','ReportQuchResive_All');
end;

procedure TMain.dxBarButton86Click(Sender: TObject);
var
   F : TReportDeb_Cred;
begin
   F := TReportDeb_Cred.Create(Self);
   f.Caption := dxBarButton86.Caption;
   f.cxRadioButton2.Checked:=True;
   F.Show;
end;

procedure TMain.dxBarButton42Click(Sender: TObject);
var
   F : TReportInvoice;
begin
   F := TReportInvoice.Create(Self);
   F.Caption := 'ÝÇ˜ÊæÑåÇí ÝÑæÔ-' + dxBarButton42.Caption ;
   F.cxRadioButton2.Checked := True;
   F.ReportKind := rpt_Sale2;
   F.Show;
end;

procedure TMain.dxBarButton38Click(Sender: TObject);
var
   F : TReportInvoice;
begin
   F := TReportInvoice.Create(Self);
   F.Caption := 'ÝÇ˜ÊæÑåÇí ÈÑÔÊ ÇÒ ÝÑæÔ-' + dxBarButton38.Caption ;
   F.cxRadioButton2.Checked := True;
   F.ReportKind := rpt_BackFromSale;
   F.Show;
end;

procedure TMain.dxBarButton92Click(Sender: TObject);
var
   F : TReportInvoice;
begin
   F := TReportInvoice.Create(Self);
   F.Caption := 'ÝÇ˜ÊæÑ ÈÑÔÊ ÇÒ ÇäÈÇÑ-' + dxBarButton92.Caption;
   F.cxRadioButton2.Checked := True;
   F.ReportKind := rpt_BackFromStorage;
   F.Show;
end;

procedure TMain.dxBarButton31Click(Sender: TObject);
begin
    DM.AlarmStorage;
end;

procedure TMain.dxBarButton32Click(Sender: TObject);
var
    Mem : TfrxMemoView;
    Pic : TfrxPictureView;
    Title : String;
begin
    DM.ADOspReport.Close;
    DM.ADOspReport.Parameters.Clear;
    Title := 'áíÓÊ ˜ÇáÇåÇí ãÚÑÝí ÔÏå';
    DM.ADOspReport.ProcedureName:='dbo.Report_ListKala';
    DM.ADOspReport.Parameters.Refresh;
    DM.frxReport1.LoadFromFile(Main.WPath + 'Report\Listkala.fr3');
    DM.ADOspReport.Open;

    Mem := DM.frxReport1.FindObject('Memo23') AS TfrxMemoView;
    Mem.Text := main.TitleReport;

    Pic := DM.frxReport1.FindObject('Picture1') AS TfrxPictureView;
    Pic.Picture.LoadFromFile(main.WPath+'Logo.jpg');

    Mem := DM.frxReport1.FindObject('Memo22') AS TfrxMemoView;
    Mem.Text := Main.UserNow;
    Mem := DM.frxReport1.FindObject('Memo21') AS TfrxMemoView;
    Mem.Text := Main.DateNow;
    Mem := DM.frxReport1.FindObject('Memo24') AS TfrxMemoView;
    Mem.Text := Title;
    DM.frxReport1.ShowReport;
end;

procedure TMain.dxBarButton78Click(Sender: TObject);
var
   F : TReportInvoice;
begin
   F := TReportInvoice.Create(Self);
   F.Caption := dxBarButton78.Caption;
   F.cxRadioButton2.Checked := True;
   F.ReportKind := rpt_Buy;
   F.Show;
end;

procedure TMain.dxBarButton100Click(Sender: TObject);
var
   F : TEnterValueAcount;
begin
   F := TEnterValueAcount.Create(Self);
   F.ShowModal;
   F.Free;
end;

procedure TMain.dxBarButton96Click(Sender: TObject);
var
   F : TReportCycleKala;
begin
   F := TReportCycleKala.Create(Self);
   F.Show;
end;

procedure TMain.dxBarButton101Click(Sender: TObject);
var
   F : TReportStorage;
begin
   F := TReportStorage.Create(Self);
   f.cxRadioButton4.Checked:=True;
   f.Caption:=dxBarButton101.Caption;
   F.Show;
end;

procedure TMain.dxBarButton105Click(Sender: TObject);
var
   F : TReportInvoice;
begin
   F := TReportInvoice.Create(Self);
   F.Caption := dxBarButton105.Caption ;
   F.cxRadioButton3.Checked := True;
   F.ReportKind := rpt_Sale2;
   F.Show;
end;

procedure TMain.dxBarButton39Click(Sender: TObject);
var
   F : TReportInvoice;
begin
   F := TReportInvoice.Create(Self);
   F.Caption := 'ÝÇ˜ÊæÑåÇí ÈÑÔÊ ÇÒ ÝÑæÔ-' + dxBarButton39.Caption ;
   F.cxRadioButton3.Checked := True;
   F.ReportKind := rpt_BackFromSale;
   F.Show;
end;

procedure TMain.dxBarButton35Click(Sender: TObject);
var
   F : TReportInvoice;
begin
   F := TReportInvoice.Create(Self);
   F.Caption := 'ÝÇ˜ÊæÑ ÎÑíÏ-' + dxBarButton35.Caption;
   F.cxRadioButton3.Checked := True;
   F.ReportKind := rpt_InBuy;
   F.Show;
end;

procedure TMain.dxBarButton93Click(Sender: TObject);
var
   F : TReportInvoice;
begin
   F := TReportInvoice.Create(Self);
   F.Caption := 'ÝÇ˜ÊæÑ ÈÑÔÊ ÇÒ ÇäÈÇÑ-' + dxBarButton93.Caption;
   F.cxRadioButton3.Checked := True;
   F.ReportKind := rpt_BackFromStorage;
   F.Show;
end;

procedure TMain.dxBarButton76Click(Sender: TObject);
var
   F : TReportInvoice;
begin
   F := TReportInvoice.Create(Self);
   F.Caption := dxBarButton76.Caption;
   F.cxRadioButton4.Checked := True;
   F.ReportKind:=rpt_Sale;
   F.Show;
end;

procedure TMain.dxBarButton79Click(Sender: TObject);
var
   F : TReportInvoice;
begin
   F := TReportInvoice.Create(Self);
   F.Caption := dxBarButton79.Caption;
   F.cxRadioButton4.Checked := True;
   F.ReportKind := rpt_Buy;
   F.Show;
end;

procedure TMain.dxBarLargeButton27Click(Sender: TObject);
var
   F : TAnbarGardany;
begin
   F := TAnbarGardany.Create(Self);
   dxBarLargeButton27.Enabled:=False;
   F.ShowModal;
end;

procedure TMain.dxBarButton118Click(Sender: TObject);
var
   F : TReport_KalaDefineStorage;
begin
   F := TReport_KalaDefineStorage.Create(Self);
   F.Caption := dxBarButton118.Caption;
   F.cxRadioButton3.Checked := True;
   F.Show;
end;

procedure TMain.dxBarLargeButton28Click(Sender: TObject);
var
    F : TExpense;
begin
    F := TExpense.Create(Self);
    dxBarLargeButton28.Enabled:=False;
    F.Show;
end;

procedure TMain.dxBarButton121Click(Sender: TObject);
begin
   if LVStorage.ItemIndex >= 0 then
      If MessageDlg('ãÇíá Èå ÍÐÝ ˜ÇáÇí åÔÏÇÑ ÏÇÏå ÔÏå ãí ÈÇÔíÏ¿',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      begin
          DM.Update('Storage','Alarm=0','StorageNO='+LVStorage.Items.Item[LVStorage.Selected.Index].SubItems.Strings[3] +
                                        ' AND code='+LVStorage.Items.Item[LVStorage.Selected.Index].SubItems.Strings[4]);
          LVStorage.Items.Item[LVStorage.Selected.Index].Delete;
      end
      Else
      Abort;
end;

procedure TMain.dxBarButton124Click(Sender: TObject);
var
   F : TReportSaleDetial;
begin
   F := TReportSaleDetial.Create(Self);
   F.Typereps:=rpt_Expense_S;
   F.cxLabel2.Caption:=': ãíÒÇä åÒíäå ÏÑ ÈÇÒå ÒãÇäí';
   F.Caption := dxBarButton124.Caption;
   F.Show;
end;

procedure TMain.dxBarLargeButton11Click(Sender: TObject);
var
    F : TLogEnter_Exit;
begin
    F := TLogEnter_Exit.Create(Self);
    F.ShowModal;
    F.Free;
end;

procedure TMain.dxBarLargeButton30Click(Sender: TObject);
var
    F : TLogDailyReport;
begin
    F := TLogDailyReport.Create(Self);
    F.ShowModal;
    F.Free;
end;

procedure TMain.dxBarLargeButton10Click(Sender: TObject);
var
    F : TPermission;
begin
    F := TPermission.Create(Self);
    F.ShowModal;
    F.Free;
end;

procedure TMain.dxBarLargeButton31Click(Sender: TObject);
begin
   InvoiceSell := TInvoiceSell.Create(Self);
   dxBarLargeButton31.Enabled:=False;
   InvoiceSell.Show;
end;

procedure TMain.dxBarLargeButton32Click(Sender: TObject);
begin
    InvoiceBuy := TInvoiceBuy.Create(Self);
    dxBarLargeButton32.Enabled:=False;
    InvoiceBuy.Show;
end;

procedure TMain.dxBarLargeButton33Click(Sender: TObject);
begin
    InvoiceBack := TInvoiceBack.Create(Self);
    dxBarLargeButton33.Enabled:=False;
    InvoiceBack.Show;
end;

procedure TMain.dxBarLargeButton34Click(Sender: TObject);
begin
    InvoiceBackStorage := TInvoiceBackStorage.Create(Self);
    dxBarLargeButton34.Enabled:=False;
    InvoiceBackStorage.Show;
end;

procedure TMain.dxBarButton125Click(Sender: TObject);
var
    F : TReportProfit;
begin
    F := TReportProfit.Create(Self);
    F.cxRadioButton4.Checked:=True;
    F.Show;
end;

procedure TMain.dxBarLargeButton36Click(Sender: TObject);
var
    F : TBardasht;
begin
    F := TBardasht.Create(Self);
    dxBarLargeButton36.Enabled:=False;
    F.Show;
end;

procedure TMain.dxBarLargeButton35Click(Sender: TObject);
var
   F : TDailySandogh;
begin
   F := TDailySandogh.Create(Self);
   dxBarLargeButton35.Enabled:=False;
   F.Show;
end;

procedure TMain.dxBarButton126Click(Sender: TObject);
var
   F : TReportSaleDetial;
begin
   F := TReportSaleDetial.Create(Self);
   F.Typereps:=rpt_Bardasht;
   F.cxLabel2.Caption:=':ãíÒÇä ÈÑÏÇÔÊ ÏÑ ÈÇÒå ÒãÇäí';
   F.cxLabel2.left:=F.cxLabel2.left-15;
   F.Caption := dxBarButton126.Caption;
   F.Show;
end;

procedure TMain.dxBarButton127Click(Sender: TObject);
var
   F : TReportArchive_AG;
begin
   F := TReportArchive_AG.Create(Self);
   F.Show;
end;

procedure TMain.dxBarButton128Click(Sender: TObject);
var
   F : TReportCostSend;
begin
   F := TReportCostSend.Create(Self);
   f.Caption := dxBarButton128.Caption;
   f.RK := RK_CostSend;
   f.cxRadioButton3.Checked:=True;
   F.Show;
end;

procedure TMain.dxBarButton129Click(Sender: TObject);
var
   F : TReportQuch;
begin
   F := TReportQuch.Create(Self);
   f.Caption := dxBarButton129.Caption;
   f.RKQuch := RK_QuchSend;
   f.cxRadioButton3.Checked:=True;
   F.Show;
end;

procedure TMain.dxBarCombo2Change(Sender: TObject);
begin
    Login.dxSkinController1.SkinName := dxBarCombo2.Text ;
end;

procedure TMain.dxBarCombo1Change(Sender: TObject);
begin
    Main.dxRibbon1.ColorSchemeName := dxBarCombo1.Text ;
end;

procedure TMain.dxBarButton27Click(Sender: TObject);
var
    F : TAbout;
begin
   F := TAbout.Create(Self);
   F.ShowModal;
   F.Free;
end;

procedure TMain.dxBarButton132Click(Sender: TObject);
var
   F : TSaleStorageL3;
begin
   F := TSaleStorageL3.Create(Self);
   F.Show;
end;

procedure TMain.dxBarButton133Click(Sender: TObject);
var
   F : TprintBarcode;
begin
   F := TprintBarcode.Create(Self);
   F.Show;
end;

procedure TMain.cxComboBox3PropertiesEditValueChanged(Sender: TObject);
begin
    cxComboBox1.ItemIndex:=cxComboBox3.ItemIndex;
    cxComboBox2.ItemIndex:=cxComboBox3.ItemIndex;
    ComSalePrice.ItemIndex:=cxComboBox3.ItemIndex;
    ComBuyPrice.ItemIndex:=cxComboBox3.ItemIndex;
    ComPersent.ItemIndex:=cxComboBox3.ItemIndex;
end;

procedure TMain.CalcSum(var Cxlist:Tcxlistview; var CxLab:TcxLabel);
Var
    J : Integer;
begin
    SumKol:=0;
    CountX:=0;
    for J:=0 to Cxlist.Items.Count-1 do
    begin
       SumKol := SumKol + StrtoFloat(Cxlist.Items.item[J].Caption);
       CountX := CountX + StrtoFloat(Cxlist.Items.item[J].SubItems.Strings[1]);
    end;
    CxLab.Caption :=' ÊÚÏÇÏ ÇÞáÇã ÝÇ˜ÊæÑ : ' + FloatToStr(CountX) + '      ÌãÚ ˜á : ' + FloatToStr(Sumkol);
end;

procedure TMain.cxMaskEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
    S : Double;
    i,X,CR: Integer;
    Mem : TfrxMemoView;
begin
    if NewQFactor=0 then
       NewQFactor := DM.GetFieldMax('InvoiceSell');


    if Key=VK_RETURN then
    BEGIN
        cxComboBox3.Text:=cxMaskEdit10.Text;
        if cxComboBox3.ItemIndex>-1 then
        Begin
            for i:=0 to cxListView1.Items.Count-1 do
               if cxComboBox3.Text = cxListView1.Items.Item[i].SubItems.Strings[2] then
               begin
                   X := strtoint(cxListView1.Items.Item[i].SubItems.Strings[1]) + 1;
                   cxListView1.Items.Item[i].SubItems.Strings[1]:= inttostr(X);
                   S :=(strtofloat(ComSalePrice.Text) * strtoFloat(Tax))/100;
                   S := S + StrToFloat(ComSalePrice.Text);
                   cxListView1.Items.item[i].Caption := FloatToStr(S * X);
                   CalcSum(cxListView1,cxlabel1);
                   cxMaskEdit10.text:='';
                   cxComboBox3.ItemIndex:=-1;
                   cxMaskEdit10.SetFocus;
                   Exit;
               End;
            S :=(strtofloat(ComSalePrice.Text) * strtoFloat(Tax))/100;
            S := S + StrToFloat(ComSalePrice.Text);
            with cxListView1.Items.Add do
            begin
                Caption := FloatToStr(S);
                SubItems.Insert(0,ComSalePrice.Text);
                SubItems.Insert(1,'1');
                SubItems.Insert(2,cxComboBox3.Text);
                SubItems.Insert(3,inttostr(cxListView1.Items.Count));
                SubItems.Insert(4,cxComboBox1.Text);
                SubItems.Insert(5,cxComboBox2.Text);
                SubItems.Insert(6,ComBuyPrice.Text);
                SubItems.Insert(7,ComPersent.Text);
                CalcSum(cxListView1,cxlabel1);
            End;
            cxMaskEdit10.text:='';
            cxComboBox3.ItemIndex:=-1;
            cxMaskEdit10.SetFocus;
        End;
    End;
//**********************************************************************************************
    If key=VK_F2 then
    Begin
        //num,date,buyer,discount,description,DateSave,TimeSave,UserSave,DocNO
        Dm.insert(TableName1,FieldName1,inttostr(NewQFactor) + ',' +
                                        QuotedStr(DateNow) + ',1,0,' +
                                        QuotedStr('ÝÇ˜ÊæÑ ÓÑíÚ') + ',' +
                                        QuotedStr(DateNow) + ',' +
                                        QuotedStr(TimeNow) + ',' +
                                        QuotedStr(UserNow) + ',' +
                                        inttostr(DocNumber));

        for i:=0 to cxListView1.Items.Count-1 do
        begin  //num,no,StorageNO,code,count,price,BuyPrice,Persent,tax,Disc,DocNO
            Dm.insert(TableName2,FieldName2,inttostr(NewQFactor) + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[3] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[4] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[5] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[1] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[0] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[6] + ',' +
                                            cxListView1.Items.Item[i].SubItems.Strings[7] + ',' +
                                            Tax + ',0,' +
                                            inttostr(DocNumber));
        end;

            DM.FillReportDay('ÝÇ˜ÊæÑ ÝÑæÔ','ËÈÊ ÝÇ˜ÊæÑ ÝÑæÔ Èå ÔãÇÑå '+inttostr(NewQFactor)+' Èå ãÈáÛ ' + FloatToStr(SumKol) + ' Èå ÎÑíÏÇÑ ãÊÝÑÞå ' +' äÞÏí ');
            DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('ÝÇ˜ÊæÑ ÝÑæÔ') + ',' +
                                QuotedStr('ËÈÊ ÝÇ˜ÊæÑ ÝÑæÔ Èå ÔãÇÑå '+inttostr(NewQFactor)+' Èå ãÈáÛ ' + FloatToStr(SumKol) + ' Èå ÎÑíÏÇÑ ãÊÝÑÞå ' +' äÞÏí ') + ',' +
                                QuotedStr(UserNow) + ',' +
                                QuotedStr(DateNow) + ',' +
                                QuotedStr(TimeNow) + ',' +
                                inttostr(DocNumber));

            CR := DM.GetFieldMax('CostResive');
            Dm.insert('CostResive','code,buyer,price,date,description,DateSave,TimeSave,UserSave,DocNO,invoice_number',
                                  inttostr(CR) + ',1,' +
                                  FloatToStr(SumKol) + ',' +
                                  QuotedStr(DateNow) + ',' +
                                  QuotedStr('ÈÇÈÊ ÝÇ˜ÊæÑ ÔãÇÑå '+ inttostr(NewQFactor)) + ',' +
                                  QuotedStr(DateNow) + ',' +
                                  QuotedStr(TimeNow) + ',' +
                                  QuotedStr(UserNow) + ',' +
                                  intTostr(DocNumber) + ',' +
                                  inttostr(NewQFactor));

            DM.insert('Cach','userid,ActivityDate,AC_CR',QuotedStr(UserNow) + ',' +
                                                     QuotedStr(DateNow) + ',' +
                                                     inttostr(CR));

            dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(UserNow,DateNow));

            DM.FillReportDay('ÏÑíÇÝÊ äÞÏí','ËÈÊ ÏÑíÇÝÊ äÞÏí ÈÇ ÔãÇÑå '+inttostr(CR)+' Èå ãÈáÛ '+ FloatToStr(SumKol) + ' ÇÒ ãÊÝÑÞå ');
            DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                                QuotedStr('ÏÑíÇÝÊ äÞÏí') + ',' +
                                QuotedStr('ËÈÊ ÏÑíÇÝÊ äÞÏí ÈÇ ÔãÇÑå '+inttostr(CR)+' Èå ãÈáÛ '+FloatToStr(SumKol) + ' ÇÒ ãÊÝÑÞå ') + ',' +
                                QuotedStr(UserNow) + ',' +
                                QuotedStr(DateNow) + ',' +
                                QuotedStr(TimeNow) + ',' +
                                inttostr(DocNumber));



        DM.ADOspReport.Close;
        DM.ADOspReport.Parameters.Clear;
        DM.ADOspReport.ProcedureName:='dbo.Print_InvoiceSale';
        DM.ADOspReport.Parameters.Refresh;
        DM.ADOspReport.Parameters.ParamByName('@Param').Value := inttostr(NewQFactor);
        DM.frxReport1.LoadFromFile(Main.WPath + 'Report\InvoicePrint.fr3');
        DM.ADOspReport.Open;

        Mem := DM.frxReport1.FindObject('Memo266') AS TfrxMemoView;
        Mem.Text := UserNow;
        Mem := DM.frxReport1.FindObject('Memo25') AS TfrxMemoView;
        Mem.Text := DateNow +'*'+ TimeToStr(Time);
        Mem := DM.frxReport1.FindObject('Memo26') AS TfrxMemoView;
        Mem.Text := AddTel;

        cxLabel3.Caption:='ÂãÇÏå Èå ˜ÇÑ äãí ÈÇÔÏ';
        cxImage1.Visible:=False;
        cxImage2.Visible:=True;
        DM.frxReport1.PrintOptions.ShowDialog:=False;
        DM.frxReport1.PrepareReport();
        DM.frxReport1.Print;
        DM.frxReport1.Print;
        DM.frxReport1.PrintOptions.ShowDialog:=True;
        cxLabel3.Caption:='ÂãÇÏå Èå ˜ÇÑ';
        cxImage1.Visible:=True;
        cxImage2.Visible:=False;

        DM.AlarmStorage;

        cxMaskEdit10.text:='';
        cxComboBox3.ItemIndex:=-1;
        cxMaskEdit10.SetFocus;
        cxListView1.Items.Clear;
        cxLabel1.Caption:='';
        NewQFactor:=0;
    end;
end;

procedure TMain.FillQuickFaktor();
Begin
    cxLabel3.Caption:='ÂãÇÏå Èå ˜ÇÑ äãí ÈÇÔÏ';
    cxLabel4.Caption:='ÂãÇÏå Èå ˜ÇÑ äãí ÈÇÔÏ';
    cxLabel10.Caption:='ÂãÇÏå Èå ˜ÇÑ äãí ÈÇÔÏ';
    cxImage1.Visible:=False;
    cxImage2.Visible:=True;
    cxImage3.Visible:=False;
    cxImage4.Visible:=True;
    cxImage5.Visible:=False;
    cxImage6.Visible:=True;

    cxComboBox1.Properties.Items.Clear;
    cxComboBox2.Properties.Items.Clear;
    cxComboBox3.Properties.Items.Clear;
    comSalePrice.Properties.Items.Clear;
    comBuyPrice.Properties.Items.Clear;
    comPersent.Properties.Items.Clear;

    DM.ADOReport.Close;
    DM.ADOReport.CommandText:='select s.storageno SNO,s.Code Scode,k.Code Ucode,K.saleprice,K.buyprice buyprice,k.persent '+
                              'from Storage s,kala k '+
                              'where s.code=k.codekala order by k.code';
    DM.ADOReport.Open;
    While Not DM.ADOReport.Eof do
    begin
        cxComboBox1.Properties.Items.Add(DM.ADOReport.FieldValues['SNO']);
        cxComboBox2.Properties.Items.Add(DM.ADOReport.FieldValues['Scode']);
        cxComboBox3.Properties.Items.Add(DM.ADOReport.FieldValues['Ucode']);
        comSalePrice.Properties.Items.Add(DM.ADOReport.FieldValues['saleprice']);
        ComBuyPrice.Properties.Items.Add(DM.ADOReport.FieldValues['buyprice']);
        ComPersent.Properties.Items.Add(DM.ADOReport.FieldValues['persent']);
        DM.ADOReport.Next;
    end;
    DM.ADOReport.close;
    NewQFactor := 0;
    NewBFactor := 0;
    NewSFactor := 0;
    cxMaskEdit10.SetFocus;

    cxLabel3.Caption:='ÂãÇÏå Èå ˜ÇÑ';
    cxLabel4.Caption:='ÂãÇÏå Èå ˜ÇÑ';
    cxLabel10.Caption:='ÂãÇÏå Èå ˜ÇÑ';
    cxImage1.Visible:=True;
    cxImage2.Visible:=False;
    cxImage3.Visible:=True;
    cxImage4.Visible:=False;
    cxImage5.Visible:=True;
    cxImage6.Visible:=False;
end;

procedure TMain.Timer1Timer(Sender: TObject);
begin
    Timer1.Enabled:=False;
    FillQuickFaktor();
end;

procedure TMain.cxListView1DblClick(Sender: TObject);
begin
    if cxListView1.ItemIndex >= 0 then
       cxListView1.Items.Delete(cxListView1.ItemIndex);
    CalcSum(cxListView1,cxlabel1);
end;

Procedure TMain.SaveBSfactor();
var
    Total_B,Total_S: Double;
    i,CR,J: Integer;
    Mem : TfrxMemoView;
Begin
//============================ ÝÇ˜ÊæÑ ÈÑÔÊ ÇÒ ÝÑæÔ=============================
        if NewBFactor=0 then
           NewBFactor := DM.GetFieldMax('InvoiceBack');
        If (NewSFactor=0) AND (cxListView3.Items.Count>0) then
           NewSFactor := DM.GetFieldMax('InvoiceSell');


        Total_B:=0;
        for J:=0 to cxlistview2.Items.Count-1 do
            Total_B := Total_B + StrtoFloat(cxlistview2.Items.item[J].Caption);

        Total_S:=0;
        for J:=0 to cxlistview3.Items.Count-1 do
            Total_S := Total_S + StrtoFloat(cxlistview3.Items.item[J].Caption);



        //num,date,buyer,discount,description,DateSave,TimeSave,UserSave,DocNO
        Dm.insert(TableName3,FieldName1,inttostr(NewBFactor) + ',' +
                                        QuotedStr(DateNow) + ',1,0,' +
                                        QuotedStr('ÝÇ˜ÊæÑ ÓÑíÚ') + ',' +
                                        QuotedStr(DateNow) + ',' +
                                        QuotedStr(TimeNow) + ',' +
                                        QuotedStr(UserNow) + ',' +
                                        inttostr(DocNumber));

        for i:=0 to cxListView2.Items.Count-1 do
        begin  //num,no,StorageNO,code,count,price,BuyPrice,Persent,tax,Disc,DocNO
            Dm.insert(TableName4,FieldName2,inttostr(NewBFactor) + ',' +
                                            cxListView2.Items.Item[i].SubItems.Strings[3] + ',' +
                                            cxListView2.Items.Item[i].SubItems.Strings[4] + ',' +
                                            cxListView2.Items.Item[i].SubItems.Strings[5] + ',' +
                                            cxListView2.Items.Item[i].SubItems.Strings[1] + ',' +
                                            cxListView2.Items.Item[i].SubItems.Strings[0] + ',' +
                                            cxListView2.Items.Item[i].SubItems.Strings[6] + ',' +
                                            cxListView2.Items.Item[i].SubItems.Strings[7] + ',' +
                                            Tax + ',0,' +
                                            inttostr(DocNumber));
        end;

        DM.FillReportDay('ÝÇ˜ÊæÑ ÈÑÔÊ ÇÒ ÝÑæÔ','ËÈÊ ÝÇ˜ÊæÑ ÈÑÔÊ ÇÒ ÝÑæÔ Èå ÔãÇÑå  '+inttostr(NewBFactor)+' Èå ãÈáÛ ' + FloatToStr(Total_B) + ' ÇÒ ÎÑíÏÇÑ ãÊÝÑÞå ');
        DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                            QuotedStr('ÝÇ˜ÊæÑ ÈÑÔÊ ÇÒ ÝÑæÔ') + ',' +
                            QuotedStr('ËÈÊ ÝÇ˜ÊæÑ ÈÑÔÊ ÇÒ ÝÑæÔ Èå ÔãÇÑå  '+inttostr(NewBFactor)+' Èå ãÈáÛ ' + FloatToStr(Total_B) + ' ÇÒ ÎÑíÏÇÑ ãÊÝÑÞå ' ) + ',' +
                            QuotedStr(UserNow) + ',' +
                            QuotedStr(DateNow) + ',' +
                            QuotedStr(TimeNow) + ',' +
                            inttostr(DocNumber));

        dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(UserNow,DateNow));

        cxMaskEdit1.text:='';
        cxComboBox3.ItemIndex:=-1;
        cxMaskEdit1.SetFocus;
        cxListView2.Items.Clear;
        cxLabel8.Caption:='';
//=============================== ÝÑæÔ ==========================

        If cxListView3.Items.Count>0 then
        Begin
        //num,date,buyer,discount,description,DateSave,TimeSave,UserSave,DocNO
        Dm.insert(TableName1,FieldName1,inttostr(NewSFactor) + ',' +
                                        QuotedStr(DateNow) + ',1,0,' +
                                        QuotedStr('ÝÇ˜ÊæÑ ÓÑíÚ') + ',' +
                                        QuotedStr(DateNow) + ',' +
                                        QuotedStr(TimeNow) + ',' +
                                        QuotedStr(UserNow) + ',' +
                                        inttostr(DocNumber));

        for i:=0 to cxListView3.Items.Count-1 do
        begin  //num,no,StorageNO,code,count,price,BuyPrice,Persent,tax,Disc,DocNO
            Dm.insert(TableName2,FieldName2,inttostr(NewSFactor) + ',' +
                                            cxListView3.Items.Item[i].SubItems.Strings[3] + ',' +
                                            cxListView3.Items.Item[i].SubItems.Strings[4] + ',' +
                                            cxListView3.Items.Item[i].SubItems.Strings[5] + ',' +
                                            cxListView3.Items.Item[i].SubItems.Strings[1] + ',' +
                                            cxListView3.Items.Item[i].SubItems.Strings[0] + ',' +
                                            cxListView3.Items.Item[i].SubItems.Strings[6] + ',' +
                                            cxListView3.Items.Item[i].SubItems.Strings[7] + ',' +
                                            Tax + ',0,' +
                                            inttostr(DocNumber));
        end;

        DM.FillReportDay('ÝÇ˜ÊæÑ ÝÑæÔ','ËÈÊ ÝÇ˜ÊæÑ ÝÑæÔ Èå ÔãÇÑå '+inttostr(NewSFactor)+' Èå ãÈáÛ ' + FloatToStr(Total_S) + ' Èå ÎÑíÏÇÑ ãÊÝÑÞå ' +' äÞÏí ');
        DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                            QuotedStr('ÝÇ˜ÊæÑ ÝÑæÔ') + ',' +
                            QuotedStr('ËÈÊ ÝÇ˜ÊæÑ ÝÑæÔ Èå ÔãÇÑå '+inttostr(NewSFactor)+' Èå ãÈáÛ ' + FloatToStr(Total_S) + ' Èå ÎÑíÏÇÑ ãÊÝÑÞå ' +' äÞÏí ') + ',' +
                            QuotedStr(UserNow) + ',' +
                            QuotedStr(DateNow) + ',' +
                            QuotedStr(TimeNow) + ',' +
                            inttostr(DocNumber));

        CR := DM.GetFieldMax('CostResive');
        Dm.insert('CostResive','code,buyer,price,date,description,DateSave,TimeSave,UserSave,DocNO,invoice_number',
                              inttostr(CR) + ',1,' +
                              FloatToStr(Total_S) + ',' +
                              QuotedStr(DateNow) + ',' +
                              QuotedStr('ÈÇÈÊ ÝÇ˜ÊæÑ ÔãÇÑå '+ inttostr(NewSFactor)) + ',' +
                              QuotedStr(DateNow) + ',' +
                              QuotedStr(TimeNow) + ',' +
                              QuotedStr(UserNow) + ',' +
                              intTostr(DocNumber) + ',' +
                              inttostr(NewSFactor));

        DM.insert('Cach','userid,ActivityDate,AC_CR',QuotedStr(UserNow) + ',' +
                                                 QuotedStr(DateNow) + ',' +
                                                 inttostr(CR));

        dxRibbonStatusBar1.Panels.Items[6].Text := inttostr(DM.MathSandogh(UserNow,DateNow));

        DM.FillReportDay('ÏÑíÇÝÊ äÞÏí','ËÈÊ ÏÑíÇÝÊ äÞÏí ÈÇ ÔãÇÑå '+inttostr(CR)+' Èå ãÈáÛ '+ FloatToStr(Total_S) + ' ÇÒ ãÊÝÑÞå ');
        DM.insert('DailyReport','Kind,description,usersave,datesave,timesave,docno',
                            QuotedStr('ÏÑíÇÝÊ äÞÏí') + ',' +
                            QuotedStr('ËÈÊ ÏÑíÇÝÊ äÞÏí ÈÇ ÔãÇÑå '+inttostr(CR)+' Èå ãÈáÛ '+FloatToStr(Total_S) + ' ÇÒ ãÊÝÑÞå ') + ',' +
                            QuotedStr(UserNow) + ',' +
                            QuotedStr(DateNow) + ',' +
                            QuotedStr(TimeNow) + ',' +
                            inttostr(DocNumber));

        cxMaskEdit2.text:='';
        cxComboBox3.ItemIndex:=-1;
        cxMaskEdit2.SetFocus;
        cxListView3.Items.Clear;
        cxLabel12.Caption:='';
        End;

        DM.ADOspReport.Close;
        DM.ADOspReport.Parameters.Clear;
        DM.ADOspReport.ProcedureName:='dbo.Print_InvoiceBS';
        DM.ADOspReport.Parameters.Refresh;
        DM.ADOspReport.Parameters.ParamByName('@NumB').Value := inttostr(NewBFactor);
        DM.ADOspReport.Parameters.ParamByName('@NumS').Value := inttostr(NewSFactor);
        DM.frxReport1.LoadFromFile(Main.WPath + 'Report\InvoicePrintBS.fr3');
        DM.ADOspReport.Open;

        Mem := DM.frxReport1.FindObject('Memo266') AS TfrxMemoView;
        Mem.Text := UserNow;
        Mem := DM.frxReport1.FindObject('Memo25') AS TfrxMemoView;
        Mem.Text := DateNow +'*'+ TimeToStr(Time);
        Mem := DM.frxReport1.FindObject('Memo26') AS TfrxMemoView;
        Mem.Text := AddTel;

        cxLabel4.Caption:='ÂãÇÏå Èå ˜ÇÑ äãí ÈÇÔÏ';
        cxLabel10.Caption:='ÂãÇÏå Èå ˜ÇÑ äãí ÈÇÔÏ';
        cxImage3.Visible:=False;
        cxImage4.Visible:=True;
        cxImage5.Visible:=False;
        cxImage6.Visible:=True;
        DM.frxReport1.PrintOptions.ShowDialog:=False;
        DM.frxReport1.ShowReport();
        //DM.frxReport1.PrepareReport();
        //DM.frxReport1.Print;
        //DM.frxReport1.Print;
        DM.frxReport1.PrintOptions.ShowDialog:=True;
        cxLabel4.Caption:='ÂãÇÏå Èå ˜ÇÑ';
        cxLabel10.Caption:='ÂãÇÏå Èå ˜ÇÑ';
        cxImage3.Visible:=True;
        cxImage4.Visible:=False;
        cxImage5.Visible:=True;
        cxImage6.Visible:=False;

        DM.AlarmStorage;
        NewSFactor:=0;
        NewBFactor:=0;
end;

procedure TMain.cxMaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
    S : Double;
    i,X: Integer;
begin

    if Key=VK_RETURN then
    BEGIN
        cxComboBox3.Text:=cxMaskEdit1.Text;
        if cxComboBox3.ItemIndex>-1 then
        Begin
            for i:=0 to cxListView2.Items.Count-1 do
               if cxComboBox3.Text = cxListView2.Items.Item[i].SubItems.Strings[2] then
               begin
                   X := strtoint(cxListView2.Items.Item[i].SubItems.Strings[1]) + 1;
                   cxListView2.Items.Item[i].SubItems.Strings[1]:= inttostr(X);
                   S :=(strtofloat(ComSalePrice.Text) * strtoFloat(Tax))/100;
                   S := S + StrToFloat(ComSalePrice.Text);
                   cxListView2.Items.item[i].Caption := FloatToStr(S * X);
                   CalcSum(cxListView2,cxlabel8);
                   cxMaskEdit1.text:='';
                   cxComboBox3.ItemIndex:=-1;
                   cxMaskEdit1.SetFocus;
                   Exit;
               End;
            S :=(strtofloat(ComSalePrice.Text) * strtoFloat(Tax))/100;
            S := S + StrToFloat(ComSalePrice.Text);
            with cxListView2.Items.Add do
            begin
                Caption := FloatToStr(S);
                SubItems.Insert(0,ComSalePrice.Text);
                SubItems.Insert(1,'1');
                SubItems.Insert(2,cxComboBox3.Text);
                SubItems.Insert(3,inttostr(cxListView2.Items.Count));
                SubItems.Insert(4,cxComboBox1.Text);
                SubItems.Insert(5,cxComboBox2.Text);
                SubItems.Insert(6,ComBuyPrice.Text);
                SubItems.Insert(7,ComPersent.Text);
                CalcSum(cxListView2,cxlabel8);
            End;
            cxMaskEdit1.text:='';
            cxComboBox3.ItemIndex:=-1;
            cxMaskEdit1.SetFocus;
        End;
    End;
//**********************************************************************************************

    If key=VK_F5 then
    Begin
        SaveBSfactor();
    end;
end;

procedure TMain.cxMaskEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
    S : Double;
    i,X : Integer;
Begin

    if Key=VK_RETURN then
    BEGIN
        cxComboBox3.Text:=cxMaskEdit2.Text;
        if cxComboBox3.ItemIndex>-1 then
        Begin
            for i:=0 to cxListView3.Items.Count-1 do
               if cxComboBox3.Text = cxListView3.Items.Item[i].SubItems.Strings[2] then
               begin
                   X := strtoint(cxListView3.Items.Item[i].SubItems.Strings[1]) + 1;
                   cxListView3.Items.Item[i].SubItems.Strings[1]:= inttostr(X);
                   S :=(strtofloat(ComSalePrice.Text) * strtoFloat(Tax))/100;
                   S := S + StrToFloat(ComSalePrice.Text);
                   cxListView3.Items.item[i].Caption := FloatToStr(S * X);
                   CalcSum(cxListView3,cxlabel12);
                   cxMaskEdit2.text:='';
                   cxComboBox3.ItemIndex:=-1;
                   cxMaskEdit2.SetFocus;
                   Exit;
               End;
            S :=(strtofloat(ComSalePrice.Text) * strtoFloat(Tax))/100;
            S := S + StrToFloat(ComSalePrice.Text);
            with cxListView3.Items.Add do
            begin
                Caption := FloatToStr(S);
                SubItems.Insert(0,ComSalePrice.Text);
                SubItems.Insert(1,'1');
                SubItems.Insert(2,cxComboBox3.Text);
                SubItems.Insert(3,inttostr(cxListView3.Items.Count));
                SubItems.Insert(4,cxComboBox1.Text);
                SubItems.Insert(5,cxComboBox2.Text);
                SubItems.Insert(6,ComBuyPrice.Text);
                SubItems.Insert(7,ComPersent.Text);
                CalcSum(cxListView3,cxlabel12);
            End;
            cxMaskEdit2.text:='';
            cxComboBox3.ItemIndex:=-1;
            cxMaskEdit2.SetFocus;
        End;
    End;
//**********************************************************************************************
    If key=VK_F5 then
    Begin
        SaveBSfactor();
    end;
    
end;

procedure TMain.cxListView2DblClick(Sender: TObject);
begin
    if cxListView2.ItemIndex >= 0 then
       cxListView2.Items.Delete(cxListView2.ItemIndex);
    CalcSum(cxListView2,cxlabel8);
end;

procedure TMain.cxListView3DblClick(Sender: TObject);
begin
    if cxListView3.ItemIndex >= 0 then
       cxListView3.Items.Delete(cxListView3.ItemIndex);
    CalcSum(cxListView3,cxlabel12);
end;

end.



