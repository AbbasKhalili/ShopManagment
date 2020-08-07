object ReportProfit: TReportProfit
  Left = 579
  Top = 192
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1587#1608#1583' '#1608' '#1586#1610#1575#1606
  ClientHeight = 224
  ClientWidth = 300
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object cxImage3: TcxImage
    Left = 12
    Top = 11
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 10
    Height = 40
    Width = 274
  end
  object cxComboBox3: TcxComboBox
    Left = 31
    Top = 20
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsEditFixedList
    Properties.PopupAlignment = taRightJustify
    Properties.OnEditValueChanged = cxComboBox3PropertiesEditValueChanged
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 1
    Width = 170
  end
  object cxComboBox1: TcxComboBox
    Left = 1
    Top = 20
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsFixedList
    Properties.PopupAlignment = taRightJustify
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 11
    Visible = False
    Width = 35
  end
  object cxRadioButton3: TcxRadioButton
    Left = 211
    Top = 22
    Width = 63
    Height = 18
    Alignment = taLeftJustify
    Caption = #1587#1591#1581' 1'
    TabOrder = 0
    Transparent = True
  end
  object cxButton1: TcxButton
    Left = 54
    Top = 181
    Width = 90
    Height = 30
    Cancel = True
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 9
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 150
    Top = 181
    Width = 90
    Height = 30
    Caption = #1578#1575#1574#1610#1583
    Default = True
    TabOrder = 8
    OnClick = cxButton2Click
  end
  object cxImage1: TcxImage
    Left = 12
    Top = 55
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 12
    Height = 40
    Width = 274
  end
  object cxComboBox2: TcxComboBox
    Left = 31
    Top = 64
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsEditFixedList
    Properties.PopupAlignment = taRightJustify
    Properties.OnEditValueChanged = cxComboBox2PropertiesEditValueChanged
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 3
    Width = 170
  end
  object cxComboBox4: TcxComboBox
    Left = 1
    Top = 64
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsFixedList
    Properties.PopupAlignment = taRightJustify
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 13
    Visible = False
    Width = 35
  end
  object cxRadioButton1: TcxRadioButton
    Left = 211
    Top = 66
    Width = 63
    Height = 18
    Alignment = taLeftJustify
    Caption = #1587#1591#1581' 2'
    TabOrder = 2
    Transparent = True
  end
  object cxImage4: TcxImage
    Left = 12
    Top = 99
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 14
    Height = 40
    Width = 274
  end
  object cxComboBox5: TcxComboBox
    Left = 31
    Top = 108
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsEditFixedList
    Properties.PopupAlignment = taRightJustify
    Properties.OnEditValueChanged = cxComboBox5PropertiesEditValueChanged
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 5
    Width = 170
  end
  object cxComboBox6: TcxComboBox
    Left = 1
    Top = 108
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsFixedList
    Properties.PopupAlignment = taRightJustify
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 15
    Visible = False
    Width = 35
  end
  object cxRadioButton4: TcxRadioButton
    Left = 211
    Top = 110
    Width = 63
    Height = 18
    Alignment = taLeftJustify
    Caption = #1587#1591#1581' 3'
    TabOrder = 4
    Transparent = True
  end
  object cxMaskEdit1: TcxMaskEdit
    Left = 152
    Top = 147
    Properties.Alignment.Horz = taRightJustify
    Properties.IgnoreMaskBlank = True
    Properties.MaskKind = emkRegExprEx
    Properties.EditMask = 
      '([123][0-9])? [0-9][0-9] / (0?[1-9] | 1[012]) / ([012]?[1-9] | [' +
      '123]0 |31)'
    Properties.MaxLength = 0
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 6
    OnExit = cxMaskEdit1Exit
    Width = 90
  end
  object cxMaskEdit4: TcxMaskEdit
    Left = 12
    Top = 147
    Properties.Alignment.Horz = taRightJustify
    Properties.IgnoreMaskBlank = True
    Properties.MaskKind = emkRegExprEx
    Properties.EditMask = 
      '([123][0-9])? [0-9][0-9] / (0?[1-9] | 1[012]) / ([012]?[1-9] | [' +
      '123]0 |31)'
    Properties.MaxLength = 0
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 7
    OnExit = cxMaskEdit4Exit
    Width = 90
  end
  object cxLabel1: TcxLabel
    Left = 107
    Top = 148
    Caption = #1578#1575' '#1578#1575#1585#1610#1582
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 245
    Top = 148
    Caption = #1575#1586' '#1578#1575#1585#1610#1582
    Transparent = True
  end
end
