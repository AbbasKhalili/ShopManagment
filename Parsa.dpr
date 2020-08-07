program Parsa;

uses
  Forms,
  windows,
  Dialogs,
  frmMain in 'frmMain.pas' {Main},
  frmDM in 'frmDM.pas' {DM: TDataModule},
  frmTMP in 'frmTMP.pas' {TMP},
  frmStorage in 'frmStorage.pas' {Storage},
  frmKala in 'frmKala.pas' {Kala},
  frmBanks in 'frmBanks.pas' {Banks},
  frmAcounts in 'frmAcounts.pas' {Acounts},
  frmShop in 'frmShop.pas' {Shop},
  frmQuchResive in 'frmQuchResive.pas' {QuchResive},
  frmQuchSend in 'frmQuchSend.pas' {QuchSend},
  frmCostResive in 'frmCostResive.pas' {CostResive},
  frmCostSend in 'frmCostSend.pas' {CostSend},
  frmInvoiceSell in 'frmInvoiceSell.pas' {InvoiceSell},
  frmInvoiceBuy in 'frmInvoiceBuy.pas' {InvoiceBuy},
  frmInvoiceBack in 'frmInvoiceBack.pas' {InvoiceBack},
  frmLogin in 'frmLogin.pas' {Login},
  frmGrouping in 'frmGrouping.pas' {Grouping},
  frmSelectDocNO in 'frmSelectDocNO.pas' {SelectDocNO},
  frmDefineUser in 'frmDefineUser.pas' {DefineUser},
  frmBackup in 'frmBackup.pas' {Backup},
  frmRestore in 'frmRestore.pas' {Restore},
  frmSearchInvoice in 'frmSearchInvoice.pas' {SearchInvoice},
  frmSettings in 'frmSettings.pas' {Settings},
  frmReportInvoice in 'frmReportInvoice.pas' {ReportInvoice},
  frmKalaTransfer in 'frmKalaTransfer.pas' {KalaTransfer},
  frmTransferCQ in 'frmTransferCQ.pas' {TransferCQ},
  frmTransferQuch in 'frmTransferQuch.pas' {TransferQuch},
  frmDefineCoding in 'frmDefineCoding.pas' {DefineCoding},
  frmSandogh in 'frmSandogh.pas' {Sandogh},
  frmStorageLevel in 'frmStorageLevel.pas' {StorageLevel},
  frmListDocNO in 'frmListDocNO.pas' {ListDocNO},
  frmInvoiceBackStorage in 'frmInvoiceBackStorage.pas' {InvoiceBackStorage},
  frmChangePass in 'frmChangePass.pas' {ChangePass},
  frmChangeUser in 'frmChangeUser.pas' {ChangeUser},
  frmReportStorage in 'frmReportStorage.pas' {ReportStorage},
  frmReportSaleDetial in 'frmReportSaleDetial.pas' {ReportSaleDetial},
  frmReportCostSend in 'frmReportCostSend.pas' {ReportCostSend},
  frmReportQuch in 'frmReportQuch.pas' {ReportQuch},
  frmReportDeb_Cred in 'frmReportDeb_Cred.pas' {ReportDeb_Cred},
  frmEnterValueAcount in 'frmEnterValueAcount.pas' {EnterValueAcount},
  frmReportCycleKala in 'frmReportCycleKala.pas' {ReportCycleKala},
  frmAnbarGardany in 'frmAnbarGardany.pas' {AnbarGardany},
  frmReport_KalaDefineStorage in 'frmReport_KalaDefineStorage.pas' {Report_KalaDefineStorage},
  frmExpense in 'frmExpense.pas' {Expense},
  frmReportProfit in 'frmReportProfit.pas' {ReportProfit},
  frmLogEnter_Exit in 'frmLogEnter_Exit.pas' {LogEnter_Exit},
  frmLogDailyReport in 'frmLogDailyReport.pas' {LogDailyReport},
  frmPermission in 'frmPermission.pas' {Permission},
  frmBardasht in 'frmBardasht.pas' {Bardasht},
  frmDailySandogh in 'frmDailySandogh.pas' {DailySandogh},
  frmReportArchive_AG in 'frmReportArchive_AG.pas' {ReportArchive_AG},
  frmAbout in 'frmAbout.pas' {About},
  frmSaleStorageL3 in 'frmSaleStorageL3.pas' {SaleStorageL3},
  frmPrintBarcode in 'frmPrintBarcode.pas' {PrintBarcode};

Var
  HMutex : THandle;
  {$R *.res}

begin
    HMutex := Createmutex ( nil, false , 'Shop_Management');
    if WaitForSingLeobject ( HMutex , 0 )< Wait_Timeout then
       Begin
           Application.Initialize;
           Application.Title := 'Shop Management Software';
           Application.CreateForm(TDM, DM);
  Application.CreateForm(TLogin, Login);
  Application.Run;
       end
       else
          MessageDlg('ÈÑäÇãå ÏÑ ÍÇá ÇÌÑÇÓÊ',mtWarning,[mbOk], 0);
end.
