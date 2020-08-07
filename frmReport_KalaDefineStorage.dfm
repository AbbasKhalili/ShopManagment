object Report_KalaDefineStorage: TReport_KalaDefineStorage
  Left = 231
  Top = 419
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  ClientHeight = 190
  ClientWidth = 299
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
    TabOrder = 0
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
    TabOrder = 2
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
    TabOrder = 3
    Transparent = True
  end
  object cxButton1: TcxButton
    Left = 54
    Top = 149
    Width = 90
    Height = 30
    Cancel = True
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 4
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 150
    Top = 149
    Width = 90
    Height = 30
    Caption = #1578#1575#1574#1610#1583
    Default = True
    TabOrder = 5
    OnClick = cxButton2Click
  end
  object cxImage1: TcxImage
    Left = 12
    Top = 55
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 6
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
    TabOrder = 7
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
    TabOrder = 8
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
    TabOrder = 9
    Transparent = True
  end
  object cxImage4: TcxImage
    Left = 12
    Top = 99
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 10
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
    TabOrder = 11
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
    TabOrder = 12
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
    TabOrder = 13
    Transparent = True
  end
end
