object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #54620#52980' '#52636#53748#44540
  ClientHeight = 88
  ClientWidth = 274
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
  object Label1: TLabel
    Left = 8
    Top = 67
    Width = 54
    Height = 13
    Caption = #44540#47924' '#49345#53468' :'
  end
  object Label2: TLabel
    Left = 68
    Top = 67
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object WebBrowser1: TWebBrowser
    Left = 8
    Top = 175
    Width = 377
    Height = 250
    TabOrder = 0
    OnDocumentComplete = WebBrowser1DocumentComplete
    ControlData = {
      4C000000F7260000D71900000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 113
    Height = 49
    Caption = #52636#44540#54616#44592
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 153
    Top = 8
    Width = 112
    Height = 49
    Caption = #53748#44540#54616#44592
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object WebBrowser2: TWebBrowser
    Left = 432
    Top = 175
    Width = 329
    Height = 250
    TabOrder = 3
    OnDocumentComplete = WebBrowser2DocumentComplete
    ControlData = {
      4C00000001220000D71900000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 112
    Top = 416
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer2Timer
    Left = 152
    Top = 416
  end
  object Timer3: TTimer
    Enabled = False
    OnTimer = Timer3Timer
    Left = 528
    Top = 416
  end
  object Timer4: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer4Timer
    Left = 560
    Top = 416
  end
end
