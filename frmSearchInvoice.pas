unit frmSearchInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, dxSkinsCore, dxSkinsDefaultPainters, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxLookAndFeelPainters, cxTextEdit, cxLabel, cxMaskEdit, cxDropDownEdit,
  StdCtrls, cxButtons, cxContainer, cxGroupBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ADODB, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type

  Invoice_Type = (IT_Sale,IT_Buy,IT_Back,IT_BackStorage);

  TSearchInvoice = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxComboBox1: TcxComboBox;
    cxLabel1: TcxLabel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxTextEdit1: TcxTextEdit;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
       ADOStored : TADOStoredProc;
       DataS : TDataSource;
  public
       IT : Invoice_Type;
  end;

var
  SearchInvoice: TSearchInvoice;

implementation

uses frmDM, frmInvoiceSell, frmInvoiceBuy, frmInvoiceBack, frmMain,
  frmInvoiceBackStorage;

{$R *.dfm}

procedure TSearchInvoice.cxButton1Click(Sender: TObject);
begin
    ADOStored.Close;
    ADOStored.Parameters.Clear;
    Case IT of
       IT_Sale : Begin
                     Case cxComboBox1.ItemIndex of
                        0 : ADOStored.ProcedureName:='dbo.search_InvoiceSale_Number';
                        1 : ADOStored.ProcedureName:='dbo.search_InvoiceSale_Date';
                        2 : ADOStored.ProcedureName:='dbo.search_InvoiceSale_Buyer';
                        3 : ADOStored.ProcedureName:='dbo.search_InvoiceSale_DocNO';
                        4 : ADOStored.ProcedureName:='dbo.search_InvoiceSale_Desc';
                     end;
                 end;
       IT_Buy  : Begin
                     Case cxComboBox1.ItemIndex of
                        0 : ADOStored.ProcedureName:='dbo.search_InvoiceBuy_Number';
                        1 : ADOStored.ProcedureName:='dbo.search_InvoiceBuy_Date';
                        2 : ADOStored.ProcedureName:='dbo.search_InvoiceBuy_Seller';
                        3 : ADOStored.ProcedureName:='dbo.search_InvoiceBuy_DocNO';
                        4 : ADOStored.ProcedureName:='dbo.search_InvoiceBuy_Desc';
                     end;
                 end;
       IT_Back : Begin
                     Case cxComboBox1.ItemIndex of
                        0 : ADOStored.ProcedureName:='dbo.search_InvoiceBack_Number';
                        1 : ADOStored.ProcedureName:='dbo.search_InvoiceBack_Date';
                        2 : ADOStored.ProcedureName:='dbo.search_InvoiceBack_Seller';
                        3 : ADOStored.ProcedureName:='dbo.search_InvoiceBack_DocNO';
                        4 : ADOStored.ProcedureName:='dbo.search_InvoiceBack_Desc';
                     end;
                 end;
       IT_BackStorage : Begin
                            Case cxComboBox1.ItemIndex of
                                0 : ADOStored.ProcedureName:='dbo.search_InvoiceBackStorage_Number';
                                1 : ADOStored.ProcedureName:='dbo.search_InvoiceBackStorage_Date';
                                2 : ADOStored.ProcedureName:='dbo.search_InvoiceBackStorage_Seller';
                                3 : ADOStored.ProcedureName:='dbo.search_InvoiceBackStorage_DocNO';
                                4 : ADOStored.ProcedureName:='dbo.search_InvoiceBackStorage_Desc';
                            end;
                        end;
    end;
    ADOStored.Parameters.Refresh;
    ADOStored.Parameters.ParamByName('@param').Value:=cxTextEdit1.Text;
    ADOStored.Parameters.ParamByName('@usersave').Value:=Main.UserNow;
    ADOStored.Open;
    if it = it_buy then
       ADOStored.FieldByName('code').Alignment:=taCenter;
    ADOStored.FieldByName('num').Alignment:=taCenter;
    ADOStored.FieldByName('date').Alignment:=taCenter;
    ADOStored.FieldByName('name').Alignment:=taRightJustify;
    ADOStored.FieldByName('DocNO').Alignment:=taCenter;
    ADOStored.FieldByName('Description').Alignment:=taCenter;
end;

