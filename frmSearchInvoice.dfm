object SearchInvoice: TSearchInvoice
  Left = 245
  Top = 489
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  ClientHeight = 416
  ClientWidth = 730
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
    Top = 65
    Width = 730
    Height = 351
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      OnKeyDown = cxTextEdit1KeyDown
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = True
      NavigatorButtons.PriorPage.Visible = True
      NavigatorButtons.Prior.Visible = True
      NavigatorButtons.Next.Visible = True
      NavigatorButtons.NextPage.Visible = True
      NavigatorButtons.Last.Visible = True
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Append.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBTableView1Column4
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1Column7
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1Column8
        end>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.Options = [soNullIgnore]
      OptionsView.Navigator = True
      OptionsView.NoDataToDisplayInfoText = #1575#1591#1604#1575#1593#1575#1578#1610' '#1610#1575#1601#1578' '#1606#1588#1583
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = #1578#1608#1590#1610#1581#1575#1578
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 130
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1608#1606#1583#1607
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 80
      end
      object cxGrid1DBTableView1Column8: TcxGridDBColumn
        Caption = #1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 80
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #1578#1582#1601#1610#1601
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 80
      end
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        Caption = #1580#1605#1593' '#1601#1575#1705#1578#1608#1585
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 80
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #1582#1585#1610#1583#1575#1585
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
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
        Caption = #1578#1575#1585#1610#1582' '#1601#1575#1705#1578#1608#1585
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 80
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.Grouping = False
        Width = 80
      end
      object cxGrid1DBTableView1Column9: TcxGridDBColumn
        Visible = False
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
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
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587'...'
    TabOrder = 0
    Height = 65
    Width = 730
    object cxButton1: TcxButton
      Left = 95
      Top = 26
      Width = 95
      Height = 32
      Caption = #1580#1587#1578#1580#1608
      Default = True
      TabOrder = 2
      OnClick = cxButton1Click
      OnKeyDown = cxTextEdit1KeyDown
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE8E6E5D6A97AC88C4BC88C4BC88C4BC88C4BC88C4BC88C4B
        C88C4BC88C4BC88C4BC88C4BC88C4BC88C4BC88C4BC88C4BC88C4BCD985FFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF9B97948393A6006EC3B5C1D0FFF4F2FFF4F2FF
        F4F1FFF4F1FFF4F1FFF3F1FFF3F0FFF3F0FFF3F0FFF3F0FFF2EFFFF2EFFFF2EF
        FFF4F1C88C4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7491AC289ADF0EB1FF0689
        E0B8B3B4FFDFC9FFDEC8FFDEC8FFDDC7FFDDC6FFDCC5FFDCC4FFDBC3FFDBC2FF
        DAC2FFDAC1FFD9C0FFEDE4C88C4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5C5D7
        46A9E345C8FF0DADFF0689E0B8AFAEFFDAC1FFD9C0FFD9BFFFD8BEFFD7BDFFD7
        BCFFD6BBFFD5B9FFD5B8FFD4B7FFD3B4FFECE3C88C4BFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFB6C8DA44A6E045C7FF0DADFF0689E0B8B0B2FFDDC5FFDCC4
        FFDAC3FFDBC2FFDAC1FFD8C0FFD9BDFFD8BDFFD6BCFFD6B9FFEDE5C88C4BFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F775B44A8E045C7FF0EAEFF05
        88E2CEBCB2F8D6C2C4A495BF9E90C4A294F2CFB9FFDBC1FFD9C1FFDAC0FFD8BD
        FFEEE6C88C4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4BB5BC
        C745A8E13EC2FF3782C197827FC07F71E2AE85E7B386E1AD83C28675B58A81FF
        DDC5FFDCC4FFDAC1FFEFE8C88C4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC88C4BFFF0E7B5B6BC437EB0A3A1A0BAA486FFE2A1FFD997FFD896FFD7
        93FFDC94E1AE83C78C86FFDDC8FFDDC5FFF0EAC88C4BFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFC88C4BFFF2EAFFE7D7CAAEA2C19B84FFECB8FFDEA4
        FFE0A8FFDFA6FFDBA1FFD798FFDA94D39E7BCBA799FFDFC9FFF1EBC88C4BFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4BFFF4ECFFE9DBC68B86FF
        ECCDFFE5AFFFE8B5FFEAB6FFE8B5FFE5B0FFE0A8FFDA9CFFD897B1746FFFE1CD
        FFF3EDC88C4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4BFFF5
        EFFFECDFC08377FFFEE6FFECB9FFF0C2FFF1C4FFF0C2FFECBCFFE8B4FFE1A7FF
        E1A2B07362FFE4D1FFF4EFC88C4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC88C4BFFF6F1FFEEE3C28778FFFFF8FFF2C6FFF6CDFFF7CFFFF6CCFFF2
        C6FFEDBDFFE5B0FFE9B4B27563FFE6D6FFF5F1C88C4BFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFC88C4BFFF8F4FFF0E7C28983FFFBECFFFAE3FFF9D1
        FFFCD7FFFAD4FFF6CDFFF0C2FFE9B6FFEEC3B0756FFFE8DAFFF6F2C88C4BFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4BFFFAF6FFF3EBD2B8B2D3
        AFA4FFFFFFFFFEE7FFFED8FFFCD7FFF8CDFFF2C7FFFDE3DAB195C1A099FFEBDE
        FFF7F4C88C4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4BFFFB
        F9FFF5EFFFF4EFC78E88E0CBC1FFFFFFFFFFFBFFFFF0FFFFF0FFFFF7E4C8ADC3
        8984FFEFE4FFEDE2FFF8F4C88C4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC88C4BFFFDFBFFF7F3FFF8F3FFF7F2CFA09BB6847BDDC6BBEADACBDDC4
        B4BB8A7AC9948FFFF2E9FFF1E8FFEFE6FFF9F6C88C4BFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFC88C4BFFFEFEFFFBF7FFFAF7FFF8F6FFF9F5FBF2EC
        EAD8D4E6D1CDEAD8D3FAEDE8FFF5EEFFF5EFFFF5EFFFF5EEFFFCFCC88C4BFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4BFFFFFFFFFDFCFFFBFBFF
        FCFAFFFBF9FFF9F6FFFAF6FFF9F5FFF7F4FFF8F3FFF8F4EDD6BECD9559C88C4B
        CC9459C88D4CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4BFFFF
        FFFFFFFFFFFEFEFFFEFEFFFCFBFFFDFBFFFCFAFFFAF9FFFBF8FFFAF7FFFBF9CD
        975CFFCD99F8C793CE9354EBD7C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC88C4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFFFEFDFFFD
        FCFFFBFBFFFEFDC88C4BF8C692CE9354EBD7C1FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFC88C4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4BD29758EBD7C1FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4CC88C4BC88C4BC88C4BC8
        8C4BC88C4BC88C4BC88C4BC88C4BC88C4BC88C4BC88C4BC88C4CF0E2D1FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphRight
    end
    object cxComboBox1: TcxComboBox
      Left = 415
      Top = 30
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.IgnoreMaskBlank = True
      Properties.Items.Strings = (
        #1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
        #1578#1575#1585#1610#1582' '#1601#1575#1705#1578#1608#1585
        #1582#1585#1610#1583#1575#1585
        #1588#1605#1575#1585#1607' '#1662#1585#1608#1606#1583#1607
        #1578#1608#1590#1610#1581#1575#1578)
      Properties.PopupAlignment = taRightJustify
      TabOrder = 0
      OnKeyDown = cxTextEdit1KeyDown
      Width = 150
    end
    object cxLabel1: TcxLabel
      Left = 572
      Top = 32
      Caption = ': '#1580#1587#1578#1580#1608' '#1585#1608#1610
      Transparent = True
    end
    object cxTextEdit1: TcxTextEdit
      Left = 202
      Top = 30
      Properties.Alignment.Horz = taRightJustify
      TabOrder = 1
      OnKeyDown = cxTextEdit1KeyDown
      Width = 209
    end
  end
end
