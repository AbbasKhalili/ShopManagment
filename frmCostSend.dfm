inherited CostSend: TCostSend
  Left = 221
  Top = 112
  Caption = #1662#1585#1583#1575#1582#1578' '#1606#1602#1583#1610
  ClientHeight = 484
  ClientWidth = 546
  OldCreateOrder = True
  OnClose = FormClose
  OnKeyDown = cxTextEdit1KeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object cxImage1: TcxImage [0]
    Left = 0
    Top = 215
    TabStop = False
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 11
    OnKeyDown = cxTextEdit1KeyDown
    Height = 40
    Width = 546
  end
  inherited cxButton6: TcxButton [1]
    Left = 460
    Top = 177
    TabOrder = 5
    TabStop = False
    Visible = False
  end
  inherited cxButton1: TcxButton [2]
    TabOrder = 9
  end
  inherited cxGroupBox1: TcxGroupBox [3]
    Caption = ' '
    Enabled = False
    Height = 172
    Width = 546
    object cxMaskEdit2: TcxMaskEdit
      Left = 18
      Top = 24
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 1
      OnKeyDown = cxTextEdit1KeyDown
      Width = 160
    end
    object cxComboBox3: TcxComboBox
      Left = 18
      Top = 53
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox3PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 2
      OnKeyDown = cxTextEdit1KeyDown
      Width = 160
    end
    object cxLabel8: TcxLabel
      Left = 189
      Top = 55
      Caption = #1583#1585#1610#1575#1601#1578' '#1705#1606#1606#1583#1607
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 233
      Top = 26
      Caption = #1605#1576#1604#1594
      Transparent = True
    end
    object cxTextEdit1: TcxTextEdit
      Left = 291
      Top = 24
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 7
      OnKeyDown = cxTextEdit1KeyDown
      Width = 160
    end
    object cxMaskEdit1: TcxMaskEdit
      Left = 291
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
      TabOrder = 0
      OnExit = cxMaskEdit1Exit
      OnKeyDown = cxTextEdit1KeyDown
      Width = 160
    end
    object cxLabel2: TcxLabel
      Left = 460
      Top = 54
      Caption = #1578#1575#1585#1610#1582' '#1662#1585#1583#1575#1582#1578
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 473
      Top = 25
      Caption = #1705#1583' '#1662#1585#1583#1575#1582#1578
      Transparent = True
    end
    object cxComboBox1: TcxComboBox
      Left = 58
      Top = 53
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox3PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 10
      Visible = False
      Width = 27
    end
    object cxButton7: TcxButton
      Left = 17
      Top = 52
      Width = 25
      Height = 24
      Caption = '...'
      TabOrder = 4
      TabStop = False
      Visible = False
      OnClick = cxButton7Click
      OnKeyDown = cxTextEdit1KeyDown
    end
    object cxMemo1: TcxMemo
      Left = 18
      Top = 100
      Properties.Alignment = taLeftJustify
      TabOrder = 3
      OnKeyDown = cxTextEdit1KeyDown
      Height = 56
      Width = 510
    end
    object cxLabel4: TcxLabel
      Left = 479
      Top = 80
      Caption = #1578#1608#1590#1610#1581#1575#1578
      Transparent = True
    end
  end
  inherited cxButton2: TcxButton [4]
    Left = 64
    Top = 177
    TabOrder = 0
    OnClick = cxButton2Click
    OnKeyDown = cxTextEdit1KeyDown
  end
  inherited cxButton3: TcxButton [5]
    Left = 168
    Top = 177
    TabOrder = 2
    OnClick = cxButton3Click
    OnKeyDown = cxTextEdit1KeyDown
  end
  inherited cxButton4: TcxButton [6]
    Left = 272
    Top = 177
    TabOrder = 3
    OnClick = cxButton4Click
    OnKeyDown = cxTextEdit1KeyDown
  end
  inherited cxButton5: TcxButton [7]
    Left = 376
    Top = 177
    TabOrder = 4
    OnClick = cxButton5Click
    OnKeyDown = cxTextEdit1KeyDown
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 261
    Width = 546
    Height = 223
    Align = alBottom
    TabOrder = 8
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
        Options.Grouping = False
        Width = 170
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #1601#1585#1608#1588#1606#1583#1607
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 150
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
        Width = 105
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #1578#1575#1585#1610#1582' '#1662#1585#1583#1575#1582#1578
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 100
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
        Options.Grouping = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxLabel12: TcxLabel
    Left = 442
    Top = 226
    Caption = #1578#1575#1585#1610#1582' '#1662#1585#1583#1575#1582#1578
    Transparent = True
  end
  object cxMaskEdit6: TcxMaskEdit
    Left = 284
    Top = 224
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
    Width = 150
  end
  object cxButton12: TcxButton
    Left = 255
    Top = 223
    Width = 25
    Height = 24
    Hint = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1578#1575#1585#1610#1582' '#1662#1585#1583#1575#1582#1578' '#1608#1575#1585#1583' '#1588#1583#1607
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
end
