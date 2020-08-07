object ChangePass: TChangePass
  Left = 655
  Top = 110
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1578#1594#1610#1610#1585' '#1585#1605#1586' '#1593#1576#1608#1585
  ClientHeight = 167
  ClientWidth = 324
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
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = ' '
    TabOrder = 1
    Height = 121
    Width = 324
    object cxLabel1: TcxLabel
      Left = 215
      Top = 30
      Caption = #1585#1605#1586' '#1593#1576#1608#1585' '#1602#1583#1610#1605
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 213
      Top = 57
      Caption = #1585#1605#1586' '#1593#1576#1608#1585' '#1580#1583#1610#1583
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 216
      Top = 84
      Caption = #1578#1705#1585#1575#1585' '#1585#1605#1586' '#1593#1576#1608#1585
      Transparent = True
    end
    object cxTextEdit2: TcxTextEdit
      Left = 42
      Top = 55
      Properties.Alignment.Horz = taRightJustify
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '|'
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 1
      Width = 160
    end
    object cxTextEdit1: TcxTextEdit
      Left = 42
      Top = 28
      Properties.Alignment.Horz = taRightJustify
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '|'
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 0
      Width = 160
    end
    object cxTextEdit3: TcxTextEdit
      Left = 42
      Top = 82
      Properties.Alignment.Horz = taRightJustify
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '|'
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 2
      Width = 160
    end
  end
  object cxButton1: TcxButton
    Left = 165
    Top = 128
    Width = 90
    Height = 30
    Caption = #1578#1575#1574#1610#1583
    Default = True
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 64
    Top = 128
    Width = 90
    Height = 30
    Cancel = True
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 2
    OnClick = cxButton2Click
  end
end
