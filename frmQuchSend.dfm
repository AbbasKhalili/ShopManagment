inherited QuchSend: TQuchSend
  Left = 221
  Top = 117
  Caption = #1670#1705' '#1607#1575#1610' '#1662#1585#1583#1575#1582#1578#1610
  ClientHeight = 520
  ClientWidth = 554
  OldCreateOrder = True
  OnClose = FormClose
  OnKeyDown = cxTextEdit1KeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object cxImage1: TcxImage [0]
    Left = 0
    Top = 248
    TabStop = False
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 13
    OnKeyDown = cxTextEdit1KeyDown
    Height = 40
    Width = 552
  end
  inherited cxButton6: TcxButton [1]
    Left = 446
    Top = 210
    TabOrder = 5
    TabStop = False
    Visible = False
  end
  inherited cxButton1: TcxButton [2]
    TabOrder = 11
  end
  inherited cxGroupBox1: TcxGroupBox [3]
    Caption = ' '
    Enabled = False
    Height = 203
    Width = 554
    object cxButton7: TcxButton
      Left = 13
      Top = -2
      Width = 25
      Height = 24
      Caption = '...'
      TabOrder = 9
      TabStop = False
      Visible = False
      OnKeyDown = cxTextEdit1KeyDown
    end
    object cxTextEdit2: TcxTextEdit
      Left = 41
      Top = -1
      TabStop = False
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 6
      Visible = False
      OnKeyDown = cxTextEdit1KeyDown
      Width = 132
    end
    object cxComboBox3: TcxComboBox
      Left = 20
      Top = 83
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox3PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 5
      OnKeyDown = cxTextEdit1KeyDown
      Width = 159
    end
    object cxComboBox1: TcxComboBox
      Left = 47
      Top = 54
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox1PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 4
      OnKeyDown = cxTextEdit1KeyDown
      Width = 132
    end
    object cxLabel4: TcxLabel
      Left = 212
      Top = 53
      Caption = #1606#1575#1605' '#1576#1575#1606#1705
      Transparent = True
    end
    object cxLabel7: TcxLabel
      Left = 181
      Top = -2
      Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      Transparent = True
      Visible = False
    end
    object cxLabel8: TcxLabel
      Left = 188
      Top = 84
      Caption = #1583#1585#1610#1575#1601#1578' '#1705#1606#1606#1583#1607
      Transparent = True
    end
    object cxComboBox2: TcxComboBox
      Left = 20
      Top = 25
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        #1662#1575#1587' '#1606#1588#1583#1607
        #1662#1575#1587' '#1588#1583#1607
        #1576#1585#1711#1588#1578' '#1582#1608#1585#1583#1607)
      Properties.PopupAlignment = taRightJustify
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 3
      OnKeyDown = cxTextEdit1KeyDown
      Width = 160
    end
    object cxMaskEdit2: TcxMaskEdit
      Left = 290
      Top = 83
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 2
      OnKeyDown = cxTextEdit1KeyDown
      Width = 160
    end
    object cxMaskEdit1: TcxMaskEdit
      Left = 290
      Top = 54
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
      OnKeyDown = cxTextEdit1KeyDown
      Width = 160
    end
    object cxLabel1: TcxLabel
      Left = 465
      Top = 26
      Caption = #1588#1605#1575#1585#1607' '#1587#1585#1610#1575#1604
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 457
      Top = 53
      Caption = #1578#1575#1585#1610#1582' '#1587#1585' '#1585#1587#1610#1583
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 514
      Top = 84
      Caption = #1605#1576#1604#1594
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 219
      Top = 26
      Caption = #1608#1590#1593#1610#1578
      Transparent = True
    end
    object cxTextEdit1: TcxTextEdit
      Left = 290
      Top = 25
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 0
      OnKeyDown = cxTextEdit1KeyDown
      Width = 160
    end
    object cxComboBox4: TcxComboBox
      Left = 51
      Top = 54
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox1PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 18
      Visible = False
      Width = 30
    end
    object cxComboBox5: TcxComboBox
      Left = 61
      Top = 81
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox3PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 19
      Visible = False
      Width = 30
    end
    object cxButton8: TcxButton
      Left = 19
      Top = 82
      Width = 25
      Height = 24
      Caption = '...'
      TabOrder = 10
      TabStop = False
      Visible = False
      OnClick = cxButton8Click
      OnKeyDown = cxTextEdit1KeyDown
    end
    object cxButton9: TcxButton
      Left = 19
      Top = 53
      Width = 25
      Height = 24
      Caption = '...'
      TabOrder = 8
      TabStop = False
      OnClick = cxButton9Click
      OnKeyDown = cxTextEdit1KeyDown
    end
    object cxMemo1: TcxMemo
      Left = 20
      Top = 129
      Properties.Alignment = taLeftJustify
      TabOrder = 7
      OnKeyDown = cxTextEdit1KeyDown
      Height = 56
      Width = 517
    end
    object cxLabel5: TcxLabel
      Left = 489
      Top = 109
      Caption = #1578#1608#1590#1610#1581#1575#1578
      Transparent = True
    end
  end
  inherited cxButton2: TcxButton [4]
    Left = 67
    Top = 210
    TabOrder = 0
    OnClick = cxButton2Click
    OnKeyDown = cxTextEdit1KeyDown
  end
  inherited cxButton3: TcxButton [5]
    Left = 171
    Top = 210
    TabOrder = 2
    OnClick = cxButton3Click
    OnKeyDown = cxTextEdit1KeyDown
  end
  inherited cxButton4: TcxButton [6]
    Left = 275
    Top = 210
    TabOrder = 3
    OnClick = cxButton4Click
    OnKeyDown = cxTextEdit1KeyDown
  end
  inherited cxButton5: TcxButton [7]
    Left = 379
    Top = 210
    TabOrder = 4
    OnClick = cxButton5Click
    OnKeyDown = cxTextEdit1KeyDown
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 294
    Width = 554
    Height = 226
    Align = alBottom
    TabOrder = 10
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnKeyDown = cxTextEdit1KeyDown
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
      object cxGrid1DBTableView1Column8: TcxGridDBColumn
        Caption = #1578#1608#1590#1610#1581#1575#1578
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 65
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = #1608#1590#1593#1610#1578
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 79
      end
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        Caption = #1587#1585#1610#1575#1604
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 70
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = #1583#1585#1610#1575#1601#1578' '#1705#1606#1606#1583#1607
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 75
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #1606#1575#1605' '#1576#1575#1606#1705
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 65
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #1605#1576#1604#1594
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 90
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #1578#1575#1585#1610#1582' '#1587#1585' '#1585#1587#1610#1583
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
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
        Options.Grouping = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxMaskEdit6: TcxMaskEdit
    Left = 308
    Top = 257
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
    TabOrder = 6
    OnKeyDown = cxTextEdit1KeyDown
    OnKeyPress = cxMaskEdit6KeyPress
    Width = 130
  end
  object cxLabel12: TcxLabel
    Left = 443
    Top = 259
    Caption = #1578#1575#1585#1610#1582' '#1587#1585' '#1585#1587#1610#1583
    Transparent = True
  end
  object cxButton12: TcxButton
    Left = 279
    Top = 256
    Width = 25
    Height = 24
    Hint = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1578#1575#1585#1610#1582' '#1587#1585' '#1585#1587#1610#1583
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    TabStop = False
    OnClick = cxButton12Click
    OnKeyDown = cxTextEdit1KeyDown
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
    Left = 191
    Top = 259
    Caption = #1588#1605#1575#1585#1607' '#1587#1585#1610#1575#1604
    Transparent = True
  end
  object cxButton10: TcxButton
    Left = 28
    Top = 256
    Width = 25
    Height = 24
    Hint = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1588#1605#1575#1585#1607' '#1587#1585#1610#1575#1604
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    TabStop = False
    OnClick = cxButton10Click
    OnKeyDown = cxTextEdit1KeyDown
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
  object cxMaskEdit3: TcxMaskEdit
    Left = 57
    Top = 257
    Properties.Alignment.Horz = taRightJustify
    Properties.HideSelection = False
    Properties.IgnoreMaskBlank = True
    Properties.MaxLength = 0
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 8
    OnKeyDown = cxTextEdit1KeyDown
    OnKeyPress = cxMaskEdit3KeyPress
    Width = 130
  end
end
