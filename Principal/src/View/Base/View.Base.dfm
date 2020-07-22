object frmBase: TfrmBase
  Left = 0
  Top = 0
  Caption = '.:: Base'
  ClientHeight = 528
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object FadeIn: TTimer
    Interval = 50
    Left = 184
    Top = 200
  end
  object FadeOut: TTimer
    Enabled = False
    Interval = 100
    Left = 312
    Top = 192
  end
end
