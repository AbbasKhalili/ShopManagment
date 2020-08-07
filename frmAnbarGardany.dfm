object AnbarGardany: TAnbarGardany
  Left = 240
  Top = 124
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1575#1606#1576#1575#1585' '#1711#1585#1583#1575#1606#1610
  ClientHeight = 671
  ClientWidth = 823
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnKeyDown = cxMaskEdit1KeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object cxGrid1: TcxGrid
    Left = 0
    Top = 37
    Width = 823
    Height = 250
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnKeyDown = cxGrid1DBTableView1KeyDown
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
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = #1575#1591#1604#1575#1593#1575#1578#1610' '#1610#1575#1601#1578' '#1606#1588#1583
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column10: TcxGridDBColumn
        Caption = #1608#1575#1581#1583
        DataBinding.FieldName = 'unitname'
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
      object cxGrid1DBTableView1Column9: TcxGridDBColumn
        Caption = #1602#1610#1605#1578' '#1601#1585#1608#1588
        DataBinding.FieldName = 'saleprice'
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
      object cxGrid1DBTableView1Column8: TcxGridDBColumn
        Caption = #1602#1610#1605#1578' '#1582#1585#1610#1583
        DataBinding.FieldName = 'buyprice'
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
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        Caption = #1705#1583' '#1705#1575#1604#1575
        DataBinding.FieldName = 'code'
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
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = #1606#1575#1605' '#1705#1575#1604#1575
        DataBinding.FieldName = 'NameKala'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 250
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = #1705#1583' '#1705#1575#1604#1575
        DataBinding.FieldName = 'CodeKala'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 110
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #1606#1575#1605' '#1587#1591#1581' 3'
        DataBinding.FieldName = 'S3Name'
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
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #1705#1583' '#1587#1591#1581' 3'
        DataBinding.FieldName = 'SN3'
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
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #1606#1575#1605' '#1587#1591#1581' 2'
        DataBinding.FieldName = 'S2Name'
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
        Caption = #1705#1583' '#1587#1591#1581' 2'
        DataBinding.FieldName = 'SN2'
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
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton3: TcxButton
    Left = 166
    Top = 291
    Width = 80
    Height = 30
    Hint = #1576#1585#1575#1610' '#1584#1582#1610#1585#1607' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1587#1578#1601#1575#1583#1607' '#1605#1610' '#1588#1608#1583
    Caption = #1579#1576#1578
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = cxButton3Click
    OnKeyDown = cxMaskEdit1KeyDown
    Layout = blGlyphRight
  end
  object cxMaskEdit1: TcxMaskEdit
    Left = 267
    Top = 296
    Properties.Alignment.Horz = taRightJustify
    Properties.IgnoreMaskBlank = True
    Properties.MaskKind = emkRegExprEx
    Properties.EditMask = '\d+'
    Properties.MaxLength = 0
    Properties.OnChange = cxMaskEdit1PropertiesChange
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 3
    OnKeyDown = cxMaskEdit1KeyDown
    Width = 87
  end
  object cxLabel1: TcxLabel
    Left = 357
    Top = 298
    Caption = #1605#1608#1580#1608#1583#1610' '#1588#1605#1575#1585#1588' '#1588#1583#1607
    Transparent = True
  end
  object cxButton5: TcxButton
    Left = 81
    Top = 291
    Width = 80
    Height = 30
    Hint = #1576#1585#1575#1610' '#1581#1584#1601' '#1575#1591#1604#1575#1593#1575#1578' '#1580#1575#1585#1610' '#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607' '#1583#1575#1585#1583
    Caption = #1581#1584#1601
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = cxButton5Click
    OnKeyDown = cxMaskEdit1KeyDown
    Layout = blGlyphRight
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 326
    Width = 823
    Height = 250
    TabOrder = 6
    object cxGridDBTableView1: TcxGridDBTableView
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
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = #1575#1591#1604#1575#1593#1575#1578#1610' '#1610#1575#1601#1578' '#1606#1588#1583
      OptionsView.GroupByBox = False
    end
    object cxGrid2DBTableView1: TcxGridDBTableView
      OnKeyDown = cxGrid2DBTableView1KeyDown
      NavigatorButtons.ConfirmDelete = False
      OnCellClick = cxGrid2DBTableView1CellClick
      DataController.DataSource = DataSource2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = #1575#1591#1604#1575#1593#1575#1578#1610' '#1610#1575#1601#1578' '#1606#1588#1583
      OptionsView.GroupByBox = False
      object cxGrid2DBTableView1Column10: TcxGridDBColumn
        Caption = #1588#1605#1575#1585#1588' '#1588#1583#1607
        DataBinding.FieldName = 'Counter'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 81
      end
      object cxGrid2DBTableView1Column9: TcxGridDBColumn
        Caption = #1602#1610#1605#1578' '#1601#1585#1608#1588
        DataBinding.FieldName = 'saleprice'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
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
      object cxGrid2DBTableView1Column8: TcxGridDBColumn
        Caption = #1602#1610#1605#1578' '#1582#1585#1610#1583
        DataBinding.FieldName = 'buyprice'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
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
      object cxGrid2DBTableView1Column7: TcxGridDBColumn
        Caption = #1705#1583' '#1705#1575#1604#1575
        DataBinding.FieldName = 'code'
        Visible = False
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
      end
      object cxGrid2DBTableView1Column6: TcxGridDBColumn
        Caption = #1606#1575#1605' '#1705#1575#1604#1575
        DataBinding.FieldName = 'NameKala'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 250
      end
      object cxGrid2DBTableView1Column5: TcxGridDBColumn
        Caption = #1705#1583' '#1705#1575#1604#1575
        DataBinding.FieldName = 'CodeKala'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
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
      object cxGrid2DBTableView1Column4: TcxGridDBColumn
        Caption = #1606#1575#1605' '#1587#1591#1581' 3'
        DataBinding.FieldName = 'S3Name'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
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
      object cxGrid2DBTableView1Column3: TcxGridDBColumn
        Caption = #1705#1583' '#1587#1591#1581' 3'
        DataBinding.FieldName = 'SN3'
        Visible = False
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
      end
      object cxGrid2DBTableView1Column2: TcxGridDBColumn
        Caption = #1606#1575#1605' '#1587#1591#1581' 2'
        DataBinding.FieldName = 'S2Name'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
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
      object cxGrid2DBTableView1Column1: TcxGridDBColumn
        Caption = #1705#1583' '#1587#1591#1581'2'
        DataBinding.FieldName = 'SN2'
        Visible = False
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
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
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 277
    Top = 632
    Width = 128
    Height = 30
    Hint = #1662#1587' '#1575#1586' '#1588#1605#1575#1585#1588' '#1705#1575#1604#1575#1607#1575' '#1606#1578#1610#1580#1607' '#1575#1606#1575#1576#1585#1711#1585#1583#1575#1606#1610' '#1585#1575' '#1606#1605#1575#1610#1588' '#1605#1610' '#1583#1607#1583
    Caption = #1606#1578#1610#1580#1607' '#1575#1606#1576#1575#1585' '#1711#1585#1583#1575#1606#1610
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    OnClick = cxButton1Click
    OnKeyDown = cxMaskEdit1KeyDown
    Layout = blGlyphRight
  end
  object cxButton2: TcxButton
    Left = 142
    Top = 632
    Width = 128
    Height = 30
    Hint = #1580#1607#1578' '#1575#1606#1580#1575#1605' '#1575#1606#1576#1575#1585#1711#1585#1583#1575#1606#1610' '#1580#1583#1610#1583' '#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607' '#1583#1575#1585#1583
    Caption = #1575#1606#1576#1575#1585' '#1711#1585#1583#1575#1606#1610' '#1580#1583#1610#1583
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = cxButton2Click
    OnKeyDown = cxMaskEdit1KeyDown
    Layout = blGlyphRight
  end
  object cxMaskEdit2: TcxMaskEdit
    Left = 546
    Top = 296
    Properties.Alignment.Horz = taRightJustify
    Properties.HideSelection = False
    Properties.IgnoreMaskBlank = True
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 1
    OnKeyDown = cxMaskEdit1KeyDown
    OnKeyPress = cxMaskEdit2KeyPress
    Width = 150
  end
  object cxLabel2: TcxLabel
    Left = 701
    Top = 299
    Caption = #1705#1583' '#1705#1575#1604#1575
    Transparent = True
  end
  object cxButton4: TcxButton
    Left = 520
    Top = 295
    Width = 25
    Height = 25
    Hint = #1580#1587#1578#1580#1608#1610' '#1705#1575#1604#1575
    TabOrder = 2
    OnClick = cxButton4Click
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
  end
  object cxButton6: TcxButton
    Left = 412
    Top = 632
    Width = 128
    Height = 30
    Hint = 
      #1576#1585#1575#1610' '#1588#1585#1608#1593' '#1583#1608#1585#1607' '#1580#1583#1610#1583' '#1575#1606#1576#1575#1585#1583#1575#1585#1610' '#1608' '#1575#1586' '#1576#1610#1606' '#1576#1585#1583#1606' '#1575#1582#1578#1604#1575#1601#1575#1578' '#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583 +
      #1607' '#1583#1575#1585#1583
    Caption = #1575#1589#1604#1575#1581' '#1605#1608#1580#1608#1583#1610
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
    OnClick = cxButton6Click
    OnKeyDown = cxMaskEdit1KeyDown
    Layout = blGlyphRight
  end
  object cxButton7: TcxButton
    Left = 548
    Top = 632
    Width = 128
    Height = 30
    Hint = #1662#1587' '#1575#1586' '#1575#1606#1580#1575#1605' '#1575#1606#1576#1575#1585#1711#1585#1583#1575#1606#1610' '#1605#1610' '#1578#1608#1575#1606#1610#1583' '#1570#1606' '#1585#1575' '#1576#1575#1610#1711#1575#1606#1610' '#1705#1606#1610#1583
    Caption = #1579#1576#1578' '#1575#1606#1576#1575#1585' '#1711#1585#1583#1575#1606#1610
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
    OnClick = cxButton7Click
    OnKeyDown = cxMaskEdit1KeyDown
    Layout = blGlyphRight
  end
  object cxMaskEdit3: TcxMaskEdit
    Left = 219
    Top = 584
    Properties.Alignment.Horz = taRightJustify
    Properties.HideSelection = False
    Properties.IgnoreMaskBlank = True
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 8
    OnKeyDown = cxMaskEdit1KeyDown
    OnKeyPress = cxMaskEdit3KeyPress
    Width = 150
  end
  object cxLabel4: TcxLabel
    Left = 377
    Top = 587
    Caption = #1705#1583' '#1705#1575#1604#1575
    Transparent = True
  end
  object cxButton8: TcxButton
    Left = 192
    Top = 583
    Width = 25
    Height = 25
    Hint = #1580#1587#1578#1580#1608#1610' '#1705#1575#1604#1575
    TabOrder = 9
    OnClick = cxButton8Click
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
  end
  object cxComboBox1: TcxComboBox
    Left = 502
    Top = 584
    Properties.Alignment.Horz = taRightJustify
    Properties.DropDownListStyle = lsFixedList
    Properties.PopupAlignment = taRightJustify
    StyleFocused.Color = 13434879
    StyleFocused.TextColor = 10116878
    TabOrder = 7
    OnKeyDown = cxMaskEdit1KeyDown
    Width = 150
  end
  object cxLabel5: TcxLabel
    Left = 654
    Top = 587
    Caption = #1578#1575#1585#1610#1582' '#1575#1606#1576#1575#1585' '#1711#1585#1583#1575#1606#1610
    Transparent = True
  end
  object cxButton9: TcxButton
    Left = 500
    Top = 4
    Width = 301
    Height = 30
    Hint = #1576#1585#1575#1610' '#1581#1584#1601' '#1575#1591#1604#1575#1593#1575#1578' '#1580#1575#1585#1610' '#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607' '#1583#1575#1585#1583
    Caption = #1606#1605#1575#1610#1588' '#1604#1610#1587#1578' '#1607#1605#1607' '#1705#1575#1604#1575#1607#1575
    ParentShowHint = False
    ShowHint = True
    TabOrder = 18
    OnClick = cxButton9Click
    OnKeyDown = cxMaskEdit1KeyDown
    Layout = blGlyphRight
  end
  object cxLabel3: TcxLabel
    Left = 177
    Top = 611
    Caption = #1605#1585#1581#1604#1607' 1'
    ParentFont = False
    Style.Font.Charset = ARABIC_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxLabel6: TcxLabel
    Left = 313
    Top = 611
    Caption = #1605#1585#1581#1604#1607' 2'
    ParentFont = False
    Style.Font.Charset = ARABIC_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxLabel7: TcxLabel
    Left = 449
    Top = 611
    Caption = #1605#1585#1581#1604#1607' 3'
    ParentFont = False
    Style.Font.Charset = ARABIC_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxLabel8: TcxLabel
    Left = 585
    Top = 611
    Caption = #1605#1585#1581#1604#1607' 4'
    ParentFont = False
    Style.Font.Charset = ARABIC_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object DataSource1: TDataSource
    Left = 32
    Top = 80
  end
  object DataSource2: TDataSource
    Left = 48
    Top = 376
  end
end
