object KalaTransfer: TKalaTransfer
  Left = 272
  Top = 119
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1575#1606#1578#1602#1575#1604' '#1705#1575#1604#1575' '#1576#1610#1606' '#1575#1606#1576#1575#1585#1607#1575
  ClientHeight = 636
  ClientWidth = 653
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object cxButton1: TcxButton
    Left = 60
    Top = 310
    Width = 100
    Height = 30
    Cancel = True
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxLabel2: TcxLabel
    Left = 585
    Top = 316
    Caption = #1576#1607' '#1575#1606#1576#1575#1585
    Transparent = True
  end
  object cxComboBox3: TcxComboBox
    Left = 336
    Top = 314
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsEditFixedList
    Properties.IgnoreMaskBlank = True
    Properties.PopupAlignment = taRightJustify
    Properties.OnEditValueChanged = cxComboBox3PropertiesEditValueChanged
    TabOrder = 2
    Width = 238
  end
  object cxComboBox4: TcxComboBox
    Left = 297
    Top = 315
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsEditFixedList
    Properties.IgnoreMaskBlank = True
    Properties.PopupAlignment = taRightJustify
    Properties.OnEditValueChanged = cxComboBox4PropertiesEditValueChanged
    TabOrder = 3
    Visible = False
    Width = 33
  end
  object cxButton2: TcxButton
    Left = 172
    Top = 310
    Width = 100
    Height = 30
    Caption = #1578#1575#1574#1610#1583
    TabOrder = 4
    OnClick = cxButton2Click
  end
  object cxListView1: TcxListView
    Left = 0
    Top = 53
    Width = 653
    Height = 252
    Columns = <
      item
        Caption = #1606#1602#1591#1607' '#1587#1601#1575#1585#1588
        Width = 85
      end
      item
        Alignment = taCenter
        Caption = #1581#1583#1575#1602#1604' '#1605#1608#1580#1608#1583#1610
        Width = 93
      end
      item
        Alignment = taCenter
        Caption = #1605#1608#1580#1608#1583#1610
        Width = 60
      end
      item
        Alignment = taCenter
        Caption = #1606#1575#1605' '#1705#1575#1604#1575
        Width = 170
      end
      item
        Alignment = taCenter
        MaxWidth = 1
        MinWidth = 1
        Width = 1
      end
      item
        Alignment = taCenter
        Caption = #1705#1583' '#1705#1575#1604#1575
        MaxWidth = 120
        MinWidth = 120
        Width = 120
      end
      item
        Alignment = taCenter
        Caption = #1606#1575#1605' '#1575#1606#1576#1575#1585
        MaxWidth = 100
        MinWidth = 100
        Width = 100
      end
      item
        MaxWidth = 1
        MinWidth = 1
        Width = 1
      end>
    HideSelection = False
    ReadOnly = True
    RowSelect = True
    TabOrder = 5
    ViewStyle = vsReport
    OnSelectItem = cxListView1SelectItem
  end
  object cxListView2: TcxListView
    Left = 0
    Top = 345
    Width = 653
    Height = 291
    Align = alBottom
    Columns = <
      item
        Caption = #1606#1602#1591#1607' '#1587#1601#1575#1585#1588
        Width = 85
      end
      item
        Alignment = taCenter
        Caption = #1581#1583#1575#1602#1604' '#1605#1608#1580#1608#1583#1610
        Width = 93
      end
      item
        Alignment = taCenter
        Caption = #1605#1608#1580#1608#1583#1610
        Width = 60
      end
      item
        Alignment = taCenter
        Caption = #1606#1575#1605' '#1705#1575#1604#1575
        Width = 170
      end
      item
        Alignment = taCenter
        MaxWidth = 1
        MinWidth = 1
        Width = 1
      end
      item
        Alignment = taCenter
        Caption = #1705#1583' '#1705#1575#1604#1575
        MaxWidth = 120
        MinWidth = 120
        Width = 120
      end
      item
        Alignment = taCenter
        Caption = #1606#1575#1605' '#1575#1606#1576#1575#1585
        MaxWidth = 100
        MinWidth = 100
        Width = 100
      end
      item
        MaxWidth = 1
        MinWidth = 1
        Width = 1
      end>
    HideSelection = False
    ReadOnly = True
    RowSelect = True
    TabOrder = 6
    ViewStyle = vsReport
    OnSelectItem = cxListView1SelectItem
  end
  object cxImage3: TcxImage
    Left = 9
    Top = 8
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 7
    Height = 40
    Width = 633
  end
  object cxTextEdit1: TcxMaskEdit
    Left = 368
    Top = 17
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.HideSelection = False
    Properties.IgnoreMaskBlank = True
    Properties.OnChange = cxTextEdit1PropertiesChange
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 8
    Width = 202
  end
  object cxLabel1: TcxLabel
    Left = 583
    Top = 19
    Caption = #1705#1583' '#1705#1575#1604#1575
    Transparent = True
  end
  object cxButton3: TcxButton
    Left = 341
    Top = 16
    Width = 25
    Height = 25
    TabOrder = 10
    OnClick = cxButton3Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      C9D8C92E672EBECFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83A683007800156C15B7C9B7FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      417D4100B20000AC00116B119EB79EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFD7E3D716791600CA0000CF0000BE000873089A
      B79AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DBD9D
      039D0300DB0000DA0000E00000CF000083008BB08BFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF68A06800CA0000F10000D30000D50000EE0000
      E90004950475A775FCFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9F2E9329B32
      00F30000DD00238E2336913600B10000E90000FE0000AE0070A770F0F6F0FFFF
      FFFFFFFFFFFFFFFFFFFFC1DBC10CB30C08ED08219721CDE1CDF7FAF797C19737
      A03701C0010AF50A0BBE0B55A255EFF6EFFFFFFFFFFFFFFFFFFF8CC38C18B918
      23A423C6DFC6FFFFFFFFFFFFFFFFFFE8F2E897C6972AA22A1BCE1B1FBD1F4BA6
      4BE5F2E5FFFFFFFFFFFF38A238189718BEDDBEFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFECF5EC88C48835AF3519A7193BA03BE3F2E3FFFFFF31A231B6DDB6
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F2E583C7
      831D9A1D259E25D0EBD0E2F2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCF0DC79C97C4CB952FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Layout = blGlyphRight
  end
end
