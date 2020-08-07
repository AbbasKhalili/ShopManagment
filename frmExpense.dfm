inherited Expense: TExpense
  Left = 220
  Top = 117
  Caption = #1607#1586#1610#1606#1607' '#1607#1575
  ClientHeight = 472
  ClientWidth = 481
  OldCreateOrder = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object cxImage1: TcxImage [0]
    Left = 1
    Top = 196
    TabStop = False
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 11
    Height = 40
    Width = 479
  end
  inherited cxButton6: TcxButton [1]
    Left = 401
    Top = 158
    TabOrder = 4
    TabStop = False
    Visible = False
    OnKeyDown = cxMaskEdit1KeyDown
  end
  inherited cxButton1: TcxButton [2]
    TabOrder = 6
  end
  inherited cxGroupBox1: TcxGroupBox [3]
    Caption = ' '
    Enabled = False
    TabOrder = 7
    Height = 150
    Width = 481
    object cxMaskEdit1: TcxMaskEdit
      Left = 280
      Top = 24
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
      OnKeyDown = cxMaskEdit1KeyDown
      Width = 150
    end
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
      OnKeyDown = cxMaskEdit1KeyDown
      Width = 150
    end
    object cxLabel3: TcxLabel
      Left = 175
      Top = 26
      Caption = #1605#1576#1604#1594
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 434
      Top = 26
      Caption = #1578#1575#1585#1610#1582
      Transparent = True
    end
    object cxMemo1: TcxMemo
      Left = 18
      Top = 74
      Properties.Alignment = taLeftJustify
      TabOrder = 4
      OnKeyDown = cxMaskEdit1KeyDown
      Height = 58
      Width = 444
    end
    object cxLabel1: TcxLabel
      Left = 400
      Top = 53
      Caption = #1588#1585#1581' '#1607#1586#1610#1606#1607
      Transparent = True
    end
  end
  inherited cxButton2: TcxButton [4]
    Left = 33
    Top = 158
    TabOrder = 0
    OnClick = cxButton2Click
    OnKeyDown = cxMaskEdit1KeyDown
  end
  inherited cxButton3: TcxButton [5]
    Left = 137
    Top = 158
    TabOrder = 1
    OnClick = cxButton3Click
    OnKeyDown = cxMaskEdit1KeyDown
  end
  inherited cxButton4: TcxButton [6]
    Left = 241
    Top = 158
    TabOrder = 2
    OnClick = cxButton4Click
    OnKeyDown = cxMaskEdit1KeyDown
  end
  inherited cxButton5: TcxButton [7]
    Left = 345
    Top = 158
    TabOrder = 3
    OnClick = cxButton5Click
    OnKeyDown = cxMaskEdit1KeyDown
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 241
    Width = 481
    Height = 231
    Align = alBottom
    TabOrder = 5
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnKeyDown = cxMaskEdit1KeyDown
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
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
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
        Width = 280
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
        Caption = #1578#1575#1585#1610#1582
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
        Options.Focusing = False
        Options.Grouping = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxMaskEdit6: TcxMaskEdit
    Left = 244
    Top = 205
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
    OnKeyDown = cxMaskEdit1KeyDown
    OnKeyPress = cxMaskEdit6KeyPress
    Width = 150
  end
  object cxLabel12: TcxLabel
    Left = 401
    Top = 207
    Caption = #1578#1575#1585#1610#1582
    Transparent = True
  end
  object cxButton12: TcxButton
    Left = 215
    Top = 204
    Width = 25
    Height = 24
    Hint = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1578#1575#1585#1610#1582' '#1583#1585' '#1607#1586#1610#1606#1607' '#1607#1575
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
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
