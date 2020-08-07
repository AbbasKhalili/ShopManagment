object ReportArchive_AG: TReportArchive_AG
  Left = 288
  Top = 136
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1606#1578#1575#1610#1580' '#1575#1606#1576#1575#1585#1711#1585#1583#1575#1606#1610
  ClientHeight = 142
  ClientWidth = 313
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
  object cxImage4: TcxImage
    Left = 16
    Top = 13
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 4
    Height = 81
    Width = 281
  end
  object cxButton1: TcxButton
    Left = 58
    Top = 103
    Width = 90
    Height = 30
    Cancel = True
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 3
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 154
    Top = 103
    Width = 90
    Height = 30
    Caption = #1578#1575#1574#1610#1583
    Default = True
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object cxMaskEdit2: TcxMaskEdit
    Left = 36
    Top = 57
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
    Width = 154
  end
  object cxLabel2: TcxLabel
    Left = 193
    Top = 58
    Caption = #1575#1606#1576#1575#1585#1711#1585#1583#1575#1606#1610' '#1578#1575#1585#1610#1582
    Transparent = True
  end
  object cxLabel3: TcxLabel
    Left = 213
    Top = 27
    Caption = #1575#1606#1576#1575#1585' '#1587#1591#1581' 2'
    Transparent = True
  end
  object cxComboBox2: TcxComboBox
    Left = 35
    Top = 25
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsEditFixedList
    Properties.PopupAlignment = taRightJustify
    Properties.OnEditValueChanged = cxComboBox2PropertiesEditValueChanged
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 0
    Width = 174
  end
  object cxComboBox4: TcxComboBox
    Left = -8
    Top = 18
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsFixedList
    Properties.PopupAlignment = taRightJustify
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 7
    Visible = False
    Width = 47
  end
end
