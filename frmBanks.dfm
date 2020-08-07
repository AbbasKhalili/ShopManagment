inherited Banks: TBanks
  Left = 228
  Top = 116
  Caption = #1605#1593#1585#1601#1610' '#1576#1575#1606#1705' '#1607#1575
  ClientHeight = 337
  ClientWidth = 503
  OldCreateOrder = True
  OnClose = FormClose
  OnKeyDown = cxMaskEdit1KeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  inherited cxButton6: TcxButton [0]
    Left = 411
    Top = 101
    TabOrder = 7
    TabStop = False
    Visible = False
  end
  inherited cxButton1: TcxButton [1]
    TabOrder = 5
  end
  inherited cxGroupBox1: TcxGroupBox [2]
    Caption = ' '
    TabOrder = 6
    Height = 95
    Width = 503
    object cxTextEdit2: TcxTextEdit
      Left = 18
      Top = 27
      Properties.Alignment.Horz = taRightJustify
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 1
      OnKeyDown = cxMaskEdit1KeyDown
      Width = 160
    end
    object cxLabel3: TcxLabel
      Left = 192
      Top = 29
      Caption = #1606#1575#1605' '#1588#1593#1576#1607
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 213
      Top = 59
      Caption = #1570#1583#1585#1587
      Transparent = True
    end
    object cxTextEdit1: TcxTextEdit
      Left = 273
      Top = 56
      Properties.Alignment.Horz = taRightJustify
      StyleFocused.Color = 15980543
      StyleFocused.TextColor = 10116878
      TabOrder = 0
      OnKeyDown = cxMaskEdit1KeyDown
      Width = 160
    end
    object cxMaskEdit1: TcxMaskEdit
      Left = 273
      Top = 27
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      Properties.ReadOnly = True
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 5
      OnKeyDown = cxMaskEdit1KeyDown
      Width = 160
    end
    object cxLabel1: TcxLabel
      Left = 449
      Top = 29
      Caption = #1705#1583' '#1576#1575#1606#1705
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 446
      Top = 58
      Caption = #1606#1575#1605' '#1576#1575#1606#1705
      Transparent = True
    end
    object cxTextEdit3: TcxTextEdit
      Left = 18
      Top = 56
      Properties.Alignment.Horz = taRightJustify
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 2
      OnKeyDown = cxMaskEdit1KeyDown
      Width = 160
    end
  end
  inherited cxButton2: TcxButton [3]
    Left = 43
    Top = 101
    TabOrder = 0
    OnClick = cxButton2Click
    OnKeyDown = cxMaskEdit1KeyDown
  end
  inherited cxButton3: TcxButton [4]
    Left = 147
    Top = 101
    Default = True
    TabOrder = 1
    OnClick = cxButton3Click
    OnKeyDown = cxMaskEdit1KeyDown
  end
  inherited cxButton4: TcxButton [5]
    Left = 251
    Top = 101
    TabOrder = 2
    OnClick = cxButton4Click
    OnKeyDown = cxMaskEdit1KeyDown
  end
  inherited cxButton5: TcxButton [6]
    Left = 355
    Top = 101
    TabOrder = 3
    OnClick = cxButton5Click
    OnKeyDown = cxMaskEdit1KeyDown
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 140
    Width = 503
    Height = 197
    Align = alBottom
    TabOrder = 4
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
        Caption = #1570#1583#1585#1587
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
        Width = 220
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #1606#1575#1605' '#1588#1593#1576#1607
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
        Width = 130
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #1606#1575#1605' '#1576#1575#1606#1705
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
        Width = 130
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
end
