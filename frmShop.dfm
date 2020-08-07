inherited Shop: TShop
  Left = 238
  Top = 116
  Caption = #1601#1585#1608#1588#1711#1575#1607
  ClientHeight = 155
  ClientWidth = 516
  OldCreateOrder = True
  OnClose = FormClose
  OnKeyDown = cxTextEdit5KeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  inherited cxButton6: TcxButton [0]
    Left = 437
    Top = 110
    TabStop = False
    Visible = False
  end
  inherited cxButton1: TcxButton [1]
    TabOrder = 2
  end
  inherited cxGroupBox1: TcxGroupBox [2]
    Alignment = alTopRight
    Caption = #1605#1588#1582#1589#1575#1578' '#1601#1585#1608#1588#1711#1575#1607
    Height = 97
    Width = 516
    object cxLabel1: TcxLabel
      Left = 436
      Top = 30
      Caption = #1606#1575#1605' '#1601#1585#1608#1588#1711#1575#1607
      Transparent = True
    end
    object cxTextEdit1: TcxTextEdit
      Left = 266
      Top = 59
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 1
      OnKeyDown = cxTextEdit5KeyDown
      Width = 160
    end
    object cxLabel2: TcxLabel
      Left = 475
      Top = 59
      Caption = #1578#1604#1601#1606
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 188
      Top = 60
      Caption = #1570#1583#1585#1587
      Transparent = True
    end
    object cxTextEdit3: TcxTextEdit
      Left = 15
      Top = 59
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 3
      OnKeyDown = cxTextEdit5KeyDown
      Width = 160
    end
    object cxTextEdit2: TcxTextEdit
      Left = 15
      Top = 30
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 2
      OnKeyDown = cxTextEdit5KeyDown
      Width = 160
    end
    object cxLabel3: TcxLabel
      Left = 186
      Top = 30
      Caption = #1601#1575#1705#1587
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 436
      Top = 89
      Caption = #1570#1585#1605' '#1601#1585#1608#1588#1711#1575#1607
      Transparent = True
      Visible = False
    end
    object cxTextEdit4: TcxTextEdit
      Left = 43
      Top = 88
      TabStop = False
      Properties.ReadOnly = True
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 10
      Visible = False
      OnKeyDown = cxTextEdit5KeyDown
      Width = 383
    end
    object cxButton7: TcxButton
      Left = 15
      Top = 87
      Width = 25
      Height = 24
      Caption = '...'
      TabOrder = 4
      TabStop = False
      Visible = False
      OnKeyDown = cxTextEdit5KeyDown
    end
    object cxTextEdit5: TcxTextEdit
      Left = 266
      Top = 30
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 0
      OnKeyDown = cxTextEdit5KeyDown
      Width = 160
    end
  end
  inherited cxButton2: TcxButton [3]
    Left = 55
    Top = 110
    TabOrder = 0
    OnClick = cxButton2Click
    OnKeyDown = cxTextEdit5KeyDown
  end
  inherited cxButton3: TcxButton [4]
    Left = 159
    Top = 110
    Default = True
    OnClick = cxButton3Click
    OnKeyDown = cxTextEdit5KeyDown
  end
  inherited cxButton4: TcxButton [5]
    Left = 263
    Top = 110
    OnClick = cxButton4Click
    OnKeyDown = cxTextEdit5KeyDown
  end
  inherited cxButton5: TcxButton [6]
    Left = 367
    Top = 110
    OnClick = cxButton5Click
    OnKeyDown = cxTextEdit5KeyDown
  end
end
