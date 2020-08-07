object SelectStorage: TSelectStorage
  Left = 221
  Top = 110
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1575#1606#1578#1582#1575#1576' '#1575#1606#1576#1575#1585
  ClientHeight = 241
  ClientWidth = 408
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = #1610#1705' '#1575#1606#1576#1575#1585' '#1585#1575' '#1575#1606#1578#1582#1575#1576' '#1705#1606#1610#1583
    TabOrder = 0
    Height = 193
    Width = 408
    object cxListView1: TcxListView
      Left = 3
      Top = 21
      Width = 402
      Height = 169
      Align = alClient
      Columns = <
        item
          Caption = #1570#1583#1585#1587
          MaxWidth = 200
          MinWidth = 200
          Width = 200
        end
        item
          Alignment = taCenter
          Caption = #1606#1575#1605' '#1575#1606#1576#1575#1585
          MaxWidth = 120
          MinWidth = 120
          Width = 120
        end
        item
          Alignment = taCenter
          Caption = #1705#1583' '#1575#1606#1576#1575#1585
          MaxWidth = 60
          MinWidth = 60
          Width = 60
        end>
      HideSelection = False
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      OnSelectItem = cxListView1SelectItem
    end
  end
  object cxButton1: TcxButton
    Left = 107
    Top = 199
    Width = 90
    Height = 30
    Cancel = True
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 203
    Top = 199
    Width = 90
    Height = 30
    Caption = #1578#1575#1574#1610#1583
    Default = True
    TabOrder = 2
    OnClick = cxButton2Click
  end
end