procedure TSearchInvoice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    ADOStored.Close;
    ADOStored.Free;
    DataS.Free;
end;

procedure TSearchInvoice.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
       VK_F8        : cxButton1.Click;
       VK_ESCAPE    : Close;
    end;
end;

procedure TSearchInvoice.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
    Case IT of
       IT_Sale : begin
                     InvoiceSell.RecSelect        := cxGrid1DBTableView1Column1.EditValue;
                     InvoiceSell.cxTextEdit1.Text := cxGrid1DBTableView1Column1.EditValue;
                     InvoiceSell.cxmaskEdit1.Text := cxGrid1DBTableView1Column2.EditValue;
                     InvoiceSell.cxComboBox3.Text := cxGrid1DBTableView1Column3.EditValue;
                     InvoiceSell.cxMaskEdit2.Text := cxGrid1DBTableView1Column4.EditValue;
                     InvoiceSell.cxMemo1.Text     := cxGrid1DBTableView1Column6.EditValue;
                     InvoiceSell.cxMaskEdit3.Text := cxGrid1DBTableView1Column7.EditValue;
                     InvoiceSell.cxMaskEdit4.Text := cxGrid1DBTableView1Column8.EditValue;
                 end;
       IT_Buy  : begin
                     InvoiceBuy.RecSelect         := cxGrid1DBTableView1Column9.EditValue;
                     InvoiceBuy.cxComboBox3.Text  := cxGrid1DBTableView1Column3.EditValue;
                     InvoiceBuy.cxmaskEdit5.Text  := cxGrid1DBTableView1Column9.EditValue;
                     InvoiceBuy.cxTextEdit1.Text  := cxGrid1DBTableView1Column1.EditValue;
                     InvoiceBuy.cxmaskEdit1.Text  := cxGrid1DBTableView1Column2.EditValue;
                     InvoiceBuy.cxMaskEdit2.Text  := cxGrid1DBTableView1Column4.EditValue;
                     InvoiceBuy.cxMemo1.Text      := cxGrid1DBTableView1Column6.EditValue;
                     InvoiceBuy.cxMaskEdit3.Text  := cxGrid1DBTableView1Column7.EditValue;
                     InvoiceBuy.cxMaskEdit4.Text  := cxGrid1DBTableView1Column8.EditValue;
                 end;
       IT_Back : begin
                     InvoiceBack.RecSelect         := cxGrid1DBTableView1Column1.EditValue;
                     InvoiceBack.cxTextEdit1.Text  := cxGrid1DBTableView1Column1.EditValue;
                     InvoiceBack.cxmaskEdit1.Text  := cxGrid1DBTableView1Column2.EditValue;
                     InvoiceBack.cxComboBox3.Text  := cxGrid1DBTableView1Column3.EditValue;
                     InvoiceBack.cxMemo1.Text      := cxGrid1DBTableView1Column6.EditValue;
                     InvoiceBack.cxMaskEdit3.Text  := cxGrid1DBTableView1Column7.EditValue;
                     InvoiceBack.cxMaskEdit2.Text  := cxGrid1DBTableView1Column4.EditValue;
                     InvoiceBack.cxMaskEdit4.Text  := cxGrid1DBTableView1Column8.EditValue;
                 end;
       IT_BackStorage : Begin
                            InvoiceBackStorage.RecSelect         := cxGrid1DBTableView1Column1.EditValue;
                            InvoiceBackStorage.cxComboBox3.Text  := cxGrid1DBTableView1Column3.EditValue;
                            InvoiceBackStorage.cxTextEdit1.Text  := cxGrid1DBTableView1Column1.EditValue;
                            InvoiceBackStorage.cxmaskEdit1.Text  := cxGrid1DBTableView1Column2.EditValue;
                            InvoiceBackStorage.cxMemo1.Text      := cxGrid1DBTableView1Column6.EditValue;
                            InvoiceBackStorage.cxMaskEdit3.Text  := cxGrid1DBTableView1Column7.EditValue;
                        End;
    end;
    Close;
end;

