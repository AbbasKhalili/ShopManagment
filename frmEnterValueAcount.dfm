object EnterValueAcount: TEnterValueAcount
  Left = 239
  Top = 110
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1605#1610#1586#1575#1606' '#1576#1583#1607#1705#1575#1585' '#1576#1587#1578#1575#1606#1705#1575#1585' '#1575#1576#1578#1583#1575#1610' '#1583#1608#1585#1607
  ClientHeight = 447
  ClientWidth = 511
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
  object cxButton1: TcxButton
    Left = 67
    Top = 127
    Width = 90
    Height = 30
    Caption = #1580#1583#1610#1583
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 163
    Top = 127
    Width = 90
    Height = 30
    Caption = #1579#1576#1578
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = ' '
    TabOrder = 1
    Height = 121
    Width = 511
    object cxLabel1: TcxLabel
      Left = 402
      Top = 27
      Caption = #1591#1585#1601' '#1581#1587#1575#1576
      Transparent = True
    end
    object cxComboBox3: TcxComboBox
      Left = 225
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
    object cxComboBox1: TcxComboBox
      Left = 196
      Top = 24
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 6
      Visible = False
      Width = 26
    end
    object cxMaskEdit1: TcxMaskEdit
      Left = 269
      Top = 53
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
      OnExit = cxMaskEdit1Exit
      Width = 130
    end
    object cxMaskEdit2: TcxMaskEdit
      Left = 46
      Top = 53
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      Properties.OnChange = cxMaskEdit2PropertiesChange
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 3
      Width = 130
    end
    object cxMaskEdit3: TcxMaskEdit
      Left = 46
      Top = 81
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      Properties.OnChange = cxMaskEdit3PropertiesChange
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 4
      Width = 130
    end
    object cxTextEdit1: TcxTextEdit
      Left = 269
      Top = 81
      Properties.Alignment.Horz = taRightJustify
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 2
      Width = 130
    end
    object cxLabel4: TcxLabel
      Left = 420
      Top = 83
      Caption = #1578#1608#1590#1610#1581#1575#1578
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 182
      Top = 83
      Caption = #1576#1587#1578#1575#1606#1705#1575#1585
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 193
      Top = 53
      Caption = #1576#1583#1607#1705#1575#1585
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 443
      Top = 54
      Caption = #1578#1575#1585#1610#1582
      Transparent = True
    end
  end
  object cxButton3: TcxButton
    Left = 259
    Top = 127
    Width = 90
    Height = 30
    Caption = #1575#1589#1604#1575#1581
    TabOrder = 3
    OnClick = cxButton3Click
  end
  object cxButton4: TcxButton
    Left = 355
    Top = 127
    Width = 90
    Height = 30
    Caption = #1581#1584#1601
    TabOrder = 4
    OnClick = cxButton4Click
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 209
    Width = 511
    Height = 238
    Align = alBottom
    TabOrder = 5
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = True
      NavigatorButtons.PriorPage.Visible = True
      NavigatorButtons.Prior.Visible = True
      NavigatorButtons.Next.Visible = True
      NavigatorButtons.NextPage.Visible = True
      NavigatorButtons.Last.Visible = True
      NavigatorButtons.Insert.Visible = True
      NavigatorButtons.Append.Visible = False
      NavigatorButtons.Delete.Visible = True
      NavigatorButtons.Edit.Visible = True
      NavigatorButtons.Post.Visible = True
      NavigatorButtons.Cancel.Visible = True
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = True
      NavigatorButtons.GotoBookmark.Visible = True
      NavigatorButtons.Filter.Visible = True
      OnCellClick = cxGrid1DBTableView1CellClick
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = #1575#1591#1604#1575#1593#1575#1578#1610' '#1610#1575#1601#1578' '#1606#1588#1583
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = #1578#1608#1590#1610#1581#1575#1578
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 200
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #1576#1587#1578#1575#1606#1705#1575#1585
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 100
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #1576#1583#1607#1705#1575#1585
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 100
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #1578#1575#1585#1610#1582
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 90
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.GroupFooters = False
        Options.Grouping = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton5: TcxButton
    Left = 451
    Top = 127
    Width = 90
    Height = 30
    Caption = #1580#1587#1578#1580#1608
    TabOrder = 6
    TabStop = False
    Visible = False
  end
  object cxImage1: TcxImage
    Left = 1
    Top = 163
    TabStop = False
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 7
    Height = 40
    Width = 509
  end
  object cxMaskEdit6: TcxMaskEdit
    Left = 275
    Top = 172
    Properties.Alignment.Horz = taRightJustify
    Properties.HideSelection = False
    Properties.IgnoreMaskBlank = True
    Properties.MaskKind = emkRegExprEx
    Properties.EditMask = 
      '([123][0-9])? [0-9][0-9] / (0?[1-9] | 1[012]) / ([012]?[1-9] | [' +
      '123]0 |31)'
    Properties.MaxLength = 0
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 8
    OnKeyPress = cxMaskEdit6KeyPress
    Width = 150
  end
  object cxLabel12: TcxLabel
    Left = 432
    Top = 174
    Caption = #1578#1575#1585#1610#1582
    Transparent = True
  end
  object cxButton12: TcxButton
    Left = 246
    Top = 171
    Width = 25
    Height = 24
    Hint = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' '#1575#1606#1576#1575#1585' '#1587#1591#1581' 3'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    TabStop = False
    OnClick = cxButton12Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      C9D8C92E672EBECFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83A683007800156C15B7C9B7FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      417D4100B20000AC00116B119EB79EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFD7E3D716791600CA0000CF0000BE000873089A
      B79AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DBD9D
      039D0300DB0000DA0000E00000CF000083008BB08BFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF68A06800CA0000F10000D30000D50000EE0000
      E90004950475A775FCFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9F2E9329B32
      00F30000DD00238E2336913600B10000E90000FE0000AE0070A770F0F6F0FFFF
      FFFFFFFFFFFFFFFFFFFFC1DBC10CB30C08ED08219721CDE1CDF7FAF797C19737
      A03701C0010AF50A0BBE0B55A255EFF6EFFFFFFFFFFFFFFFFFFF8CC38C18B918
      23A423C6DFC6FFFFFFFFFFFFFFFFFFE8F2E897C6972AA22A1BCE1B1FBD1F4BA6
      4BE5F2E5FFFFFFFFFFFF38A238189718BEDDBEFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFECF5EC88C48835AF3519A7193BA03BE3F2E3FFFFFF31A231B6DDB6
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F2E583C7
      831D9A1D259E25D0EBD0E2F2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCF0DC79C97C4CB952FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Layout = blGlyphRight
    Spacing = 0
  end
end
