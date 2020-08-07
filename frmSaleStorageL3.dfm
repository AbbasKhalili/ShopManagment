object SaleStorageL3: TSaleStorageL3
  Left = 316
  Top = 122
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1605#1610#1586#1575#1606' '#1601#1585#1608#1588' '#1575#1586' '#1587#1591#1608#1581' '#1605#1582#1578#1604#1601' '#1575#1606#1576#1575#1585' '#1576#1607' '#1589#1608#1585#1578' '#1580#1586#1569
  ClientHeight = 221
  ClientWidth = 418
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
  object cxImage2: TcxImage
    Left = 15
    Top = 15
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 5
    Height = 154
    Width = 387
  end
  object cxButton2: TcxButton
    Left = 213
    Top = 181
    Width = 90
    Height = 30
    Caption = #1578#1575#1574#1610#1583
    Default = True
    TabOrder = 3
    OnClick = cxButton2Click
  end
  object cxButton1: TcxButton
    Left = 117
    Top = 181
    Width = 90
    Height = 30
    Cancel = True
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 4
  end
  object cxMaskEdit3: TcxMaskEdit
    Left = 30
    Top = 98
    Properties.Alignment.Horz = taRightJustify
    Properties.IgnoreMaskBlank = True
    Properties.MaskKind = emkRegExprEx
    Properties.EditMask = 
      '([123][0-9])? [0-9][0-9] / (0?[1-9] | 1[012]) / ([012]?[1-9] | [' +
      '123]0 |31)'
    Properties.MaxLength = 0
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 2
    OnExit = cxMaskEdit3Exit
    Width = 120
  end
  object cxMaskEdit2: TcxMaskEdit
    Left = 206
    Top = 96
    Properties.Alignment.Horz = taRightJustify
    Properties.IgnoreMaskBlank = True
    Properties.MaskKind = emkRegExprEx
    Properties.EditMask = 
      '([123][0-9])? [0-9][0-9] / (0?[1-9] | 1[012]) / ([012]?[1-9] | [' +
      '123]0 |31)'
    Properties.MaxLength = 0
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 1
    OnExit = cxMaskEdit2Exit
    Width = 120
  end
  object cxLabel3: TcxLabel
    Left = 154
    Top = 97
    Caption = #1578#1575' '#1578#1575#1585#1610#1582
    Transparent = True
  end
  object cxLabel1: TcxLabel
    Left = 330
    Top = 97
    Caption = #1575#1586' '#1578#1575#1585#1610#1582
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 247
    Top = 24
    Caption = ': '#1605#1610#1586#1575#1606' '#1601#1585#1608#1588' '#1576#1607' '#1589#1608#1585#1578' '#1585#1610#1586
    Transparent = True
  end
  object cxComboBox5: TcxComboBox
    Left = 150
    Top = 66
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsEditFixedList
    Properties.PopupAlignment = taRightJustify
    Properties.OnEditValueChanged = cxComboBox5PropertiesEditValueChanged
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 0
    Width = 176
  end
  object cxLabel4: TcxLabel
    Left = 330
    Top = 67
    Caption = #1587#1591#1581' 3'
    Transparent = True
  end
  object cxComboBox6: TcxComboBox
    Left = 168
    Top = 66
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsFixedList
    Properties.PopupAlignment = taRightJustify
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 9
    Visible = False
    Width = 41
  end
  object optSale: TcxRadioButton
    Left = 237
    Top = 137
    Width = 134
    Height = 17
    Alignment = taLeftJustify
    Caption = #1576#1585#1575#1587#1575#1587' '#1602#1610#1605#1578' '#1601#1585#1608#1588
    Checked = True
    TabOrder = 11
    TabStop = True
    Transparent = True
  end
  object optBuy: TcxRadioButton
    Left = 65
    Top = 137
    Width = 128
    Height = 17
    Alignment = taLeftJustify
    Caption = #1576#1585#1575#1587#1575#1587' '#1602#1610#1605#1578' '#1582#1585#1610#1583
    TabOrder = 12
    Transparent = True
  end
end
