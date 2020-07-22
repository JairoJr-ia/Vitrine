inherited frmBasePesquisa: TfrmBasePesquisa
  BorderStyle = bsNone
  Caption = ''
  ClientHeight = 567
  ClientWidth = 1004
  Color = 13882323
  Font.Charset = ANSI_CHARSET
  Font.Color = 2696481
  Font.Height = -16
  Font.Name = 'Segoe UI'
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 1004
  PixelsPerInch = 96
  TextHeight = 21
  object pnl1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1004
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = 16347136
    ParentBackground = False
    TabOrder = 0
    object lblNome: TLabel
      AlignWithMargins = True
      Left = 15
      Top = 3
      Width = 182
      Height = 21
      Margins.Left = 15
      Align = alLeft
      Caption = 'Software ERP | Principal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Panel1: TPanel
      Left = 964
      Top = 0
      Width = 40
      Height = 40
      Align = alRight
      BevelOuter = bvNone
      Color = 16347136
      ParentBackground = False
      TabOrder = 0
      OnClick = Image1Click
      OnMouseEnter = Panel1MouseEnter
      OnMouseLeave = Panel1MouseLeave
      object Image1: TImage
        Left = 7
        Top = 8
        Width = 24
        Height = 24
        DragCursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
          00180806000000E0773DF80000000467414D410000B18F0BFC61050000000662
          4B4744000000000000F943BB7F000000097048597300000EC400000EC401952B
          0E1B000000A84944415478DA6364A031601CB560705AF0FFFF7F0D20351D8823
          1919195FE03300A8561448AD00E202A0DACBC45AB017483901F115100DD4F81A
          8FE1FB8058074403D539136B014823C8125D20BE01C48EE83E21460D4E0B0819
          40ACE1782DC0651010FF25D67082166009E72B5061181B67FC106D01169F3010
          E3F2C163014D8388A6914CD3644AF38C468FA202A461221047108A44A4C22E1F
          A8F60A511650138C5A30F0160000E46A861908EB94D100000025744558746461
          74653A63726561746500323032302D30362D30325431373A35393A34382B3030
          3A3030CC7B68B90000002574455874646174653A6D6F6469667900323032302D
          30362D30325431373A35393A34382B30303A3030BD26D0050000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000000
          0049454E44AE426082}
        OnClick = Image1Click
        OnMouseEnter = Panel1MouseEnter
        OnMouseLeave = Panel1MouseLeave
      end
    end
  end
  object Panel4: TPanel [1]
    AlignWithMargins = True
    Left = 5
    Top = 96
    Width = 994
    Height = 466
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object DBGrid: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 984
      Height = 456
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      DataSource = DSFind
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = 2696481
      TitleFont.Height = -16
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridDrawColumnCell
      OnTitleClick = DBGridTitleClick
    end
  end
  object Panel6: TPanel [2]
    AlignWithMargins = True
    Left = 5
    Top = 45
    Width = 994
    Height = 41
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      994
      41)
    object shpPesquisa: TShape
      Left = 253
      Top = 5
      Width = 42
      Height = 31
      Anchors = [akLeft, akTop, akBottom]
      Pen.Color = 8026746
    end
    object edtPesquisa: TEdit
      AlignWithMargins = True
      Left = 290
      Top = 5
      Width = 604
      Height = 31
      Margins.Left = 55
      Margins.Top = 5
      Margins.Right = 100
      Margins.Bottom = 5
      Align = alClient
      CharCase = ecUpperCase
      TabOrder = 0
      Text = 'JAIRO ANO'
      OnChange = edtPesquisaChange
      ExplicitHeight = 29
    end
    object pnlImg: TPanel
      Left = 255
      Top = 6
      Width = 38
      Height = 30
      Anchors = [akLeft, akTop, akBottom]
      BevelOuter = bvNone
      TabOrder = 1
      object Image7: TImage
        Left = 3
        Top = 2
        Width = 24
        Height = 24
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 0
        Margins.Bottom = 8
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
          00180806000000E0773DF80000000467414D410000B18F0BFC61050000000662
          4B4744000000000000F943BB7F000000097048597300000EC400000EC401952B
          0E1B000001CD4944415478DADD95CD4EC24010C7778BD084C49B09899F500A5A
          F5EEC18F80EFA0127D012307AF5EF4A017AFC6A04FA0687C07C5A0071F00AA05
          694521211E4D8C8865FDAFC1C4102A45E1C2249BD96D77F6B73B3B334B498785
          762FC0171C9F255516C58C590CFB30F1193A49A810CB69A9AB3F0342A1504FBE
          50DA6784ACFE627530D2EF594F24121F2D03A48072585BFC156DD7A4E651AFD3
          F9F452A90C3A986305DF36D0DC1CA26B6AB425802FA0CC415DF2C519A1F34626
          7D536FE00D8C4F51C2CE394410AA33F77777D7F601B272822F4BE86EE91975C7
          F27E02CA26D4364E1A3732EA722B272840F5C32DFEBCA6E5AC8C6479D28F3959
          1817721975B0154019CAE57609622A957AB706C8A2499D6FE8BEE3A462C74E80
          6E118001DB0044501C7E8DD8BD03C2C8A99E5523F601C18919C6AA4962338A08
          A573BA964EDA067CED2EA8C4B0B33552CB03C4FEB128B2C772990EC12D3C62BE
          F3E00C79B0489A48C34C7E2896F66A102BAB33FC5F40CF600E16366E6F0DDB80
          6FF18F8E4E9B55210A77A016510FE1B588A1160934C6DD827BD0B9C79A41FE5C
          4D256962180B5F10C2240CF3705FB851E4FDAB5CDB81FCFB3D680669CB83F303
          D2D3110017EFD89897EBFACBEEE237B95DF209DFA5DF196AA03D840000002574
          455874646174653A63726561746500323032302D30352D32395431323A30303A
          32322B30303A303013B837380000002574455874646174653A6D6F6469667900
          323032302D30352D32395431323A30303A32322B30303A303062E58F84000000
          1974455874536F667477617265007777772E696E6B73636170652E6F72679BEE
          3C1A0000000049454E44AE426082}
      end
    end
    object Panel8: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 229
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object lblFiltro: TLabel
        AlignWithMargins = True
        Left = 30
        Top = 5
        Width = 151
        Height = 21
        Margins.Left = 30
        Margins.Top = 5
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Pesquisar por Nome:'
        Font.Charset = ANSI_CHARSET
        Font.Color = 2696481
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object DSFind: TDataSource
    DataSet = qryPesquisa
    Left = 212
    Top = 336
  end
  object qryPesquisa: TFDQuery
    Left = 220
    Top = 273
  end
end
