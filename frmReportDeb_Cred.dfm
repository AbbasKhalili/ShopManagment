object ReportDeb_Cred: TReportDeb_Cred
  Left = 252
  Top = 116
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  ClientHeight = 282
  ClientWidth = 316
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
  object cxImage4: TcxImage
    Left = 16
    Top = 172
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 15
    Height = 62
    Width = 285
  end
  object cxImage3: TcxImage
    Left = 16
    Top = 16
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 12
    Height = 40
    Width = 285
  end
  object cxImage2: TcxImage
    Left = 16
    Top = 103
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 9
    Height = 65
    Width = 285
  end
  object cxImage1: TcxImage
    Left = 16
    Top = 60
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 10
    Height = 40
    Width = 285
  end
  object cxMaskEdit1: TcxMaskEdit
    Left = 35
    Top = 69
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
    OnExit = cxMaskEdit1Exit
    Width = 130
  end
  object cxMaskEdit2: TcxMaskEdit
    Left = 35
    Top = 111
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
    TabOrder = 4
    OnExit = cxMaskEdit2Exit
    Width = 130
  end
  object cxMaskEdit3: TcxMaskEdit
    Left = 35
    Top = 137
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
    TabOrder = 5
    OnExit = cxMaskEdit3Exit
    Width = 130
  end
  object cxRadioButton1: TcxRadioButton
    Left = 168
    Top = 73
    Width = 123
    Height = 17
    Alignment = taLeftJustify
    Caption = #1589#1608#1585#1578#1581#1587#1575#1576' '#1578#1575' '#1578#1575#1585#1610#1582
    Checked = True
    TabOrder = 1
    TabStop = True
    OnClick = cxRadioButton1Click
    Transparent = True
  end
  object cxRadioButton2: TcxRadioButton
    Left = 168
    Top = 115
    Width = 123
    Height = 17
    Alignment = taLeftJustify
    Caption = #1589#1608#1585#1578#1581#1587#1575#1576' '#1575#1586' '#1578#1575#1585#1610#1582
    TabOrder = 3
    OnClick = cxRadioButton2Click
    Transparent = True
  end
  object cxButton1: TcxButton
    Left = 67
    Top = 243
    Width = 90
    Height = 30
    Cancel = True
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 8
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 163
    Top = 243
    Width = 90
    Height = 30
    Caption = #1578#1575#1574#1610#1583
    Default = True
    TabOrder = 7
    OnClick = cxButton2Click
  end
  object cxComboBox3: TcxComboBox
    Left = 35
    Top = 25
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsEditFixedList
    Properties.PopupAlignment = taRightJustify
    Properties.OnEditValueChanged = cxComboBox3PropertiesEditValueChanged
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 0
    Width = 174
  end
  object cxLabel3: TcxLabel
    Left = 173
    Top = 138
    Caption = #1578#1575' '#1578#1575#1585#1610#1582
    Transparent = True
  end
  object cxLabel1: TcxLabel
    Left = 223
    Top = 27
    Caption = #1591#1585#1601' '#1581#1587#1575#1576
    Transparent = True
  end
  object cxComboBox1: TcxComboBox
    Left = 5
    Top = 24
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsFixedList
    Properties.PopupAlignment = taRightJustify
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 11
    Visible = False
    Width = 26
  end
  object cxMaskEdit4: TcxMaskEdit
    Left = 35
    Top = 203
    Properties.Alignment.Horz = taRightJustify
    Properties.IgnoreMaskBlank = True
    Properties.MaskKind = emkRegExprEx
    Properties.EditMask = '\d\d\d'
    Properties.MaxLength = 0
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 6
    OnExit = cxMaskEdit1Exit
    Width = 130
  end
  object cxLabel2: TcxLabel
    Left = 175
    Top = 204
    Caption = #1605#1610#1586#1575#1606' '#1583#1585#1589#1583' '#1587#1608#1583
    Transparent = True
  end
  object cxLabel4: TcxLabel
    Left = 84
    Top = 175
    Caption = #1605#1581#1575#1587#1576#1607' '#1605#1610#1586#1575#1606' '#1589#1608#1585#1578#1581#1587#1575#1576' '#1605#1575#1606#1583#1607' '#1576#1583#1607#1610
    Transparent = True
  end
end