procedure TSearchInvoice.FormShow(Sender: TObject);
begin
    ADOStored := TADOStoredProc.Create(Self);
    ADOStored.Connection:=DM.Connection;
    DataS := TDataSource.Create(Self);
    DataS.DataSet:=ADOStored;
    cxComboBox1.ItemIndex := 0;
    cxComboBox1.SetFocus;
    Case IT of
       IT_Sale : begin
                     cxGrid1DBTableView1.DataController.DataSource:=DataS;
                     cxGrid1DBTableView1Column1.DataBinding.FieldName:='num';
                     cxGrid1DBTableView1Column2.DataBinding.FieldName:='date';
                     cxGrid1DBTableView1Column3.DataBinding.FieldName:='name';
                     cxGrid1DBTableView1Column4.DataBinding.FieldName:='discount';
                     cxGrid1DBTableView1Column5.DataBinding.FieldName:='DocNO';
                     cxGrid1DBTableView1Column6.DataBinding.FieldName:='Description';
                     cxGrid1DBTableView1Column7.DataBinding.FieldName:='SumKol';
                     cxGrid1DBTableView1Column8.DataBinding.FieldName:='SumPay';
                 end;
       IT_Buy  : begin
                     cxGrid1DBTableView1.DataController.DataSource:=DataS;
                     cxGrid1DBTableView1Column3.Caption := '›—Ê‘‰œÂ';
                     cxComboBox1.Properties.Items.Delete(2);
                     cxComboBox1.Properties.Items.Insert(2,'›—Ê‘‰œÂ');
                     cxGrid1DBTableView1Column1.DataBinding.FieldName:='code';
                     cxGrid1DBTableView1Column2.DataBinding.FieldName:='date';
                     cxGrid1DBTableView1Column3.DataBinding.FieldName:='name';
                     cxGrid1DBTableView1Column4.DataBinding.FieldName:='discount';
                     cxGrid1DBTableView1Column5.DataBinding.FieldName:='DocNO';
                     cxGrid1DBTableView1Column6.DataBinding.FieldName:='Description';
                     cxGrid1DBTableView1Column7.DataBinding.FieldName:='SumKol';
                     cxGrid1DBTableView1Column8.DataBinding.FieldName:='SumPay';
                     cxGrid1DBTableView1Column9.DataBinding.FieldName:='num';
                 end;
       IT_Back : begin
                     cxGrid1DBTableView1.DataController.DataSource:=DataS;
                     cxGrid1DBTableView1Column1.DataBinding.FieldName:='num';
                     cxGrid1DBTableView1Column2.DataBinding.FieldName:='date';
                     cxGrid1DBTableView1Column3.DataBinding.FieldName:='name';
                     cxGrid1DBTableView1Column4.DataBinding.FieldName:='discount';
                     cxGrid1DBTableView1Column5.DataBinding.FieldName:='DocNO';
                     cxGrid1DBTableView1Column6.DataBinding.FieldName:='Description';
                     cxGrid1DBTableView1Column7.DataBinding.FieldName:='SumKol';
                     cxGrid1DBTableView1Column8.DataBinding.FieldName:='SumPay';
                 end;
       IT_BackStorage : begin
                           cxGrid1DBTableView1.DataController.DataSource:=DataS;
                           cxGrid1DBTableView1Column3.Caption := '›—Ê‘‰œÂ';
                           cxComboBox1.Properties.Items.Delete(2);
                           cxComboBox1.Properties.Items.Insert(2,'›—Ê‘‰œÂ');
                           cxGrid1DBTableView1Column1.DataBinding.FieldName:='num';
                           cxGrid1DBTableView1Column1.Width := 90;
                           cxGrid1DBTableView1Column2.DataBinding.FieldName:='date';
                           cxGrid1DBTableView1Column2.Width := 90;
                           cxGrid1DBTableView1Column3.DataBinding.FieldName:='name';
                           cxGrid1DBTableView1Column3.Width := 135;
                           cxGrid1DBTableView1Column4.Visible := False;
                           cxGrid1DBTableView1Column5.DataBinding.FieldName:='DocNO';
                           cxGrid1DBTableView1Column6.DataBinding.FieldName:='Description';
                           cxGrid1DBTableView1Column6.Width := 200;
                           cxGrid1DBTableView1Column7.DataBinding.FieldName:='SumKol';
                           cxGrid1DBTableView1Column7.Width := 110;
                           cxGrid1DBTableView1Column8.Visible := False;
                        end;
    end;
end;

end.
