object ReportQuch: TReportQuch
  Left = 366
  Top = 120
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  ClientHeight = 219
  ClientWidth = 308
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
    Top = 127
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 0
    Height = 40
    Width = 274
  end
  object cxImage2: TcxImage
    Left = 16
    Top = 59
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 1
    Height = 65
    Width = 274
  end
  object cxImage1: TcxImage
    Left = 16
    Top = 16
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 2
    Height = 40
    Width = 274
  end
  object cxLabel3: TcxLabel
    Left = 169
    Top = 94
    Caption = #1578#1575' '#1578#1575#1585#1610#1582
    Transparent = True
  end
  object cxMaskEdit1: TcxMaskEdit
    Left = 35
    Top = 25
    Properties.Alignment.Horz = taRightJustify
    Properties.IgnoreMaskBlank = True
    Properties.MaskKind = emkRegExprEx
    Properties.EditMask = 
      '([123][0-9])? [0-9][0-9] / (0?[1-9] | 1[012]) / ([012]?[1-9] | [' +
      '123]0 |31)'
    Properties.MaxLength = 0
    Properties.OnChange = cxMaskEdit1PropertiesChange
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 4
    OnExit = cxMaskEdit1Exit
    Width = 130
  end
  object cxMaskEdit2: TcxMaskEdit
    Left = 35
    Top = 67
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
    TabOrder = 5
    OnExit = cxMaskEdit2Exit
    Width = 130
  end
  object cxMaskEdit3: TcxMaskEdit
    Left = 35
    Top = 93
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
    TabOrder = 6
    OnExit = cxMaskEdit3Exit
    Width = 130
  end
  object cxComboBox3: TcxComboBox
    Left = 35
    Top = 136
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsEditFixedList
    Properties.PopupAlignment = taRightJustify
    Properties.OnEditValueChanged = cxComboBox3PropertiesEditValueChanged
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 7
    Width = 170
  end
  object cxComboBox1: TcxComboBox
    Left = 5
    Top = 136
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsFixedList
    Properties.PopupAlignment = taRightJustify
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 8
    Visible = False
    Width = 26
  end
  object cxRadioButton1: TcxRadioButton
    Left = 168
    Top = 29
    Width = 109
    Height = 17
    Alignment = taLeftJustify
    Caption = #1662#1585#1583#1575#1582#1578#1610' '#1578#1575' '#1578#1575#1585#1610#1582
    Checked = True
    TabOrder = 9
    TabStop = True
    Transparent = True
  end
  object cxRadioButton2: TcxRadioButton
    Left = 168
    Top = 71
    Width = 109
    Height = 17
    Alignment = taLeftJustify
    Caption = #1662#1585#1583#1575#1582#1578#1610' '#1575#1586' '#1578#1575#1585#1610#1582
    TabOrder = 10
    Transparent = True
  end
  object cxRadioButton3: TcxRadioButton
    Left = 209
    Top = 138
    Width = 68
    Height = 18
    Alignment = taLeftJustify
    Caption = #1587#1591#1581' 3 '
    TabOrder = 11
    Transparent = True
  end
  object cxButton1: TcxButton
    Left = 59
    Top = 178
    Width = 90
    Height = 30
    Cancel = True
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 12
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 155
    Top = 178
    Width = 90
    Height = 30
    Caption = #1578#1575#1574#1610#1583
    Default = True
    TabOrder = 13
    OnClick = cxButton2Click
  end
end
