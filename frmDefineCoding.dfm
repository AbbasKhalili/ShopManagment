object DefineCoding: TDefineCoding
  Left = 223
  Top = 110
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  ClientHeight = 127
  ClientWidth = 307
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = ' '
    TabOrder = 0
    Height = 127
    Width = 307
    object cxButton1: TcxButton
      Left = 154
      Top = 80
      Width = 80
      Height = 30
      Caption = #1578#1575#1574#1610#1583
      Default = True
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 66
      Top = 80
      Width = 80
      Height = 30
      Cancel = True
      Caption = #1575#1606#1589#1585#1575#1601
      TabOrder = 2
      OnClick = cxButton2Click
    end
    object cxLabel1: TcxLabel
      Left = 256
      Top = 41
      Caption = #1593#1606#1608#1575#1606
      Transparent = True
    end
    object cxTextEdit1: TcxTextEdit
      Left = 24
      Top = 39
      Properties.Alignment.Horz = taRightJustify
      Properties.MaxLength = 250
      StyleFocused.Color = 13434879
      StyleFocused.TextColor = 10116878
      TabOrder = 0
      Width = 225
    end
  end
end
