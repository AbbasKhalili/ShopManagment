object ChangeUser: TChangeUser
  Left = 270
  Top = 120
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1578#1594#1610#1610#1585' '#1705#1575#1585#1576#1585
  ClientHeight = 148
  ClientWidth = 289
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
    TabOrder = 0
    Height = 99
    Width = 289
    object cxLabel1: TcxLabel
      Left = 204
      Top = 32
      Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 205
      Top = 59
      Caption = #1705#1604#1605#1607' '#1593#1576#1608#1585
      Transparent = True
    end
    object cxTextEdit2: TcxTextEdit
      Left = 34
      Top = 57
      Properties.Alignment.Horz = taRightJustify
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '|'
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 1
      Width = 160
    end
    object cxTextEdit1: TcxTextEdit
      Left = 34
      Top = 30
      Properties.Alignment.Horz = taRightJustify
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 0
      Width = 160
    end
  end
  object cxButton1: TcxButton
    Left = 149
    Top = 107
    Width = 90
    Height = 30
    Caption = #1578#1575#1574#1610#1583
    Default = True
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 48
    Top = 107
    Width = 90
    Height = 30
    Cancel = True
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 2
    OnClick = cxButton2Click
  end
end
