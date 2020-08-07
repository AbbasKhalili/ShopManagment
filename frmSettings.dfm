object Settings: TSettings
  Left = 673
  Top = 140
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1578#1606#1592#1610#1605#1575#1578
  ClientHeight = 380
  ClientWidth = 371
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object cxButton1: TcxButton
    Left = 194
    Top = 343
    Width = 90
    Height = 29
    Caption = #1578#1575#1574#1610#1583
    Default = True
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 90
    Top = 343
    Width = 90
    Height = 29
    Cancel = True
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 1
    OnClick = cxButton2Click
  end
  object cxPageControl1: TcxPageControl
    Left = 11
    Top = 11
    Width = 348
    Height = 324
    ActivePage = cxTabSheet2
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'iMaginary'
    ShowFrame = True
    Style = 9
    TabOrder = 2
    TabSlants.Kind = skCutCorner
    ClientRectBottom = 323
    ClientRectLeft = 1
    ClientRectRight = 347
    ClientRectTop = 23
    object cxTabSheet1: TcxTabSheet
      Caption = '  '#1578#1606#1592#1610#1605#1575#1578' '#1588#1605#1575#1585#1606#1583#1607' '#1607#1575'  '
      ImageIndex = 0
      object cxMaskEdit1: TcxMaskEdit
        Left = 16
        Top = 13
        Properties.Alignment.Horz = taCenter
        Properties.IgnoreMaskBlank = True
        Properties.MaskKind = emkRegExprEx
        Properties.EditMask = '\d+'
        Properties.MaxLength = 0
        Properties.UseLeftAlignmentOnEditing = False
        Properties.OnChange = cxMaskEdit1PropertiesChange
        StyleFocused.Color = 13434879
        StyleFocused.TextColor = 4194432
        TabOrder = 0
        Width = 100
      end
      object cxMaskEdit2: TcxMaskEdit
        Left = 16
        Top = 41
        Properties.Alignment.Horz = taCenter
        Properties.IgnoreMaskBlank = True
        Properties.MaskKind = emkRegExprEx
        Properties.EditMask = '\d+'
        Properties.MaxLength = 0
        Properties.UseLeftAlignmentOnEditing = False
        Properties.OnChange = cxMaskEdit2PropertiesChange
        StyleFocused.Color = 13434879
        StyleFocused.TextColor = 4194432
        TabOrder = 1
        Width = 100
      end
      object cxMaskEdit3: TcxMaskEdit
        Left = 16
        Top = 98
        Properties.Alignment.Horz = taCenter
        Properties.IgnoreMaskBlank = True
        Properties.MaskKind = emkRegExprEx
        Properties.EditMask = '\d+'
        Properties.MaxLength = 0
        Properties.UseLeftAlignmentOnEditing = False
        Properties.OnChange = cxMaskEdit3PropertiesChange
        StyleFocused.Color = 13434879
        StyleFocused.TextColor = 4194432
        TabOrder = 3
        Width = 100
      end
      object cxMaskEdit4: TcxMaskEdit
        Left = 16
        Top = 126
        Properties.Alignment.Horz = taCenter
        Properties.IgnoreMaskBlank = True
        Properties.MaskKind = emkRegExprEx
        Properties.EditMask = '\d+'
        Properties.MaxLength = 0
        Properties.UseLeftAlignmentOnEditing = False
        Properties.OnChange = cxMaskEdit4PropertiesChange
        StyleFocused.Color = 13434879
        StyleFocused.TextColor = 4194432
        TabOrder = 4
        Width = 100
      end
      object cxMaskEdit5: TcxMaskEdit
        Left = 16
        Top = 154
        Properties.Alignment.Horz = taCenter
        Properties.IgnoreMaskBlank = True
        Properties.MaskKind = emkRegExprEx
        Properties.EditMask = '\d+'
        Properties.MaxLength = 0
        Properties.UseLeftAlignmentOnEditing = False
        Properties.OnChange = cxMaskEdit5PropertiesChange
        StyleFocused.Color = 13434879
        StyleFocused.TextColor = 4194432
        TabOrder = 5
        Width = 100
      end
      object cxMaskEdit6: TcxMaskEdit
        Left = 16
        Top = 182
        Properties.Alignment.Horz = taCenter
        Properties.IgnoreMaskBlank = True
        Properties.MaskKind = emkRegExprEx
        Properties.EditMask = '\d+'
        Properties.MaxLength = 0
        Properties.UseLeftAlignmentOnEditing = False
        Properties.OnChange = cxMaskEdit6PropertiesChange
        StyleFocused.Color = 13434879
        StyleFocused.TextColor = 4194432
        TabOrder = 6
        Width = 100
      end
      object cxLabel1: TcxLabel
        Left = 132
        Top = 15
        Caption = ' : '#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585' '#1601#1585#1608#1588' '#1588#1585#1608#1593' '#1588#1608#1583' '#1575#1586
        ParentFont = False
        Style.Font.Charset = ARABIC_CHARSET
        Style.Font.Color = 10116878
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxLabel2: TcxLabel
        Left = 115
        Top = 43
        Caption = ' : '#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585' '#1605#1585#1580#1608#1593#1610' '#1588#1585#1608#1593' '#1588#1608#1583' '#1575#1586
        ParentFont = False
        Style.Font.Charset = ARABIC_CHARSET
        Style.Font.Color = 10116878
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxLabel3: TcxLabel
        Left = 126
        Top = 100
        Caption = ' : '#1588#1605#1575#1585#1607' '#1662#1585#1583#1575#1582#1578' '#1606#1602#1583#1610' '#1588#1585#1608#1593' '#1588#1608#1583' '#1575#1586
        ParentFont = False
        Style.Font.Charset = ARABIC_CHARSET
        Style.Font.Color = 10116878
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxLabel4: TcxLabel
        Left = 129
        Top = 128
        Caption = ' : '#1588#1605#1575#1585#1607' '#1583#1585#1610#1575#1601#1578' '#1606#1602#1583#1610' '#1588#1585#1608#1593' '#1588#1608#1583' '#1575#1586
        ParentFont = False
        Style.Font.Charset = ARABIC_CHARSET
        Style.Font.Color = 10116878
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxLabel5: TcxLabel
        Left = 127
        Top = 156
        Caption = ' : '#1588#1605#1575#1585#1607' '#1670#1705' '#1662#1585#1583#1575#1582#1578#1610' '#1588#1585#1608#1593' '#1588#1608#1583' '#1575#1586
        ParentFont = False
        Style.Font.Charset = ARABIC_CHARSET
        Style.Font.Color = 10116878
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxLabel6: TcxLabel
        Left = 130
        Top = 184
        Caption = ' : '#1588#1605#1575#1585#1607' '#1670#1705' '#1583#1585#1610#1575#1601#1578#1610' '#1588#1585#1608#1593' '#1588#1608#1583' '#1575#1586
        ParentFont = False
        Style.Font.Charset = ARABIC_CHARSET
        Style.Font.Color = 10116878
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxMaskEdit7: TcxMaskEdit
        Left = 16
        Top = 210
        Properties.Alignment.Horz = taCenter
        Properties.IgnoreMaskBlank = True
        Properties.MaskKind = emkRegExprEx
        Properties.EditMask = '\d+'
        Properties.MaxLength = 0
        Properties.UseLeftAlignmentOnEditing = False
        Properties.OnChange = cxMaskEdit7PropertiesChange
        StyleFocused.Color = 13434879
        StyleFocused.TextColor = 4194432
        TabOrder = 13
        Width = 100
      end
      object cxMaskEdit8: TcxMaskEdit
        Left = 16
        Top = 238
        Properties.Alignment.Horz = taCenter
        Properties.IgnoreMaskBlank = True
        Properties.MaskKind = emkRegExprEx
        Properties.EditMask = '\d+'
        Properties.MaxLength = 0
        Properties.UseLeftAlignmentOnEditing = False
        Properties.OnChange = cxMaskEdit8PropertiesChange
        StyleFocused.Color = 13434879
        StyleFocused.TextColor = 4194432
        TabOrder = 14
        Width = 100
      end
      object cxLabel7: TcxLabel
        Left = 123
        Top = 212
        Caption = ': '#1578#1593#1583#1575#1583' '#1585#1608#1586' '#1605#1575#1606#1583#1607' '#1576#1607' '#1670#1705' '#1607#1575#1610' '#1662#1585#1583#1575#1582#1578#1610
        ParentFont = False
        Style.Font.Charset = ARABIC_CHARSET
        Style.Font.Color = 10116878
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxLabel8: TcxLabel
        Left = 126
        Top = 240
        Caption = ': '#1578#1593#1583#1575#1583' '#1585#1608#1586' '#1605#1575#1606#1583#1607' '#1576#1607' '#1670#1705' '#1607#1575#1610' '#1583#1585#1610#1575#1601#1578#1610
        ParentFont = False
        Style.Font.Charset = ARABIC_CHARSET
        Style.Font.Color = 10116878
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxMaskEdit9: TcxMaskEdit
        Left = 16
        Top = 267
        Properties.Alignment.Horz = taCenter
        Properties.IgnoreMaskBlank = True
        Properties.MaskKind = emkRegExprEx
        Properties.EditMask = '\d+'
        Properties.MaxLength = 0
        Properties.UseLeftAlignmentOnEditing = False
        Properties.OnChange = cxMaskEdit8PropertiesChange
        StyleFocused.Color = 13434879
        StyleFocused.TextColor = 4194432
        TabOrder = 17
        Width = 100
      end
      object cxLabel9: TcxLabel
        Left = 134
        Top = 269
        Caption = ' : '#1605#1610#1586#1575#1606' '#1583#1585#1589#1583' '#1605#1575#1604#1610#1575#1578' '#1576#1585' '#1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
        ParentFont = False
        Style.Font.Charset = ARABIC_CHARSET
        Style.Font.Color = 10116878
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxMaskEdit10: TcxMaskEdit
        Left = 16
        Top = 69
        Properties.Alignment.Horz = taCenter
        Properties.IgnoreMaskBlank = True
        Properties.MaskKind = emkRegExprEx
        Properties.EditMask = '\d+'
        Properties.MaxLength = 0
        Properties.UseLeftAlignmentOnEditing = False
        Properties.OnChange = cxMaskEdit2PropertiesChange
        StyleFocused.Color = 13434879
        StyleFocused.TextColor = 4194432
        TabOrder = 2
        Width = 100
      end
      object cxLabel12: TcxLabel
        Left = 117
        Top = 71
        Caption = ': '#1588#1605#1575#1585#1607' '#1605#1585#1580#1608#1593#1610' '#1575#1586' '#1575#1606#1576#1575#1585' '#1588#1585#1608#1593' '#1588#1608#1583' '#1575#1586
        ParentFont = False
        Style.Font.Charset = ARABIC_CHARSET
        Style.Font.Color = 10116878
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = '  '#1578#1606#1592#1610#1605#1575#1578' '#1670#1575#1662'  '
      ImageIndex = 1
      object cxLabel10: TcxLabel
        Left = 245
        Top = 24
        Caption = #1593#1606#1608#1575#1606' '#1711#1586#1575#1585#1588#1575#1578
        Transparent = True
      end
      object cxTextEdit1: TcxTextEdit
        Left = 15
        Top = 22
        Properties.Alignment.Horz = taRightJustify
        TabOrder = 0
        Width = 226
      end
      object cxImage1: TcxImage
        Left = 16
        Top = 100
        Properties.PopupMenuLayout.MenuItems = []
        Properties.ShowFocusRect = False
        TabOrder = 2
        Height = 186
        Width = 315
      end
      object cxLabel11: TcxLabel
        Left = 276
        Top = 51
        Caption = #1587#1582#1606' '#1585#1608#1586
        Transparent = True
      end
      object cxTextEdit2: TcxTextEdit
        Left = 15
        Top = 49
        Properties.Alignment.Horz = taRightJustify
        TabOrder = 1
        Width = 226
      end
    end
  end
end
