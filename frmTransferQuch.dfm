object TransferQuch: TTransferQuch
  Left = 293
  Top = 141
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1575#1606#1578#1602#1575#1604' '#1670#1705#1607#1575#1610' '#1583#1585#1610#1575#1601#1578#1610
  ClientHeight = 385
  ClientWidth = 740
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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 740
    Height = 276
    Align = alTop
    TabOrder = 0
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
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBTableView1Column3
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = #1575#1591#1604#1575#1593#1575#1578#1610' '#1610#1575#1601#1578' '#1606#1588#1583
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column9: TcxGridDBColumn
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
        Options.Moving = False
        Width = 80
      end
      object cxGrid1DBTableView1Column8: TcxGridDBColumn
        Caption = #1576#1575#1606#1705
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
        Options.Moving = False
        Width = 80
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = #1705#1575#1585#1576#1585
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
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = #1662#1585#1583#1575#1582#1578' '#1705#1606#1606#1583#1607
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
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #1578#1575#1585#1610#1582' '#1583#1585#1610#1575#1601#1578
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
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #1605#1576#1604#1594' '#1670#1705
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
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #1578#1575#1585#1610#1582' '#1578#1585#1575#1705#1606#1588
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
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #1705#1583' '#1578#1585#1575#1705#1606#1588
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
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 272
    Top = 344
    Width = 100
    Height = 32
    Cancel = True
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 384
    Top = 344
    Width = 100
    Height = 32
    Caption = #1578#1575#1574#1610#1583
    Default = True
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 276
    Align = alTop
    Caption = #1575#1606#1578#1602#1575#1604' '#1576#1607'...'
    TabOrder = 3
    Height = 60
    Width = 740
    object cxComboBox1: TcxComboBox
      Left = 490
      Top = 28
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.IgnoreMaskBlank = True
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox1PropertiesEditValueChanged
      TabOrder = 0
      Width = 150
    end
    object cxComboBox2: TcxComboBox
      Left = 491
      Top = 30
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.IgnoreMaskBlank = True
      Properties.PopupAlignment = taRightJustify
      TabOrder = 1
      Visible = False
      Width = 33
    end
    object cxComboBox3: TcxComboBox
      Left = 254
      Top = 28
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.IgnoreMaskBlank = True
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox3PropertiesEditValueChanged
      TabOrder = 2
      Width = 150
    end
    object cxComboBox4: TcxComboBox
      Left = 258
      Top = 30
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.IgnoreMaskBlank = True
      Properties.PopupAlignment = taRightJustify
      TabOrder = 3
      Visible = False
      Width = 33
    end
    object cxComboBox5: TcxComboBox
      Left = 21
      Top = 28
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.IgnoreMaskBlank = True
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox5PropertiesEditValueChanged
      TabOrder = 4
      Width = 150
    end
    object cxComboBox6: TcxComboBox
      Left = 23
      Top = 30
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.IgnoreMaskBlank = True
      Properties.PopupAlignment = taRightJustify
      TabOrder = 5
      Visible = False
      Width = 33
    end
    object cxRadioButton1: TcxRadioButton
      Left = 643
      Top = 30
      Width = 75
      Height = 17
      Alignment = taLeftJustify
      Caption = #1589#1606#1583#1608#1602' '#1583#1575#1585
      TabOrder = 6
      Transparent = True
    end
    object cxRadioButton2: TcxRadioButton
      Left = 408
      Top = 30
      Width = 57
      Height = 17
      Alignment = taLeftJustify
      Caption = #1588#1582#1589
      TabOrder = 7
      Transparent = True
    end
    object cxRadioButton3: TcxRadioButton
      Left = 175
      Top = 30
      Width = 57
      Height = 17
      Alignment = taLeftJustify
      Caption = #1581#1587#1575#1576
      TabOrder = 8
      Transparent = True
    end
  end
end
