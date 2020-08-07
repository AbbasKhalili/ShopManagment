object StorageLevel: TStorageLevel
  Left = 234
  Top = 121
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1605#1593#1585#1601#1610' '#1587#1591#1608#1581' '#1575#1606#1576#1575#1585
  ClientHeight = 556
  ClientWidth = 363
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
  OnKeyDown = cxTextEdit2KeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object cxButton1: TcxButton
    Left = 30
    Top = 269
    Width = 75
    Height = 30
    Caption = #1580#1583#1610#1583
    TabOrder = 0
    OnClick = cxButton1Click
    OnKeyDown = cxTextEdit2KeyDown
  end
  object cxButton2: TcxButton
    Left = 108
    Top = 269
    Width = 75
    Height = 30
    Caption = #1584#1582#1610#1585#1607
    Default = True
    TabOrder = 2
    OnClick = cxButton2Click
    OnKeyDown = cxTextEdit2KeyDown
  end
  object cxButton3: TcxButton
    Left = 186
    Top = 269
    Width = 75
    Height = 30
    Caption = #1575#1589#1604#1575#1581
    TabOrder = 3
    OnClick = cxButton3Click
    OnKeyDown = cxTextEdit2KeyDown
  end
  object cxButton4: TcxButton
    Left = 264
    Top = 269
    Width = 75
    Height = 30
    Caption = #1581#1584#1601
    TabOrder = 4
    OnClick = cxButton4Click
    OnKeyDown = cxTextEdit2KeyDown
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Alignment = alTopRight
    Caption = #1605#1593#1585#1601#1610' '#1575#1606#1576#1575#1585' '#1608' '#1586#1610#1585' '#1605#1580#1605#1608#1593#1607' '#1607#1575
    TabOrder = 1
    Height = 265
    Width = 363
    object cxImage3: TcxImage
      Left = 12
      Top = 147
      TabStop = False
      Properties.ImmediatePost = True
      Properties.PopupMenuLayout.MenuItems = []
      Properties.ReadOnly = False
      Properties.ShowFocusRect = False
      TabOrder = 17
      OnClick = cxRadioButton3Click
      Height = 94
      Width = 333
    end
    object cxImage1: TcxImage
      Left = 12
      Top = 33
      TabStop = False
      Properties.PopupMenuLayout.MenuItems = []
      Properties.ReadOnly = True
      Properties.ShowFocusRect = False
      TabOrder = 9
      OnClick = cxRadioButton1Click
      Height = 38
      Width = 333
    end
    object cxRadioButton1: TcxRadioButton
      Left = 244
      Top = 43
      Width = 106
      Height = 15
      Alignment = taLeftJustify
      Caption = #1593#1606#1608#1575#1606' '#1587#1591#1581' '#1610#1705
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = cxRadioButton1Click
      OnKeyDown = cxTextEdit2KeyDown
      Transparent = True
    end
    object cxTextEdit2: TcxTextEdit
      Left = 36
      Top = 41
      Properties.Alignment.Horz = taRightJustify
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 1
      OnKeyDown = cxTextEdit2KeyDown
      Width = 195
    end
    object cxImage2: TcxImage
      Left = 12
      Top = 75
      TabStop = False
      Properties.ImmediatePost = True
      Properties.PopupMenuLayout.MenuItems = []
      Properties.ReadOnly = False
      Properties.ShowFocusRect = False
      TabOrder = 10
      OnClick = cxRadioButton2Click
      Height = 68
      Width = 333
    end
    object cxRadioButton2: TcxRadioButton
      Left = 337
      Top = 101
      Width = 13
      Height = 16
      Alignment = taLeftJustify
      TabOrder = 2
      OnClick = cxRadioButton2Click
      OnKeyDown = cxTextEdit2KeyDown
      Transparent = True
    end
    object cxLabel9: TcxLabel
      Left = 272
      Top = 87
      Caption = #1587#1591#1581' '#1610#1705
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 243
      Top = 114
      Caption = #1593#1606#1608#1575#1606' '#1587#1591#1581' '#1583#1608
      Transparent = True
    end
    object cxTextEdit4: TcxTextEdit
      Left = 36
      Top = 112
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 4
      OnKeyDown = cxTextEdit2KeyDown
      Width = 195
    end
    object cxComboBox1: TcxComboBox
      Left = 36
      Top = 84
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox1PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 3
      OnKeyDown = cxTextEdit2KeyDown
      Width = 195
    end
    object cxComboBox4: TcxComboBox
      Left = 13
      Top = 83
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox4PropertiesEditValueChanged
      TabOrder = 11
      Visible = False
      OnKeyDown = cxTextEdit2KeyDown
      Width = 40
    end
    object cxRadioButton3: TcxRadioButton
      Left = 337
      Top = 187
      Width = 13
      Height = 16
      Alignment = taLeftJustify
      TabOrder = 5
      OnClick = cxRadioButton3Click
      OnKeyDown = cxTextEdit2KeyDown
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 272
      Top = 159
      Caption = #1587#1591#1581' '#1610#1705
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 234
      Top = 212
      Caption = #1593#1606#1608#1575#1606' '#1587#1591#1581' '#1587#1607
      Transparent = True
    end
    object cxTextEdit1: TcxTextEdit
      Left = 36
      Top = 210
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 8
      OnKeyDown = cxTextEdit2KeyDown
      Width = 195
    end
    object cxComboBox2: TcxComboBox
      Left = 36
      Top = 156
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox2PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 6
      OnKeyDown = cxTextEdit2KeyDown
      Width = 195
    end
    object cxComboBox3: TcxComboBox
      Left = 13
      Top = 155
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox3PropertiesEditValueChanged
      TabOrder = 12
      Visible = False
      OnKeyDown = cxTextEdit2KeyDown
      Width = 40
    end
    object cxComboBox6: TcxComboBox
      Left = 36
      Top = 183
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox6PropertiesEditValueChanged
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 7
      OnKeyDown = cxTextEdit2KeyDown
      Width = 195
    end
    object cxLabel3: TcxLabel
      Left = 278
      Top = 186
      Caption = #1587#1591#1581' '#1583#1608
      Transparent = True
    end
    object cxComboBox5: TcxComboBox
      Left = 13
      Top = 182
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.PopupAlignment = taRightJustify
      Properties.OnEditValueChanged = cxComboBox5PropertiesEditValueChanged
      TabOrder = 18
      Visible = False
      OnKeyDown = cxTextEdit2KeyDown
      Width = 40
    end
  end
  object TreeView1: TTreeView
    Left = 0
    Top = 306
    Width = 363
    Height = 250
    Align = alBottom
    BevelEdges = []
    Ctl3D = False
    HideSelection = False
    Indent = 25
    ParentCtl3D = False
    ReadOnly = True
    RowSelect = True
    TabOrder = 5
    OnChange = TreeView1Change
    OnClick = TreeView1Click
    OnKeyDown = cxTextEdit2KeyDown
  end
end
