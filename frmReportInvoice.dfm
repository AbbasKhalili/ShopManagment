object ReportInvoice: TReportInvoice
  Left = 843
  Top = 134
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  ClientHeight = 299
  ClientWidth = 306
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
    Left = 16
    Top = 85
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 16
    Height = 40
    Width = 274
  end
  object cxImage2: TcxImage
    Left = 16
    Top = 16
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 14
    Height = 65
    Width = 274
  end
  object cxLabel3: TcxLabel
    Left = 169
    Top = 52
    Caption = #1578#1575' '#1578#1575#1585#1610#1582
    Transparent = True
  end
  object cxMaskEdit2: TcxMaskEdit
    Left = 35
    Top = 25
    Properties.Alignment.Horz = taRightJustify
    Properties.IgnoreMaskBlank = True
    Properties.MaskKind = emkRegExprEx
    Properties.EditMask = 
      '([123][0-9])? [0-9][0-9] / (0?[1-9] | 1[012]) / ([012]?[1-9] | [' +
      '123]0 |31)'
    Properties.MaxLength = 0
    Properties.OnChange = cxMaskEdit2PropertiesChange
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 1
    OnExit = cxMaskEdit2Exit
    Width = 130
  end
  object cxMaskEdit3: TcxMaskEdit
    Left = 35
    Top = 51
    Properties.Alignment.Horz = taRightJustify
    Properties.IgnoreMaskBlank = True
    Properties.MaskKind = emkRegExprEx
    Properties.EditMask = 
      '([123][0-9])? [0-9][0-9] / (0?[1-9] | 1[012]) / ([012]?[1-9] | [' +
      '123]0 |31)'
    Properties.MaxLength = 0
    Properties.OnChange = cxMaskEdit3PropertiesChange
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 2
    OnExit = cxMaskEdit3Exit
    Width = 130
  end
  object cxComboBox3: TcxComboBox
    Left = 35
    Top = 94
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsEditFixedList
    Properties.PopupAlignment = taRightJustify
    Properties.OnEditValueChanged = cxComboBox3PropertiesEditValueChanged
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 4
    Width = 170
  end
  object cxComboBox1: TcxComboBox
    Left = 5
    Top = 94
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsFixedList
    Properties.PopupAlignment = taRightJustify
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 13
    Visible = False
    Width = 47
  end
  object cxRadioButton2: TcxRadioButton
    Left = 169
    Top = 29
    Width = 109
    Height = 17
    Alignment = taLeftJustify
    Caption = #1601#1575#1705#1578#1608#1585#1607#1575' '#1575#1586' '#1578#1575#1585#1610#1582
    TabOrder = 0
    OnClick = cxRadioButton2Click
    Transparent = True
  end
  object cxRadioButton3: TcxRadioButton
    Left = 215
    Top = 96
    Width = 63
    Height = 18
    Alignment = taLeftJustify
    Caption = #1587#1591#1581' 1'
    TabOrder = 3
    Transparent = True
  end
  object cxButton1: TcxButton
    Left = 59
    Top = 256
    Width = 90
    Height = 30
    Cancel = True
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 12
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 155
    Top = 256
    Width = 90
    Height = 30
    Caption = #1578#1575#1574#1610#1583
    Default = True
    TabOrder = 11
    OnClick = cxButton2Click
  end
  object cxImage1: TcxImage
    Left = 16
    Top = 129
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 17
    Height = 40
    Width = 274
  end
  object cxComboBox2: TcxComboBox
    Left = 35
    Top = 138
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsEditFixedList
    Properties.PopupAlignment = taRightJustify
    Properties.OnEditValueChanged = cxComboBox2PropertiesEditValueChanged
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 6
    Width = 170
  end
  object cxComboBox4: TcxComboBox
    Left = 5
    Top = 138
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsFixedList
    Properties.PopupAlignment = taRightJustify
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 18
    Visible = False
    Width = 47
  end
  object cxRadioButton1: TcxRadioButton
    Left = 215
    Top = 140
    Width = 63
    Height = 18
    Alignment = taLeftJustify
    Caption = #1587#1591#1581' 2'
    TabOrder = 5
    Transparent = True
  end
  object cxImage4: TcxImage
    Left = 16
    Top = 173
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 19
    Height = 40
    Width = 274
  end
  object cxComboBox5: TcxComboBox
    Left = 35
    Top = 182
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsEditFixedList
    Properties.PopupAlignment = taRightJustify
    Properties.OnEditValueChanged = cxComboBox5PropertiesEditValueChanged
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 8
    Width = 170
  end
  object cxComboBox6: TcxComboBox
    Left = 5
    Top = 182
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsFixedList
    Properties.PopupAlignment = taRightJustify
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 20
    Visible = False
    Width = 47
  end
  object cxRadioButton4: TcxRadioButton
    Left = 215
    Top = 184
    Width = 63
    Height = 18
    Alignment = taLeftJustify
    Caption = #1587#1591#1581' 3'
    TabOrder = 7
    Transparent = True
  end
  object cxMaskEdit1: TcxMaskEdit
    Left = 156
    Top = 220
    Properties.Alignment.Horz = taRightJustify
    Properties.IgnoreMaskBlank = True
    Properties.MaskKind = emkRegExprEx
    Properties.EditMask = 
      '([123][0-9])? [0-9][0-9] / (0?[1-9] | 1[012]) / ([012]?[1-9] | [' +
      '123]0 |31)'
    Properties.MaxLength = 0
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 9
    OnExit = cxMaskEdit1Exit
    Width = 90
  end
  object cxMaskEdit4: TcxMaskEdit
    Left = 16
    Top = 220
    Properties.Alignment.Horz = taRightJustify
    Properties.IgnoreMaskBlank = True
    Properties.MaskKind = emkRegExprEx
    Properties.EditMask = 
      '([123][0-9])? [0-9][0-9] / (0?[1-9] | 1[012]) / ([012]?[1-9] | [' +
      '123]0 |31)'
    Properties.MaxLength = 0
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 10
    OnExit = cxMaskEdit4Exit
    Width = 90
  end
  object cxLabel1: TcxLabel
    Left = 111
    Top = 221
    Caption = #1578#1575' '#1578#1575#1585#1610#1582
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 249
    Top = 221
    Caption = #1575#1586' '#1578#1575#1585#1610#1582
    Transparent = True
  end
end
