inherited DefineUser: TDefineUser
  Left = 237
  Top = 370
  Caption = #1578#1593#1585#1610#1601' '#1705#1575#1585#1576#1585
  ClientHeight = 383
  ClientWidth = 457
  OldCreateOrder = True
  OnKeyDown = cxTextEdit3KeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  inherited cxButton6: TcxButton [0]
    Left = 376
    Top = 129
    TabOrder = 7
    TabStop = False
    Visible = False
  end
  inherited cxButton1: TcxButton [1]
    TabOrder = 6
  end
  inherited cxGroupBox1: TcxGroupBox [2]
    Caption = ' '
    Height = 122
    Width = 457
    object cxLabel1: TcxLabel
      Left = 374
      Top = 27
      Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 375
      Top = 57
      Caption = #1705#1604#1605#1607' '#1593#1576#1608#1585
      Transparent = True
    end
    object cxTextEdit1: TcxTextEdit
      Left = 224
      Top = 55
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecLowerCase
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '#'
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 1
      OnKeyDown = cxTextEdit3KeyDown
      Width = 120
    end
    object cxTextEdit3: TcxTextEdit
      Left = 224
      Top = 25
      Properties.Alignment.Horz = taRightJustify
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 0
      OnKeyDown = cxTextEdit3KeyDown
      Width = 120
    end
    object cxLabel3: TcxLabel
      Left = 347
      Top = 87
      Caption = #1578#1705#1585#1575#1585' '#1705#1604#1605#1607' '#1593#1576#1608#1585
      Transparent = True
    end
    object cxTextEdit2: TcxTextEdit
      Left = 224
      Top = 85
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecLowerCase
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '#'
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 2
      OnKeyDown = cxTextEdit3KeyDown
      Width = 120
    end
    object cxComboBox1: TcxComboBox
      Left = 27
      Top = 25
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #1605#1583#1610#1585
        #1581#1587#1575#1576#1583#1575#1585
        #1589#1606#1583#1608#1602#1583#1575#1585)
      Properties.PopupAlignment = taRightJustify
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 3
      OnKeyDown = cxTextEdit3KeyDown
      Width = 120
    end
    object cxLabel4: TcxLabel
      Left = 153
      Top = 27
      Caption = #1606#1608#1593' '#1705#1575#1585#1576#1585
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 161
      Top = 56
      Caption = #1608#1590#1593#1610#1578
      Transparent = True
    end
    object cxComboBox2: TcxComboBox
      Left = 27
      Top = 54
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #1594#1610#1585#1601#1593#1575#1604
        #1601#1593#1575#1604)
      Properties.PopupAlignment = taRightJustify
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 4
      OnKeyDown = cxTextEdit3KeyDown
      Width = 120
    end
  end
  inherited cxButton2: TcxButton [3]
    Left = 19
    Top = 129
    TabOrder = 0
    OnClick = cxButton2Click
    OnKeyDown = cxTextEdit3KeyDown
  end
  inherited cxButton3: TcxButton [4]
    Left = 123
    Top = 129
    Default = True
    TabOrder = 2
    OnClick = cxButton3Click
    OnKeyDown = cxTextEdit3KeyDown
  end
  inherited cxButton4: TcxButton [5]
    Left = 227
    Top = 129
    TabOrder = 3
    OnClick = cxButton4Click
    OnKeyDown = cxTextEdit3KeyDown
  end
  inherited cxButton5: TcxButton [6]
    Left = 331
    Top = 129
    TabOrder = 4
    OnClick = cxButton5Click
    OnKeyDown = cxTextEdit3KeyDown
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 168
    Width = 457
    Height = 215
    Align = alBottom
    TabOrder = 5
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
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Visible = False
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
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
        Width = 105
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #1606#1608#1593' '#1705#1575#1585#1576#1585
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 145
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 188
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
        Width = 100
        IsCaptionAssigned = True
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
