object frmTransparentForm: TfrmTransparentForm
  Left = 0
  Top = 0
  Align = alClient
  AlphaBlend = True
  AlphaBlendValue = 80
  BorderStyle = bsNone
  Caption = 'frmTransparentForm'
  ClientHeight = 312
  ClientWidth = 547
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 400
    Top = 80
  end
end
