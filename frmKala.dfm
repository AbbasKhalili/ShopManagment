inherited Kala: TKala
  Left = 414
  Top = 115
  Caption = #1605#1593#1585#1601#1610' '#1705#1575#1604#1575#1607#1575
  ClientHeight = 599
  ClientWidth = 530
  OldCreateOrder = True
  OnClose = FormClose
  OnKeyDown = cxTextEdit3KeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  inherited cxButton6: TcxButton [0]
    Left = 418
    Top = 244
    TabOrder = 5
    TabStop = False
    Visible = False
    OnKeyDown = cxTextEdit3KeyDown
  end
  inherited cxButton1: TcxButton [1]
    TabOrder = 7
  end
  inherited cxGroupBox1: TcxGroupBox [2]
    Top = 89
    Alignment = alTopRight
    Caption = #1605#1588#1582#1589#1575#1578' '#1705#1575#1604#1575
    ParentBiDiMode = False
    ParentCtl3D = False
    Height = 148
    Width = 530
    object cxLabel3: TcxLabel
      Left = 194
      Top = 85
      Caption = #1602#1610#1605#1578' '#1601#1585#1608#1588
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 213
      Top = 28
      Caption = #1608#1575#1581#1583' '#1705#1575#1604#1575
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 480
      Top = 27
      Caption = #1705#1583' '#1705#1575#1604#1575
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 477
      Top = 57
      Caption = #1606#1575#1605' '#1705#1575#1604#1575
      Transparent = True
    end
    object cxComboBox1: TcxComboBox
      Left = 49
      Top = 25
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox1PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 4
      OnKeyDown = cxTextEdit3KeyDown
      Width = 134
    end
    object cxTextEdit1: TcxTextEdit
      Left = 287
      Top = 54
      Properties.Alignment.Horz = taRightJustify
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 1
      OnKeyDown = cxTextEdit3KeyDown
      Width = 160
    end
    object cxComboBox4: TcxComboBox
      Left = 51
      Top = 25
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox1PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 13
      Visible = False
      OnKeyDown = cxTextEdit3KeyDown
      Width = 32
    end
    object cxLabel6: TcxLabel
      Left = 200
      Top = 55
      Caption = #1602#1610#1605#1578' '#1582#1585#1610#1583
      Transparent = True
    end
    object cxLabel7: TcxLabel
      Left = 202
      Top = 113
      Caption = #1583#1585#1589#1583' '#1587#1608#1583
      Transparent = True
    end
    object cxMaskEdit1: TcxMaskEdit
      Left = 287
      Top = 25
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaxLength = 0
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 0
      OnEnter = cxMaskEdit1Enter
      OnExit = cxMaskEdit1Exit
      OnKeyDown = cxTextEdit3KeyDown
      Width = 160
    end
    object cxMaskEdit2: TcxMaskEdit
      Left = 23
      Top = 53
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 5
      OnKeyDown = cxTextEdit3KeyDown
      Width = 160
    end
    object cxMaskEdit3: TcxMaskEdit
      Left = 23
      Top = 82
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 6
      OnKeyDown = cxTextEdit3KeyDown
      Width = 160
    end
    object cxButton7: TcxButton
      Left = 22
      Top = 24
      Width = 25
      Height = 24
      Caption = '...'
      TabOrder = 8
      TabStop = False
      OnClick = cxButton7Click
      OnKeyDown = cxTextEdit3KeyDown
    end
    object cxTextEdit5: TcxMaskEdit
      Left = 23
      Top = 110
      Properties.Alignment.Horz = taCenter
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 7
      OnKeyDown = cxTextEdit3KeyDown
      Width = 160
    end
    object cxComboBox8: TcxComboBox
      Left = 287
      Top = 82
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox8PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 2
      OnKeyDown = cxTextEdit3KeyDown
      Width = 160
    end
    object cxLabel9: TcxLabel
      Left = 494
      Top = 85
      Caption = #1575#1606#1576#1575#1585
      Transparent = True
    end
    object cxComboBox7: TcxComboBox
      Left = 287
      Top = 82
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox7PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 16
      Visible = False
      OnKeyDown = cxTextEdit3KeyDown
      Width = 60
    end
    object cxComboBox2: TcxComboBox
      Left = 287
      Top = 110
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox2PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 3
      OnKeyDown = cxTextEdit3KeyDown
      Width = 160
    end
    object cxLabel5: TcxLabel
      Left = 475
      Top = 112
      Caption = #1586#1610#1585' '#1711#1585#1608#1607
      Transparent = True
    end
    object cxComboBox3: TcxComboBox
      Left = 287
      Top = 110
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox3PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 18
      Visible = False
      OnKeyDown = cxTextEdit3KeyDown
      Width = 59
    end
  end
  inherited cxButton2: TcxButton [3]
    Left = 52
    Top = 244
    TabOrder = 0
    OnClick = cxButton2Click
    OnKeyDown = cxTextEdit3KeyDown
  end
  inherited cxButton3: TcxButton [4]
    Left = 156
    Top = 244
    TabOrder = 2
    OnClick = cxButton3Click
    OnKeyDown = cxTextEdit3KeyDown
  end
  inherited cxButton4: TcxButton [5]
    Left = 260
    Top = 244
    TabOrder = 3
    OnClick = cxButton4Click
    OnKeyDown = cxTextEdit3KeyDown
  end
  inherited cxButton5: TcxButton [6]
    Left = 364
    Top = 244
    TabOrder = 4
    OnClick = cxButton5Click
    OnKeyDown = cxTextEdit3KeyDown
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 329
    Width = 530
    Height = 270
    Align = alBottom
    TabOrder = 6
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnKeyDown = cxTextEdit3KeyDown
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
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        Visible = False
        Options.Focusing = False
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #1583#1585#1589#1583
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 40
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = #1602#1610#1605#1578' '#1601#1585#1608#1588
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 85
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = #1602#1610#1605#1578' '#1582#1585#1610#1583
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 85
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #1608#1575#1581#1583
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 60
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #1606#1575#1605' '#1705#1575#1604#1575
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 160
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #1705#1583' '#1705#1575#1604#1575
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 80
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Alignment = alTopRight
    Caption = #1605#1608#1580#1608#1583#1610' '#1576#1585' '#1575#1587#1575#1587' '#1705#1575#1604#1575' '#1608' '#1575#1606#1576#1575#1585' '#1587#1591#1581' 3'
    TabOrder = 8
    Height = 89
    Width = 530
    object cxMaskEdit4: TcxMaskEdit
      Left = 300
      Top = 24
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaxLength = 0
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 0
      OnEnter = cxMaskEdit1Enter
      OnExit = cxMaskEdit1Exit
      OnKeyDown = cxTextEdit3KeyDown
      OnKeyPress = cxMaskEdit4KeyPress
      Width = 150
    end
    object cxLabel8: TcxLabel
      Left = 223
      Top = 27
      Caption = #1575#1606#1576#1575#1585
      Transparent = True
    end
    object cxMaskEdit5: TcxMaskEdit
      Left = 300
      Top = 53
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaxLength = 0
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 2
      OnEnter = cxMaskEdit1Enter
      OnExit = cxMaskEdit1Exit
      OnKeyDown = cxTextEdit3KeyDown
      OnKeyPress = cxMaskEdit5KeyPress
      Width = 150
    end
    object cxButton9: TcxButton
      Left = 273
      Top = 23
      Width = 25
      Height = 24
      Hint = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' '#1575#1606#1576#1575#1585' '#1587#1591#1581' 3'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TabStop = False
      OnClick = cxButton9Click
      OnKeyDown = cxTextEdit3KeyDown
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
    object cxButton10: TcxButton
      Left = 273
      Top = 52
      Width = 25
      Height = 24
      Hint = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' '#1575#1606#1576#1575#1585' '#1587#1591#1581' 3'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      TabStop = False
      OnClick = cxButton10Click
      OnKeyDown = cxTextEdit3KeyDown
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
    object cxComboBox5: TcxComboBox
      Left = 58
      Top = 26
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox5PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 5
      OnKeyDown = cxTextEdit3KeyDown
      OnKeyPress = cxComboBox5KeyPress
      Width = 150
    end
    object cxComboBox6: TcxComboBox
      Left = 58
      Top = 26
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 6
      Visible = False
      OnKeyDown = cxTextEdit3KeyDown
      Width = 39
    end
    object cxButton11: TcxButton
      Left = 31
      Top = 25
      Width = 25
      Height = 24
      Hint = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' '#1575#1606#1576#1575#1585' '#1587#1591#1581' 3'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      TabStop = False
      OnClick = cxButton11Click
      OnKeyDown = cxTextEdit3KeyDown
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
    object cxLabel10: TcxLabel
      Left = 467
      Top = 26
      Caption = #1705#1583' '#1705#1575#1604#1575
      Transparent = True
    end
    object cxLabel11: TcxLabel
      Left = 464
      Top = 55
      Caption = #1606#1575#1605' '#1705#1575#1604#1575
      Transparent = True
    end
    object cxCheckBox1: TcxCheckBox
      Left = 61
      Top = 53
      Caption = #1593#1583#1605' '#1606#1605#1575#1610#1588' '#1605#1602#1575#1583#1610#1585' '#1589#1601#1585
      Properties.Alignment = taRightJustify
      TabOrder = 10
      Transparent = True
      Width = 148
    end
  end
  object cxImage1: TcxImage
    Left = 1
    Top = 283
    TabStop = False
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 9
    Height = 40
    Width = 528
  end
  object cxLabel12: TcxLabel
    Left = 468
    Top = 294
    Caption = #1705#1583' '#1705#1575#1604#1575
    Transparent = True
  end
  object cxMaskEdit6: TcxMaskEdit
    Left = 304
    Top = 292
    Properties.Alignment.Horz = taRightJustify
    Properties.IgnoreMaskBlank = True
    Properties.MaxLength = 0
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 11
    OnEnter = cxMaskEdit1Enter
    OnExit = cxMaskEdit1Exit
    OnKeyDown = cxTextEdit3KeyDown
    OnKeyPress = cxMaskEdit6KeyPress
    Width = 150
  end
  object cxMaskEdit7: TcxMaskEdit
    Left = 59
    Top = 292
    Properties.Alignment.Horz = taRightJustify
    Properties.IgnoreMaskBlank = True
    Properties.MaxLength = 0
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 12
    OnEnter = cxMaskEdit1Enter
    OnExit = cxMaskEdit1Exit
    OnKeyDown = cxTextEdit3KeyDown
    OnKeyPress = cxMaskEdit7KeyPress
    Width = 150
  end
  object cxLabel13: TcxLabel
    Left = 223
    Top = 294
    Caption = #1606#1575#1605' '#1705#1575#1604#1575
    Transparent = True
  end
  object cxButton8: TcxButton
    Left = 32
    Top = 291
    Width = 25
    Height = 24
    Hint = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' '#1575#1606#1576#1575#1585' '#1587#1591#1581' 3'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
    TabStop = False
    OnClick = cxButton8Click
    OnKeyDown = cxTextEdit3KeyDown
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
  object cxButton12: TcxButton
    Left = 277
    Top = 291
    Width = 25
    Height = 24
    Hint = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' '#1575#1606#1576#1575#1585' '#1587#1591#1581' 3'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
    TabStop = False
    OnClick = cxButton12Click
    OnKeyDown = cxTextEdit3KeyDown
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
