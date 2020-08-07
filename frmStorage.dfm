inherited Storage: TStorage
  Left = 227
  Top = 118
  Caption = #1575#1606#1576#1575#1585
  ClientHeight = 581
  ClientWidth = 527
  OldCreateOrder = True
  OnClose = FormClose
  OnKeyDown = cxMaskEdit3KeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  inherited cxButton2: TcxButton [0]
    Left = -21
    Top = 311
    TabOrder = 5
    TabStop = False
    Visible = False
  end
  inherited cxButton6: TcxButton [1]
    Left = 397
    Top = 311
    TabStop = False
    Visible = False
  end
  inherited cxButton1: TcxButton [2]
    TabOrder = 4
  end
  inherited cxGroupBox1: TcxGroupBox [3]
    Alignment = alTopRight
    Caption = ' '
    TabOrder = 0
    Height = 305
    Width = 527
    object cxMaskEdit3: TcxMaskEdit
      Left = 268
      Top = 270
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 5
      OnKeyDown = cxMaskEdit3KeyDown
      Width = 150
    end
    object cxMaskEdit4: TcxMaskEdit
      Left = 13
      Top = 270
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 6
      Width = 150
    end
    object cxLabel1: TcxLabel
      Left = 201
      Top = 242
      Caption = #1605#1608#1580#1608#1583#1610
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 427
      Top = 272
      Caption = #1581#1583#1575#1602#1604' '#1605#1608#1580#1608#1583#1610
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 170
      Top = 272
      Caption = #1606#1602#1591#1607' '#1587#1601#1575#1585#1588
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 470
      Top = 30
      Caption = #1586#1610#1585' '#1711#1585#1608#1607
      Transparent = True
    end
    object cxComboBox2: TcxComboBox
      Left = 240
      Top = 28
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox2PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 0
      OnKeyDown = cxMaskEdit3KeyDown
      Width = 220
    end
    object cxComboBox3: TcxComboBox
      Left = 224
      Top = 27
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox3PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 12
      Visible = False
      Width = 57
    end
    object cxGrid1: TcxGrid
      Left = 13
      Top = 57
      Width = 497
      Height = 177
      TabOrder = 2
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnKeyDown = cxMaskEdit3KeyDown
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
          Caption = #1608#1575#1581#1583
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
          Options.Moving = False
          Width = 100
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
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
          Width = 273
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
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
          Width = 100
        end
        object cxGrid1DBTableView1Column5: TcxGridDBColumn
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
          Options.Moving = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxComboBox4: TcxComboBox
      Left = 236
      Top = 241
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox1PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 13
      Visible = False
      Width = 36
    end
    object cxComboBox1: TcxComboBox
      Left = 268
      Top = 241
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox1PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 3
      Width = 150
    end
    object cxLabel6: TcxLabel
      Left = 468
      Top = 242
      Caption = #1606#1575#1605' '#1575#1606#1576#1575#1585
      Transparent = True
    end
    object cxMaskEdit1: TcxMaskEdit
      Left = 17
      Top = 207
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      Properties.ReadOnly = True
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 7
      Visible = False
      Width = 61
    end
    object cxMaskEdit2: TcxMaskEdit
      Left = 13
      Top = 241
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaxLength = 0
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 4
      Width = 150
    end
    object cxMaskEdit5: TcxMaskEdit
      Left = 13
      Top = 27
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.OnChange = cxMaskEdit5PropertiesChange
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 1
      Width = 132
    end
    object cxLabel3: TcxLabel
      Left = 153
      Top = 30
      Caption = #1705#1583' '#1705#1575#1604#1575
      Transparent = True
    end
  end
  inherited cxButton3: TcxButton [4]
    Left = 108
    Top = 311
    Default = True
    TabOrder = 1
    OnClick = cxButton3Click
    OnKeyDown = cxMaskEdit3KeyDown
  end
  inherited cxButton4: TcxButton [5]
    Left = 212
    Top = 311
    TabOrder = 2
    OnClick = cxButton4Click
    OnKeyDown = cxMaskEdit3KeyDown
  end
  inherited cxButton5: TcxButton [6]
    Left = 316
    Top = 311
    TabOrder = 3
    OnClick = cxButton5Click
    OnKeyDown = cxMaskEdit3KeyDown
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 349
    Width = 527
    Height = 232
    Align = alBottom
    TabOrder = 7
    object cxGridDBTableView1: TcxGridDBTableView
      OnKeyDown = cxMaskEdit3KeyDown
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
      OnCellClick = cxGridDBTableView1CellClick
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = #1575#1591#1604#1575#1593#1575#1578#1610' '#1610#1575#1601#1578' '#1606#1588#1583
      OptionsView.GroupByBox = False
      object cxGridDBTableView1Column1: TcxGridDBColumn
        Caption = #1606#1602#1591#1607' '#1587#1601#1575#1585#1588
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Options.Moving = False
        Width = 85
      end
      object cxGridDBTableView1Column2: TcxGridDBColumn
        Caption = #1581#1583#1575#1602#1604' '#1605#1608#1580#1608#1583#1610
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Options.Moving = False
        Width = 87
      end
      object cxGridDBTableView1Column3: TcxGridDBColumn
        Caption = #1605#1608#1580#1608#1583#1610
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Options.Moving = False
        Width = 60
      end
      object cxGridDBTableView1Column7: TcxGridDBColumn
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
        Options.Moving = False
        Width = 70
      end
      object cxGridDBTableView1Column4: TcxGridDBColumn
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
        Options.Moving = False
        Width = 130
      end
      object cxGridDBTableView1Column5: TcxGridDBColumn
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
        Options.Moving = False
        Width = 80
        IsCaptionAssigned = True
      end
      object cxGridDBTableView1Column6: TcxGridDBColumn
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
        Options.Moving = False
        Width = 70
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
end
