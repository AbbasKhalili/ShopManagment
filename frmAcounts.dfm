inherited Acounts: TAcounts
  Left = 226
  Top = 123
  Caption = #1605#1593#1585#1601#1610' '#1581#1587#1575#1576' '#1607#1575
  ClientHeight = 339
  ClientWidth = 535
  OldCreateOrder = True
  OnClose = FormClose
  OnKeyDown = cxMaskEdit1KeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  inherited cxButton6: TcxButton [0]
    Left = 418
    Top = 100
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
    Height = 94
    Width = 535
    object cxComboBox1: TcxComboBox
      Left = 15
      Top = 55
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox1PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 2
      OnKeyDown = cxMaskEdit1KeyDown
      Width = 160
    end
    object cxTextEdit2: TcxTextEdit
      Left = 15
      Top = 26
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 1
      OnKeyDown = cxMaskEdit1KeyDown
      Width = 160
    end
    object cxLabel3: TcxLabel
      Left = 187
      Top = 28
      Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 220
      Top = 58
      Caption = #1606#1575#1605' '#1576#1575#1606#1705
      Transparent = True
    end
    object cxTextEdit1: TcxTextEdit
      Left = 292
      Top = 55
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 0
      OnKeyDown = cxMaskEdit1KeyDown
      Width = 160
    end
    object cxMaskEdit1: TcxMaskEdit
      Left = 292
      Top = 26
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
      Left = 467
      Top = 28
      Caption = #1705#1583' '#1581#1587#1575#1576
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 464
      Top = 57
      Caption = #1606#1575#1605' '#1581#1587#1575#1576
      Transparent = True
    end
    object cxComboBox2: TcxComboBox
      Left = 7
      Top = 55
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox2PropertiesEditValueChanged
      StyleFocused.Color = 14985471
      StyleFocused.TextColor = 10116878
      TabOrder = 8
      Visible = False
      Width = 32
    end
  end
  inherited cxButton2: TcxButton [3]
    Left = 57
    Top = 100
    TabOrder = 0
    OnClick = cxButton2Click
    OnKeyDown = cxMaskEdit1KeyDown
  end
  inherited cxButton3: TcxButton [4]
    Left = 161
    Top = 100
    Default = True
    TabOrder = 1
    OnClick = cxButton3Click
    OnKeyDown = cxMaskEdit1KeyDown
  end
  inherited cxButton4: TcxButton [5]
    Left = 265
    Top = 100
    TabOrder = 2
    OnClick = cxButton4Click
    OnKeyDown = cxMaskEdit1KeyDown
  end
  inherited cxButton5: TcxButton [6]
    Left = 369
    Top = 100
    TabOrder = 3
    OnClick = cxButton5Click
    OnKeyDown = cxMaskEdit1KeyDown
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 142
    Width = 535
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
        Width = 170
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
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
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #1606#1575#1605' '#1581#1587#1575#1576
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
end
