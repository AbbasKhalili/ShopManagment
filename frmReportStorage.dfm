object ReportStorage: TReportStorage
  Left = 728
  Top = 112
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  ClientHeight = 262
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
  object cxImage1: TcxImage
    Left = 16
    Top = 147
    TabStop = False
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 9
    Height = 40
    Width = 278
  end
  object cxImage3: TcxImage
    Left = 16
    Top = 103
    TabStop = False
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 7
    Height = 40
    Width = 278
  end
  object cxRadioButton1: TcxRadioButton
    Left = 203
    Top = 114
    Width = 80
    Height = 18
    Alignment = taLeftJustify
    Caption = #1587#1591#1581' '#1587#1608#1605
    TabOrder = 0
    Transparent = True
  end
  object cxComboBox3: TcxComboBox
    Left = 35
    Top = 112
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsEditFixedList
    Properties.PopupAlignment = taRightJustify
    Properties.OnEditValueChanged = cxComboBox3PropertiesEditValueChanged
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 1
    Width = 166
  end
  object cxComboBox1: TcxComboBox
    Left = 5
    Top = 112
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
  object cxRadioButton2: TcxRadioButton
    Left = 174
    Top = 160
    Width = 109
    Height = 17
    Alignment = taLeftJustify
    Caption = #1605#1608#1580#1608#1583#1610' '#1578#1575' '#1578#1575#1585#1610#1582
    TabOrder = 2
    OnClick = cxRadioButton2Click
    Transparent = True
  end
  object cxMaskEdit1: TcxMaskEdit
    Left = 35
    Top = 156
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
    TabOrder = 3
    OnExit = cxMaskEdit1Exit
    Width = 130
  end
  object cxButton2: TcxButton
    Left = 159
    Top = 221
    Width = 90
    Height = 30
    Caption = #1578#1575#1574#1610#1583
    Default = True
    TabOrder = 5
    OnClick = cxButton2Click
  end
  object cxButton1: TcxButton
    Left = 63
    Top = 221
    Width = 90
    Height = 30
    Cancel = True
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 6
    OnClick = cxButton1Click
  end
  object cxImage2: TcxImage
    Left = 16
    Top = 59
    TabStop = False
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 10
    Height = 40
    Width = 278
  end
  object cxRadioButton3: TcxRadioButton
    Left = 210
    Top = 70
    Width = 73
    Height = 18
    Alignment = taLeftJustify
    Caption = #1587#1591#1581' '#1583#1608#1605
    TabOrder = 11
    Transparent = True
  end
  object cxComboBox2: TcxComboBox
    Left = 35
    Top = 68
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsEditFixedList
    Properties.PopupAlignment = taRightJustify
    Properties.OnEditValueChanged = cxComboBox2PropertiesEditValueChanged
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 12
    Width = 166
  end
  object cxComboBox4: TcxComboBox
    Left = 5
    Top = 68
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsFixedList
    Properties.PopupAlignment = taRightJustify
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 13
    Visible = False
    Width = 26
  end
  object cxImage4: TcxImage
    Left = 16
    Top = 15
    TabStop = False
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 14
    Height = 40
    Width = 278
  end
  object cxRadioButton4: TcxRadioButton
    Left = 212
    Top = 26
    Width = 71
    Height = 18
    Alignment = taLeftJustify
    Caption = #1587#1591#1581' '#1575#1608#1604
    Checked = True
    TabOrder = 15
    TabStop = True
    Transparent = True
  end
  object cxComboBox5: TcxComboBox
    Left = 35
    Top = 24
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsEditFixedList
    Properties.PopupAlignment = taRightJustify
    Properties.OnEditValueChanged = cxComboBox5PropertiesEditValueChanged
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 16
    Width = 166
  end
  object cxComboBox6: TcxComboBox
    Left = 5
    Top = 24
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsFixedList
    Properties.PopupAlignment = taRightJustify
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 17
    Visible = False
    Width = 26
  end
  object cxCheckBox1: TcxCheckBox
    Left = 136
    Top = 194
    Caption = #1593#1583#1605' '#1606#1605#1575#1610#1588' '#1605#1602#1575#1583#1610#1585' '#1589#1601#1585
    Properties.Alignment = taRightJustify
    TabOrder = 4
    Transparent = True
    Width = 148
  end
end
