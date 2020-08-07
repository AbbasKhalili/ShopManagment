inherited Sellers: TSellers
  Left = 240
  Top = 112
  Caption = #1605#1593#1585#1601#1610' '#1601#1585#1608#1588#1606#1583#1711#1575#1606
  ClientHeight = 447
  ClientWidth = 546
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  inherited cxButton6: TcxButton [0]
    Left = 440
    Top = 210
    TabOrder = 8
    TabStop = False
    Visible = False
  end
  inherited cxButton1: TcxButton [1]
    TabOrder = 7
  end
  inherited cxGroupBox1: TcxGroupBox [2]
    Height = 105
    Width = 546
    object cxTextEdit2: TcxTextEdit
      Left = 33
      Top = 35
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 1
      Width = 160
    end
    object cxTextEdit3: TcxTextEdit
      Left = 33
      Top = 64
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 2
      Width = 160
    end
    object cxLabel4: TcxLabel
      Left = 204
      Top = 65
      Caption = #1570#1583#1585#1587
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 208
      Top = 35
      Caption = #1578#1604#1601#1606
      Transparent = True
    end
    object cxMaskEdit1: TcxMaskEdit
      Left = 284
      Top = 35
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
      Width = 160
    end
    object cxTextEdit1: TcxTextEdit
      Left = 284
      Top = 64
      StyleFocused.Color = 15980543
      StyleFocused.TextColor = 10116878
      TabOrder = 0
      Width = 160
    end
    object cxLabel2: TcxLabel
      Left = 453
      Top = 64
      Caption = #1606#1575#1605' '#1601#1585#1608#1588#1606#1583#1607
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 456
      Top = 35
      Caption = #1705#1583' '#1601#1585#1608#1588#1606#1583#1607
      Transparent = True
    end
  end
  inherited cxButton2: TcxButton [3]
    Left = 67
    Top = 205
    TabOrder = 0
    OnClick = cxButton2Click
  end
  inherited cxButton3: TcxButton [4]
    Left = 171
    Top = 205
    Default = True
    OnClick = cxButton3Click
  end
  inherited cxButton4: TcxButton [5]
    Left = 275
    Top = 205
    OnClick = cxButton4Click
  end
  inherited cxButton5: TcxButton [6]
    Left = 379
    Top = 205
    OnClick = cxButton5Click
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 105
    Align = alTop
    Caption = #1578#1608#1590#1610#1581#1575#1578
    TabOrder = 2
    Height = 93
    Width = 546
    object cxMemo1: TcxMemo
      Left = 2
      Top = 19
      Align = alClient
      Properties.Alignment = taLeftJustify
      TabOrder = 0
      Height = 72
      Width = 542
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 246
    Width = 546
    Height = 201
    Align = alBottom
    TabOrder = 6
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
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #1570#1583#1585#1587
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Grouping = False
        Width = 246
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #1578#1604#1601#1606
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Grouping = False
        Width = 140
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #1606#1575#1605' '#1601#1585#1608#1588#1606#1583#1607
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Grouping = False
        Width = 140
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
end
