object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 351
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button2: TButton
    Left = 0
    Top = 0
    Width = 632
    Height = 65
    Align = alTop
    Caption = 'Grupo'
    TabOrder = 0
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 0
    Top = 260
    Width = 632
    Height = 69
    Align = alTop
    Caption = 'Produtos'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 0
    Top = 65
    Width = 632
    Height = 65
    Align = alTop
    Caption = 'Marca'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 0
    Top = 130
    Width = 632
    Height = 65
    Align = alTop
    Caption = 'Unidade'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 0
    Top = 195
    Width = 632
    Height = 65
    Align = alTop
    Caption = 'Tributo'
    TabOrder = 4
    OnClick = Button5Click
  end
end
