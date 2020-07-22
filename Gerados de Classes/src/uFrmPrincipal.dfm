object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 505
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 8
    Width = 313
    Height = 42
    Caption = 'Gerar Entidade'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 56
    Width = 313
    Height = 42
    Caption = 'Gerar Model Interfaces'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 24
    Top = 104
    Width = 313
    Height = 42
    Caption = 'Gerar Model Classe'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 24
    Top = 152
    Width = 313
    Height = 42
    Caption = 'Gerar Controller Interface'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 24
    Top = 200
    Width = 313
    Height = 42
    Caption = 'Gerar Controller Classe'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 24
    Top = 248
    Width = 313
    Height = 42
    Caption = 'Gerar Fachada Model Interfaces'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 24
    Top = 344
    Width = 313
    Height = 42
    Caption = 'Gerar Fachada Controller Intercaes'
    TabOrder = 6
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 24
    Top = 296
    Width = 313
    Height = 42
    Caption = 'Gerar Fachada Model '
    TabOrder = 7
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 24
    Top = 392
    Width = 313
    Height = 42
    Caption = 'Gerar Fachada Controller'
    TabOrder = 8
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 24
    Top = 455
    Width = 313
    Height = 42
    Caption = 'Gerar Controller Generic'
    TabOrder = 9
    OnClick = Button10Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Projetos\database\vitrine\VITRINE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 288
    Top = 80
  end
  object FDTable1: TFDTable
    Connection = FDConnection1
    Left = 208
    Top = 40
  end
end
