unit frmSelectStorage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls, cxContainer,
  cxEdit, cxGroupBox, ComCtrls, cxListView,ADODB,DB;

type
  TSelectStorage = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxListView1: TcxListView;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxListView1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
  private
        SelStore : String;
        ADO : TADODataSet;
  public

  end;

var
  SelectStorage: TSelectStorage;

implementation

uses frmDM, frmInvoiceBuy;

{$R *.dfm}

procedure TSelectStorage.cxButton1Click(Sender: TObject);
begin
    close;
end;

procedure TSelectStorage.cxButton2Click(Sender: TObject);
begin
    If SelStore <> '' then
    begin
        InvoiceBuy.SelStore := SelStore;
        Close;
    end;
end;

procedure TSelectStorage.FormShow(Sender: TObject);
begin
    ADO := TADODataSet.Create(self);
    ADO.Connection:=DM.Connection;
    SelStore:='';
    ADO.Close;
    ADO.CommandText:='select * from Storageslist';
    ADO.Open;
    if ADO.RecordCount > 0 then
    begin
        While Not ADO.Eof do
        begin
            with cxListView1.Items.Add do
               begin
                   Caption := ADO.FieldValues['Address'];
                   SubItems.Insert(0,ADO.FieldValues['name']);
                   SubItems.Insert(1,ADO.FieldValues['code']);
               end;
            ADO.Next;
        end;
    end;
    ADO.Close;
    cxListView1.SetFocus;
end;

procedure TSelectStorage.cxListView1SelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
begin
    if cxListView1.ItemIndex >= 0 then
       SelStore := cxListView1.Items.Item[cxListView1.ItemIndex].SubItems.Strings[1];
end;

end.
