object ReportSaleDetial: TReportSaleDetial
  Left = 271
  Top = 367
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  ClientHeight = 160
  ClientWidth = 417
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
  object cxImage2: TcxImage
    Left = 15
    Top = 15
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    TabOrder = 5
    Height = 87
    Width = 387
  end
  object cxButton2: TcxButton
    Left = 215
    Top = 117
    Width = 90
    Height = 30
    Caption = #1578#1575#1574#1610#1583
    Default = True
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object cxButton1: TcxButton
    Left = 119
    Top = 117
    Width = 90
    Height = 30
    Cancel = True
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 3
    OnClick = cxButton1Click
  end
  object cxMaskEdit3: TcxMaskEdit
    Left = 30
    Top = 65
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
    OnExit = cxMaskEdit3Exit
    Width = 130
  end
  object cxMaskEdit2: TcxMaskEdit
    Left = 214
    Top = 63
    Properties.Alignment.Horz = taRightJustify
    Properties.IgnoreMaskBlank = True
    Properties.MaskKind = emkRegExprEx
    Properties.EditMask = 
      '([123][0-9])? [0-9][0-9] / (0?[1-9] | 1[012]) / ([012]?[1-9] | [' +
      '123]0 |31)'
    Properties.MaxLength = 0
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 0
    OnExit = cxMaskEdit2Exit
    Width = 130
  end
  object cxLabel3: TcxLabel
    Left = 164
    Top = 64
    Caption = #1578#1575' '#1578#1575#1585#1610#1582
    Transparent = True
  end
  object cxLabel1: TcxLabel
    Left = 348
    Top = 64
    Caption = #1575#1586' '#1578#1575#1585#1610#1582
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 247
    Top = 24
    Caption = ': '#1605#1610#1586#1575#1606' '#1601#1585#1608#1588' '#1576#1607' '#1589#1608#1585#1578' '#1585#1610#1586
    Transparent = True
  end
end
