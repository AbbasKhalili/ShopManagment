inherited InvoiceBack: TInvoiceBack
  Left = 516
  Top = 117
  Caption = #1601#1575#1705#1578#1608#1585' '#1607#1575#1610' '#1605#1585#1580#1608#1593#1610' - '#1576#1585#1711#1588#1578' '#1575#1586' '#1601#1585#1608#1588
  ClientHeight = 504
  ClientWidth = 755
  OldCreateOrder = True
  OnClose = FormClose
  OnKeyDown = cxTextEdit1KeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  inherited cxButton1: TcxButton
    TabOrder = 6
  end
  inherited cxGroupBox1: TcxGroupBox
    Alignment = alTopRight
    Caption = #1579#1576#1578' '#1601#1575#1705#1578#1608#1585#1607#1575#1610' '#1605#1585#1580#1608#1593#1610
    Enabled = False
    ParentBiDiMode = False
    Height = 454
    Width = 755
    object Shape1: TShape
      Left = 21
      Top = 61
      Width = 717
      Height = 1
      Pen.Color = 13092807
      Pen.Style = psInsideFrame
    end
    object cxListView1: TcxListView
      Left = 18
      Top = 112
      Width = 722
      Height = 250
      BiDiMode = bdRightToLeft
      Columns = <
        item
          Caption = #1602#1610#1605#1578' '#1705#1604
          MaxWidth = 90
          MinWidth = 90
          Width = 90
        end
        item
          Alignment = taCenter
          Caption = #1578#1582#1601#1610#1601
          MaxWidth = 60
          MinWidth = 60
          Width = 60
        end
        item
          Alignment = taCenter
          Caption = '('#1602#1610#1605#1578' ('#1601#1610
          MaxWidth = 90
          MinWidth = 90
          Width = 90
        end
        item
          Alignment = taCenter
          Caption = #1578#1593#1583#1575#1583
          MaxWidth = 60
          MinWidth = 60
          Width = 60
        end
        item
          Alignment = taCenter
          Caption = #1605#1575#1604#1610#1575#1578
          MaxWidth = 44
          MinWidth = 44
          Width = 44
        end
        item
          Alignment = taCenter
          Caption = #1606#1575#1605' '#1705#1575#1604#1575
          MaxWidth = 210
          MinWidth = 210
          Width = 210
        end
        item
          Alignment = taCenter
          Caption = #1705#1583' '#1705#1575#1604#1575
          MaxWidth = 105
          MinWidth = 105
          Width = 105
        end
        item
          Alignment = taCenter
          Caption = #1585#1583#1610#1601
          MaxWidth = 38
          MinWidth = 38
          Width = 38
        end
        item
          MaxWidth = 1
          MinWidth = 1
          Width = 1
        end
        item
          MaxWidth = 1
          MinWidth = 1
          Width = 1
        end
        item
          MaxWidth = 1
          MinWidth = 1
          Width = 1
        end
        item
          MaxWidth = 1
          MinWidth = 1
          Width = 1
        end>
      HideSelection = False
      ParentBiDiMode = False
      ReadOnly = True
      RowSelect = True
      TabOrder = 10
      ViewStyle = vsReport
      OnKeyDown = cxTextEdit1KeyDown
    end
    object cxComboBox3: TcxComboBox
      Left = 46
      Top = 30
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox3PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 2
      OnKeyDown = cxTextEdit1KeyDown
      Width = 152
    end
    object cxLabel1: TcxLabel
      Left = 656
      Top = 31
      Caption = #1588#1605#1575#1585#1607' '#1605#1585#1580#1608#1593#1610
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 423
      Top = 31
      Caption = #1578#1575#1585#1610#1582' '#1605#1585#1580#1608#1593#1610
      Transparent = True
    end
    object cxMaskEdit3: TcxMaskEdit
      Left = 18
      Top = 366
      TabStop = False
      Properties.Alignment.Horz = taCenter
      Properties.IgnoreMaskBlank = True
      Properties.ReadOnly = True
      Style.TextColor = clRed
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 17
      Text = '0'
      OnKeyDown = cxTextEdit1KeyDown
      Width = 140
    end
    object cxLabel4: TcxLabel
      Left = 169
      Top = 367
      Caption = #1580#1605#1593' '#1705#1604
      Transparent = True
    end
    object cxGroupBox2: TcxGroupBox
      Left = 328
      Top = 366
      Alignment = alTopRight
      Caption = #1578#1608#1590#1610#1581#1575#1578
      TabOrder = 13
      Height = 76
      Width = 411
      object cxMemo1: TcxMemo
        Left = 2
        Top = 20
        Align = alClient
        Properties.Alignment = taLeftJustify
        TabOrder = 0
        OnKeyDown = cxTextEdit1KeyDown
        Height = 49
        Width = 407
      end
    end
    object cxComboBox1: TcxComboBox
      Left = 60
      Top = 30
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox3PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 21
      Visible = False
      Width = 26
    end
    object cxLabel8: TcxLabel
      Left = 209
      Top = 31
      Caption = #1606#1575#1605' '#1582#1585#1610#1583#1575#1585
      Transparent = True
    end
    object cxMaskEdit1: TcxMaskEdit
      Left = 292
      Top = 30
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = 
        '([123][0-9])? [0-9][0-9] / (0?[1-9] | 1[012]) / ([012]?[1-9] | [' +
        '123]0 |31)'
      Properties.MaxLength = 0
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 1
      OnExit = cxMaskEdit1Exit
      OnKeyDown = cxTextEdit1KeyDown
      Width = 120
    end
    object cxTextEdit1: TcxMaskEdit
      Left = 525
      Top = 30
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      Properties.ReadOnly = True
      Properties.OnChange = cxTextEdit1PropertiesChange
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 0
      OnKeyDown = cxTextEdit1KeyDown
      Width = 120
    end
    object cxButton8: TcxButton
      Left = 18
      Top = 82
      Width = 45
      Height = 28
      Caption = #1581#1584#1601
      TabOrder = 9
      TabStop = False
      OnClick = cxButton8Click
      OnKeyDown = cxTextEdit1KeyDown
    end
    object cxButton9: TcxButton
      Left = 65
      Top = 82
      Width = 45
      Height = 28
      Caption = #1575#1590#1575#1601#1607
      TabOrder = 8
      OnClick = cxButton9Click
      OnKeyDown = cxTextEdit1KeyDown
    end
    object cxMaskEdit8: TcxMaskEdit
      Left = 171
      Top = 86
      TabStop = False
      Properties.Alignment.Horz = taCenter
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      Properties.ReadOnly = True
      Properties.OnChange = cxMaskEdit8PropertiesChange
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 6
      Text = '0'
      OnKeyDown = cxTextEdit1KeyDown
      Width = 87
    end
    object cxMaskEdit7: TcxMaskEdit
      Left = 260
      Top = 86
      Properties.Alignment.Horz = taCenter
      Properties.IgnoreMaskBlank = True
      Properties.MaxLength = 0
      Properties.OnChange = cxMaskEdit7PropertiesChange
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 5
      Text = '0'
      OnKeyDown = cxTextEdit1KeyDown
      Width = 58
    end
    object cxMaskEdit6: TcxMaskEdit
      Left = 320
      Top = 86
      TabStop = False
      Properties.Alignment.Horz = taCenter
      Properties.IgnoreMaskBlank = True
      Properties.ReadOnly = True
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 16
      Text = '0'
      OnKeyDown = cxTextEdit1KeyDown
      Width = 42
    end
    object cxComboBox4: TcxComboBox
      Left = 364
      Top = 174
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox4PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 12
      Visible = False
      OnKeyDown = cxTextEdit1KeyDown
      Width = 207
    end
    object cxComboBox2: TcxComboBox
      Left = 514
      Top = 198
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox2PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 15
      Visible = False
      OnKeyDown = cxTextEdit1KeyDown
      Width = 80
    end
    object cxLabel6: TcxLabel
      Left = 613
      Top = 66
      Caption = #1705#1583' '#1705#1575#1604#1575
      Transparent = True
    end
    object cxLabel9: TcxLabel
      Left = 456
      Top = 66
      Caption = #1606#1575#1605' '#1705#1575#1604#1575
      Transparent = True
    end
    object cxLabel10: TcxLabel
      Left = 328
      Top = 66
      Caption = #1605#1575#1604#1610#1575#1578
      Transparent = True
    end
    object cxLabel12: TcxLabel
      Left = 283
      Top = 66
      Caption = #1578#1593#1583#1575#1583
      Transparent = True
    end
    object cxLabel11: TcxLabel
      Left = 209
      Top = 66
      Caption = #1602#1610#1605#1578
      Transparent = True
    end
    object cxComboBox5: TcxComboBox
      Left = 508
      Top = 254
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox5PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 14
      Visible = False
      OnKeyDown = cxTextEdit1KeyDown
      Width = 85
    end
    object cxComboBox6: TcxComboBox
      Left = 510
      Top = 279
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox6PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 28
      Visible = False
      Width = 83
    end
    object cxButton7: TcxButton
      Left = 18
      Top = 29
      Width = 25
      Height = 24
      Caption = '...'
      TabOrder = 29
      TabStop = False
      OnClick = cxButton7Click
    end
    object cxComboBox7: TcxComboBox
      Left = 573
      Top = 174
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox7PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 11
      Visible = False
      OnKeyDown = cxTextEdit1KeyDown
      Width = 80
    end
    object ComBuyPrice: TcxComboBox
      Left = 165
      Top = 181
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 30
      Visible = False
      Width = 52
    end
    object ComSalePrice: TcxComboBox
      Left = 96
      Top = 181
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = ComSalePricePropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 31
      Visible = False
      Width = 67
    end
    object ComPersent: TcxComboBox
      Left = 157
      Top = 213
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = ComPersentPropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 32
      Visible = False
      Width = 68
    end
    object cxButton11: TcxButton
      Left = 681
      Top = 81
      Width = 60
      Height = 28
      Caption = #1705#1575#1604#1575
      TabOrder = 33
      TabStop = False
      OnClick = cxButton11Click
      OnKeyDown = cxTextEdit1KeyDown
    end
    object cxMaskEdit5: TcxMaskEdit
      Left = 112
      Top = 86
      TabStop = False
      Properties.Alignment.Horz = taCenter
      Properties.IgnoreMaskBlank = True
      Properties.MaxLength = 0
      Properties.OnChange = cxMaskEdit5PropertiesChange
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 7
      Text = '0'
      OnKeyDown = cxTextEdit1KeyDown
      Width = 57
    end
    object cxLabel7: TcxLabel
      Left = 127
      Top = 66
      Caption = #1578#1582#1601#1610#1601
      Transparent = True
    end
    object cxMaskEdit2: TcxMaskEdit
      Left = 18
      Top = 392
      TabStop = False
      Properties.Alignment.Horz = taCenter
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      Properties.ReadOnly = True
      Style.Color = clWindow
      Style.TextColor = 4227072
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 35
      Text = '0'
      OnKeyDown = cxTextEdit1KeyDown
      Width = 140
    end
    object cxLabel3: TcxLabel
      Left = 167
      Top = 394
      Caption = #1578#1582#1601#1610#1601
      Transparent = True
    end
    object cxMaskEdit4: TcxMaskEdit
      Left = 18
      Top = 418
      TabStop = False
      Properties.Alignment.Horz = taCenter
      Properties.IgnoreMaskBlank = True
      Properties.MaxLength = 0
      Properties.ReadOnly = True
      Style.TextColor = clRed
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 37
      Text = '0'
      OnKeyDown = cxTextEdit1KeyDown
      Width = 140
    end
    object cxLabel5: TcxLabel
      Left = 167
      Top = 419
      Caption = #1605#1576#1604#1594' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
      Transparent = True
    end
    object cxMaskEdit9: TcxMaskEdit
      Left = 260
      Top = 366
      TabStop = False
      Properties.Alignment.Horz = taCenter
      Properties.IgnoreMaskBlank = True
      Properties.MaxLength = 0
      Properties.ReadOnly = True
      Style.TextColor = clBlue
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 39
      Text = '0'
      OnKeyDown = cxTextEdit1KeyDown
      Width = 58
    end
    object cxMaskEdit11: TcxMaskEdit
      Left = 364
      Top = 86
      TabStop = False
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      StyleDisabled.Color = clCream
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 4
      OnKeyDown = cxTextEdit1KeyDown
      Width = 208
    end
    object cxMaskEdit10: TcxMaskEdit
      Left = 574
      Top = 86
      Properties.Alignment.Horz = taRightJustify
      Properties.HideSelection = False
      Properties.IgnoreMaskBlank = True
      Properties.OnValidate = cxMaskEdit10PropertiesValidate
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 3
      OnKeyDown = cxTextEdit1KeyDown
      Width = 105
    end
  end
  inherited cxButton2: TcxButton
    Left = 70
    Top = 462
    TabOrder = 0
    OnClick = cxButton2Click
    OnKeyDown = cxTextEdit1KeyDown
  end
  inherited cxButton3: TcxButton
    Left = 174
    Top = 462
    TabOrder = 2
    OnClick = cxButton3Click
    OnKeyDown = cxTextEdit1KeyDown
  end
  inherited cxButton4: TcxButton
    Left = 278
    Top = 462
    TabOrder = 3
    OnClick = cxButton4Click
    OnKeyDown = cxTextEdit1KeyDown
  end
  inherited cxButton5: TcxButton
    Left = 382
    Top = 462
    TabOrder = 4
    OnClick = cxButton5Click
    OnKeyDown = cxTextEdit1KeyDown
  end
  inherited cxButton6: TcxButton
    Left = 486
    Top = 462
    TabOrder = 5
    OnClick = cxButton6Click
    OnKeyDown = cxTextEdit1KeyDown
  end
  object cxButton10: TcxButton
    Left = 590
    Top = 462
    Width = 100
    Height = 32
    Hint = #1580#1607#1578' '#1670#1575#1662' '#1601#1575#1705#1578#1608#1585' '#1580#1575#1585#1610' '#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607' '#1583#1575#1585#1583
    Caption = #1670#1575#1662
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = cxButton10Click
    OnKeyDown = cxTextEdit1KeyDown
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A91D52497D6148BD2148BD2
      148BD2148BD2148BD2148BD2148BD2148BD2148BD2148BD2167EBDFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF148BD25F
      E8FF4BE1FF43DFFF3CDDFF34DBFF2DD9FF25D7FF1DD5FF15D3FF0BD0FF76F4FF
      148BD2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF148BD27EEFFF6DE8FF67E6FF5EE4FF58E2FF4FE0FF49DEFF40DCFF3A
      DAFF30D8FF84F6FF148BD2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      E7E5E5BE756EB1625BC77F79148BD29BF6FF8DF1FF87F0FF80EEFF77ECFF71EA
      FF68E8FF62E6FF59E4FF50E1FF8EF7FF148BD2C77972B1625BAE6D67FFFFFFFF
      FFFFFFFFFFFFFFFFBA726BFEE5E3FFE7E5F1BEB5148BD2BAFFFFB0FDFFA9FBFF
      A2F9FF9AF7FF93F5FF8CF3FF83F1FF7CEFFF72EDFF9DFDFF298BC9FFC1BAFFC1
      BDE29A94C68B86FFFFFFFFFFFFFFFFFFB1625BFFEBE9FFE9E8DC8D6C2490CF74
      B2CC72B1CB71B0CA71AEC96FACC76DA9C56BA7C269A4C067A1BD649DBA659FBB
      8C7473E7A093FFC3BEFFBFBBB1625BFFFFFFFFFFFFFFFFFFB1625BFFEFEDFFEB
      EBE1ADA0E29A7EE2997EE1987DE1967CE0947ADF9277DF9075DE8C72DC8A6FDB
      866CDA8368D98066D5826AF8BDB8FFC6C1FFC3BFB1625BFFFFFFFFFFFFFFFFFF
      B1625BFFF2F1FFEFEEFFF1F0FFEEEFFFECECFFEAEAFFE7E8FFE5E5FFE3E3FFE2
      E0FFDFDEFFDDDBFFDBD9FFD7D6FFD5D4FFD3D1FFCDCBFFC9C5FFC7C3B1625BFF
      FFFFFFFFFFFFFFFFB1625BFFF7F6F0D4CED28264D67E5AD47B57D37854D27551
      D0714DCF6E4BCD6A47CC6744CC6844CC6844CC6844CC6844CC6846D88E7BFFCE
      CAFFCBC7B1625BFFFFFFFFFFFFFFFFFFB1625BFFFDFDD58A6FF9AA7BF5A476F3
      9F72F0996CEE9366EB8D5EE88658E57F51E17749DF7043DE6E41DE6F41DE6F41
      DE6F41D56A40E8ADA2FFD0CDB1625BFFFFFFFFFFFFFFFFFFB1625BFFFFFFDC92
      75FCB283F9AD7FF7A97BF5A476F19F71F0996BEC9365EB8C5FE88658E37D51E0
      7649DE7043DD6E41DE6E41D96B40E6ACA2FFD4D1B1625BFFFFFFFFFFFFFFFFFF
      B1625BFFFFFFDC9577FEB889FCB486F9B083F9AD7FF7A87AF5A376F29E71F098
      6BED9265EA8C5EE78558E37E51E07548DD7043D96B40E6AEA4FFD8D7B1625BFF
      FFFFFFFFFFFFFFFFBB756FFFFFFFDD9778FFBB8CFEB98BFDB689FCB486FAB082
      F7AD7FF6A87AF4A375F29E70F0986AED9264EA8B5EE78457E47C4FDC7246E8B3
      AAEBBBB7B1625BFFFFFFFFFFFFFFFFFFE3D6D5B1625BD3866BFFBE8FFFBC8EFF
      BB8DFFB98BFEB789FDB486FBB183F9AD7EF7A87AF4A475F39E70EF986AED9164
      EB8C5DDF7E53EBBBB7B1625BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB162
      5BDD9479DE906DDC8D69DC8D69DC8C68DB8B68DC8A67DA8965D98763D88561D7
      825FD7805CD67E5AD9815EB1625BB1625BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFD6A671FFFAF5FFF7EFFFF6EFFFF5EEFFF5EBFFF4
      EBFFF3EAFFF2E8FFF1E7FFF1E6FDE8D6B58A59FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4BFFF9F5FFF7F1FFF6F0
      FFF5EFFFF3ECFFF4ECFFF3EBFFF2E8FFF1E8FFF0E7FCE8D7C88C4BFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4BFF
      FCFAFFF8F6FFF9F5FFF8F2FFF7F2FFF5F1FFF6EEFFF5EEFFF6F1FFF5EFFEEDDF
      C88C4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFC88C4BFFFFFFFFFCFBFFFAF8FFFBF8FFFAF7FFF9F4FFF8F4F9EDE2D5
      9958E3AB6FCF914DBF8A51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFC88C4BFFFFFFFFFFFEFFFEFEFFFCFDFFFDFAFFFC
      FAFFFBF9F8EEE4EBB47BE0A76BC69662F9F2EBFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6A774FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF9F2ECCE904EC59561F9F2EBFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E6D8D5
      AA7AC88C4BC88C4BC88C4BC88C4BC88C4BC88C4BC88C4BCE9960F9F2EBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Layout = blGlyphRight
  end
end
