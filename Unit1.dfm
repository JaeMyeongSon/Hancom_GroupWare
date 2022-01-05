object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 529
  ClientWidth = 669
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 0
    Width = 669
    Height = 486
    Align = alTop
    TabOrder = 0
    OnDocumentComplete = WebBrowser1DocumentComplete
    ExplicitWidth = 697
    ControlData = {
      4C000000254500003B3200000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Button1: TButton
    Left = 40
    Top = 492
    Width = 75
    Height = 25
    Caption = #53748#44540#54616#44592
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 552
    Top = 492
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 600
    Top = 368
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer2Timer
    Left = 640
    Top = 368
  end
end
