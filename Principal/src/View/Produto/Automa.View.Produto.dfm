inherited frmProdutos: TfrmProdutos
  Caption = 'Produtos'
  ClientHeight = 764
  ClientWidth = 1008
  OnDestroy = FormDestroy
  ExplicitWidth = 1008
  ExplicitHeight = 764
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlPrincipal: TPanel
    Width = 1008
    Height = 733
    ExplicitWidth = 1008
    ExplicitHeight = 733
    inherited PageControl: TPageControl
      Width = 1008
      Height = 680
      ActivePage = tabCRUD
      ExplicitWidth = 1008
      ExplicitHeight = 680
      inherited tabFind: TTabSheet
        ExplicitWidth = 1000
        ExplicitHeight = 648
        inherited pnlFind: TPanel
          Width = 1000
          Height = 648
          ExplicitWidth = 1000
          ExplicitHeight = 648
          inherited DBGrid: TDBGrid
            Width = 990
            Height = 523
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CODIGO'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 2696481
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI'
                Title.Font.Style = [fsBold]
                Width = 98
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME'
                Title.Caption = 'Nome'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 2696481
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI'
                Title.Font.Style = [fsBold]
                Width = 601
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'PRECO_CUSTO'
                Title.Alignment = taRightJustify
                Title.Caption = 'Pre'#231'o Custo'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 2696481
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI'
                Title.Font.Style = [fsBold]
                Width = 151
                Visible = True
              end>
          end
          inherited pnlInfoFind: TPanel
            Width = 1000
            ExplicitWidth = 1000
            inherited Label2: TLabel
              Width = 1000
              Height = 37
            end
          end
          inherited Panel4: TPanel
            Width = 1000
            ExplicitWidth = 1000
            DesignSize = (
              1000
              37)
            inherited edtPesquisa: TEdit
              Width = 610
              ExplicitWidth = 610
            end
            inherited Panel6: TPanel
              inherited lblFiltro: TLabel
                Height = 26
              end
            end
          end
          inherited Panel8: TPanel
            Top = 607
            Width = 1000
            ExplicitTop = 607
            ExplicitWidth = 1000
            inherited pnlPage: TPanel
              Width = 1000
              ExplicitWidth = 1000
              inherited Panel10: TPanel
                Left = 875
                ExplicitLeft = 875
              end
              inherited Panel11: TPanel
                Width = 750
                ExplicitWidth = 750
                inherited pnlPrior: TPanel
                  Left = 295
                  ExplicitLeft = 295
                  inherited Image8: TImage
                    Stretch = True
                  end
                end
                inherited pnlCurrentPage: TPanel
                  Left = 339
                  ExplicitLeft = 339
                end
                inherited pnlNext: TPanel
                  Left = 381
                  ExplicitLeft = 381
                  inherited Image9: TImage
                    Stretch = True
                  end
                end
              end
            end
          end
        end
      end
      inherited tabCRUD: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 28
        ExplicitWidth = 1000
        ExplicitHeight = 648
        inherited pageControlDados: TPageControl
          Width = 1000
          Height = 487
          ActivePage = TabSheet3
          ExplicitWidth = 1000
          ExplicitHeight = 487
          inherited TabSheet1: TTabSheet
            Caption = 'Principal'
            ExplicitLeft = 4
            ExplicitTop = 28
            ExplicitWidth = 992
            ExplicitHeight = 455
            inherited pnlCRUD: TPanel
              Width = 992
              Height = 455
              Margins.Right = 0
              ExplicitWidth = 992
              ExplicitHeight = 455
              object pnlTopAgrupaPreco: TPanel
                AlignWithMargins = True
                Left = 0
                Top = 0
                Width = 987
                Height = 312
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alTop
                BevelOuter = bvNone
                Color = 15856113
                ParentBackground = False
                TabOrder = 0
                object pnlEspecificacoes: TPanel
                  AlignWithMargins = True
                  Left = 0
                  Top = 5
                  Width = 366
                  Height = 307
                  Margins.Left = 0
                  Margins.Top = 5
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alClient
                  BevelOuter = bvNone
                  Color = 15856113
                  ParentBackground = False
                  TabOrder = 0
                  DesignSize = (
                    366
                    307)
                  object Shape14: TShape
                    AlignWithMargins = True
                    Left = 0
                    Top = 30
                    Width = 366
                    Height = 277
                    Margins.Left = 0
                    Margins.Top = 5
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alClient
                    Pen.Color = 12867584
                    Pen.Width = 2
                    Shape = stRoundRect
                    ExplicitLeft = -115
                    ExplicitWidth = 504
                  end
                  object Label8: TLabel
                    Left = 16
                    Top = 47
                    Width = 37
                    Height = 17
                    Caption = 'Marca'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 2696481
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label9: TLabel
                    Left = 16
                    Top = 106
                    Width = 50
                    Height = 17
                    Caption = 'Unidade'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 2696481
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label10: TLabel
                    Left = 16
                    Top = 166
                    Width = 38
                    Height = 17
                    Caption = 'Grupo'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 2696481
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label11: TLabel
                    Left = 16
                    Top = 230
                    Width = 135
                    Height = 17
                    Caption = 'Classifica'#231#227'o Tribut'#225'ria'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 2696481
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Panel14: TPanel
                    Left = 0
                    Top = 0
                    Width = 366
                    Height = 25
                    Align = alTop
                    BevelOuter = bvNone
                    Color = clWhite
                    ParentBackground = False
                    TabOrder = 0
                    object Shape3: TShape
                      Left = 0
                      Top = 0
                      Width = 366
                      Height = 25
                      Align = alClient
                      Brush.Color = 12867584
                      Pen.Color = 12867584
                      Pen.Width = 0
                      Shape = stRoundRect
                      ExplicitLeft = 8
                      ExplicitTop = 16
                      ExplicitWidth = 65
                      ExplicitHeight = 65
                    end
                    object Label14: TLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 0
                      Width = 356
                      Height = 25
                      Margins.Left = 10
                      Margins.Top = 0
                      Margins.Right = 0
                      Margins.Bottom = 0
                      Align = alClient
                      Caption = 'Especifica'#231#245'es'
                      Color = 16747306
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWhite
                      Font.Height = -16
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentColor = False
                      ParentFont = False
                      ExplicitWidth = 110
                      ExplicitHeight = 21
                    end
                  end
                  object fieldNOME_MARCA: TEdit
                    Left = 127
                    Top = 72
                    Width = 194
                    Height = 25
                    Anchors = [akLeft, akTop, akRight]
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object fieldCOD_UND: TEdit
                    Tag = 1
                    Left = 16
                    Top = 131
                    Width = 71
                    Height = 25
                    Alignment = taRightJustify
                    TabOrder = 3
                    OnKeyDown = fieldCOD_UNDKeyDown
                  end
                  object fieldNOME_UNIDADE: TEdit
                    Left = 127
                    Top = 131
                    Width = 194
                    Height = 25
                    Anchors = [akLeft, akTop, akRight]
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object fieldCOD_GRUPO: TEdit
                    Tag = 1
                    Left = 16
                    Top = 190
                    Width = 71
                    Height = 25
                    Alignment = taRightJustify
                    TabOrder = 5
                    OnKeyDown = fieldCOD_GRUPOKeyDown
                  end
                  object fieldNOME_GRUPO: TEdit
                    Left = 127
                    Top = 190
                    Width = 194
                    Height = 25
                    Anchors = [akLeft, akTop, akRight]
                    ReadOnly = True
                    TabOrder = 6
                  end
                  object fieldCOD_TRIBUTO: TEdit
                    Tag = 1
                    Left = 16
                    Top = 256
                    Width = 71
                    Height = 25
                    Alignment = taRightJustify
                    TabOrder = 7
                    OnKeyDown = fieldCOD_TRIBUTOKeyDown
                  end
                  object fieldNOME_TRIBUTO: TEdit
                    Left = 127
                    Top = 256
                    Width = 194
                    Height = 25
                    Anchors = [akLeft, akTop, akRight]
                    ReadOnly = True
                    TabOrder = 8
                  end
                  object fieldCOD_MARCA: TEdit
                    Tag = 1
                    Left = 16
                    Top = 72
                    Width = 71
                    Height = 25
                    Alignment = taRightJustify
                    TabOrder = 1
                    OnKeyDown = fieldCOD_MARCAKeyDown
                  end
                  object pnlFindMarca: TPanel
                    Left = 92
                    Top = 72
                    Width = 29
                    Height = 29
                    BevelOuter = bvNone
                    TabOrder = 9
                    OnMouseEnter = pnlInserirMouseEnter
                    OnMouseLeave = edtPesquisaMouseLeave
                    object Image14: TImage
                      Left = 3
                      Top = 2
                      Width = 24
                      Height = 24
                      Hint = 'Pesquisar Marca'
                      DragCursor = crHandPoint
                      ParentShowHint = False
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
                        455874646174653A63726561746500323032302D30352D32395431333A35323A
                        35362B30303A30304506BFC80000002574455874646174653A6D6F6469667900
                        323032302D30352D32395431333A35323A35362B30303A3030345B0774000000
                        1974455874536F667477617265007777772E696E6B73636170652E6F72679BEE
                        3C1A0000000049454E44AE426082}
                      ShowHint = True
                      OnClick = Image14Click
                      OnMouseEnter = pnlInserirMouseEnter
                      OnMouseLeave = edtPesquisaMouseLeave
                    end
                  end
                  object Panel13: TPanel
                    Left = 92
                    Top = 131
                    Width = 29
                    Height = 29
                    BevelOuter = bvNone
                    TabOrder = 10
                    OnMouseEnter = edtPesquisaMouseEnter
                    OnMouseLeave = edtPesquisaMouseLeave
                    object Image15: TImage
                      Left = 3
                      Top = 2
                      Width = 24
                      Height = 24
                      Hint = 'Pesquisar Unidade'
                      ParentShowHint = False
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
                        455874646174653A63726561746500323032302D30352D32395431333A35323A
                        35362B30303A30304506BFC80000002574455874646174653A6D6F6469667900
                        323032302D30352D32395431333A35323A35362B30303A3030345B0774000000
                        1974455874536F667477617265007777772E696E6B73636170652E6F72679BEE
                        3C1A0000000049454E44AE426082}
                      ShowHint = True
                      OnClick = Image15Click
                      OnMouseEnter = pnlInserirMouseEnter
                      OnMouseLeave = edtPesquisaMouseLeave
                    end
                  end
                  object Panel15: TPanel
                    Left = 92
                    Top = 190
                    Width = 29
                    Height = 29
                    BevelOuter = bvNone
                    TabOrder = 11
                    OnMouseEnter = edtPesquisaMouseEnter
                    OnMouseLeave = edtPesquisaMouseLeave
                    object Image16: TImage
                      Left = 3
                      Top = 2
                      Width = 24
                      Height = 24
                      Hint = 'Pesquisar Grupo'
                      ParentShowHint = False
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
                        455874646174653A63726561746500323032302D30352D32395431333A35323A
                        35362B30303A30304506BFC80000002574455874646174653A6D6F6469667900
                        323032302D30352D32395431333A35323A35362B30303A3030345B0774000000
                        1974455874536F667477617265007777772E696E6B73636170652E6F72679BEE
                        3C1A0000000049454E44AE426082}
                      ShowHint = True
                      OnClick = Image16Click
                      OnMouseEnter = pnlInserirMouseEnter
                      OnMouseLeave = edtPesquisaMouseLeave
                    end
                  end
                  object Panel18: TPanel
                    Left = 92
                    Top = 256
                    Width = 29
                    Height = 29
                    BevelOuter = bvNone
                    TabOrder = 12
                    OnMouseEnter = edtPesquisaMouseEnter
                    OnMouseLeave = edtPesquisaMouseLeave
                    object Image17: TImage
                      Left = 3
                      Top = 2
                      Width = 24
                      Height = 24
                      Hint = 'Pesquisar Tributo'
                      ParentShowHint = False
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
                        455874646174653A63726561746500323032302D30352D32395431333A35323A
                        35362B30303A30304506BFC80000002574455874646174653A6D6F6469667900
                        323032302D30352D32395431333A35323A35362B30303A3030345B0774000000
                        1974455874536F667477617265007777772E696E6B73636170652E6F72679BEE
                        3C1A0000000049454E44AE426082}
                      ShowHint = True
                      OnClick = Image17Click
                      OnMouseEnter = pnlInserirMouseEnter
                      OnMouseLeave = edtPesquisaMouseLeave
                    end
                  end
                  object pnlAddMarca: TPanel
                    Left = 324
                    Top = 72
                    Width = 29
                    Height = 29
                    Anchors = [akTop, akRight]
                    BevelOuter = bvNone
                    TabOrder = 13
                    OnMouseEnter = pnlInserirMouseEnter
                    OnMouseLeave = edtPesquisaMouseLeave
                    object imgAddMarca: TImage
                      Left = 3
                      Top = 2
                      Width = 24
                      Height = 24
                      Hint = 'Cadastro R'#225'pido de Marca'
                      DragCursor = crHandPoint
                      ParentShowHint = False
                      Picture.Data = {
                        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                        00180806000000E0773DF80000000467414D410000B18F0BFC61050000000662
                        4B4744000000000000F943BB7F000000097048597300000EC400000EC401952B
                        0E1B0000003A4944415478DA6364A031601CB5606859A0AEAEFE1F44DFBC7993
                        687DA3168C540B6006910AB0593C3016D03C88462D18C1169003462D18780B00
                        47E6381966AD3E730000002574455874646174653A6372656174650032303230
                        2D30362D30335431333A35383A32392B30303A30302D70FAB300000025744558
                        74646174653A6D6F6469667900323032302D30362D30335431333A35383A3239
                        2B30303A30305C2D420F0000001974455874536F667477617265007777772E69
                        6E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
                      ShowHint = True
                      OnClick = imgAddMarcaClick
                      OnMouseEnter = pnlInserirMouseEnter
                      OnMouseLeave = edtPesquisaMouseLeave
                    end
                  end
                  object pnlAddUnidade: TPanel
                    Left = 324
                    Top = 131
                    Width = 29
                    Height = 29
                    Anchors = [akTop, akRight]
                    BevelOuter = bvNone
                    TabOrder = 14
                    OnMouseEnter = pnlInserirMouseEnter
                    OnMouseLeave = edtPesquisaMouseLeave
                    object imgAddUnidade: TImage
                      Left = 3
                      Top = 2
                      Width = 24
                      Height = 24
                      Hint = 'Cadastro R'#225'pido de Unidade'
                      DragCursor = crHandPoint
                      ParentShowHint = False
                      Picture.Data = {
                        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                        00180806000000E0773DF80000000467414D410000B18F0BFC61050000000662
                        4B4744000000000000F943BB7F000000097048597300000EC400000EC401952B
                        0E1B0000003A4944415478DA6364A031601CB5606859A0AEAEFE1F44DFBC7993
                        687DA3168C540B6006910AB0593C3016D03C88462D18C1169003462D18780B00
                        47E6381966AD3E730000002574455874646174653A6372656174650032303230
                        2D30362D30335431333A35383A32392B30303A30302D70FAB300000025744558
                        74646174653A6D6F6469667900323032302D30362D30335431333A35383A3239
                        2B30303A30305C2D420F0000001974455874536F667477617265007777772E69
                        6E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
                      ShowHint = True
                      OnClick = imgAddUnidadeClick
                      OnMouseEnter = pnlInserirMouseEnter
                      OnMouseLeave = edtPesquisaMouseLeave
                    end
                  end
                  object pnlAddGrupo: TPanel
                    Left = 327
                    Top = 190
                    Width = 29
                    Height = 29
                    Anchors = [akTop, akRight]
                    BevelOuter = bvNone
                    TabOrder = 15
                    OnMouseEnter = pnlInserirMouseEnter
                    OnMouseLeave = edtPesquisaMouseLeave
                    object imgAddGrupo: TImage
                      Left = 0
                      Top = 2
                      Width = 24
                      Height = 24
                      Hint = 'Cadastro R'#225'pido de Grupo'
                      DragCursor = crHandPoint
                      ParentShowHint = False
                      Picture.Data = {
                        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                        00180806000000E0773DF80000000467414D410000B18F0BFC61050000000662
                        4B4744000000000000F943BB7F000000097048597300000EC400000EC401952B
                        0E1B0000003A4944415478DA6364A031601CB5606859A0AEAEFE1F44DFBC7993
                        687DA3168C540B6006910AB0593C3016D03C88462D18C1169003462D18780B00
                        47E6381966AD3E730000002574455874646174653A6372656174650032303230
                        2D30362D30335431333A35383A32392B30303A30302D70FAB300000025744558
                        74646174653A6D6F6469667900323032302D30362D30335431333A35383A3239
                        2B30303A30305C2D420F0000001974455874536F667477617265007777772E69
                        6E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
                      ShowHint = True
                      OnClick = imgAddGrupoClick
                      OnMouseEnter = pnlInserirMouseEnter
                      OnMouseLeave = edtPesquisaMouseLeave
                    end
                  end
                  object pnlAddTributo: TPanel
                    Left = 327
                    Top = 256
                    Width = 29
                    Height = 29
                    Anchors = [akTop, akRight]
                    BevelOuter = bvNone
                    TabOrder = 16
                    OnMouseEnter = pnlInserirMouseEnter
                    OnMouseLeave = edtPesquisaMouseLeave
                    object imgAddTributo: TImage
                      Left = 0
                      Top = 2
                      Width = 24
                      Height = 24
                      Hint = 'Cadastro R'#225'pido de Tributa'#231#227'o'
                      DragCursor = crHandPoint
                      ParentShowHint = False
                      Picture.Data = {
                        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                        00180806000000E0773DF80000000467414D410000B18F0BFC61050000000662
                        4B4744000000000000F943BB7F000000097048597300000EC400000EC401952B
                        0E1B0000003A4944415478DA6364A031601CB5606859A0AEAEFE1F44DFBC7993
                        687DA3168C540B6006910AB0593C3016D03C88462D18C1169003462D18780B00
                        47E6381966AD3E730000002574455874646174653A6372656174650032303230
                        2D30362D30335431333A35383A32392B30303A30302D70FAB300000025744558
                        74646174653A6D6F6469667900323032302D30362D30335431333A35383A3239
                        2B30303A30305C2D420F0000001974455874536F667477617265007777772E69
                        6E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
                      ShowHint = True
                      OnClick = imgAddTributoClick
                      OnMouseEnter = pnlInserirMouseEnter
                      OnMouseLeave = edtPesquisaMouseLeave
                    end
                  end
                end
                object pnlAggrupaPreco: TPanel
                  AlignWithMargins = True
                  Left = 376
                  Top = 5
                  Width = 611
                  Height = 307
                  Margins.Left = 10
                  Margins.Top = 5
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alRight
                  BevelOuter = bvNone
                  Color = 15856113
                  ParentBackground = False
                  TabOrder = 1
                  object pnlPrecoCusto: TPanel
                    AlignWithMargins = True
                    Left = 0
                    Top = 0
                    Width = 611
                    Height = 174
                    Margins.Left = 0
                    Margins.Top = 0
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alTop
                    BevelOuter = bvNone
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 2696481
                    Font.Height = -13
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    object shpPrecoCusto: TShape
                      AlignWithMargins = True
                      Left = 0
                      Top = 30
                      Width = 611
                      Height = 144
                      Margins.Left = 0
                      Margins.Top = 5
                      Margins.Right = 0
                      Margins.Bottom = 0
                      Align = alClient
                      Pen.Color = 3093442
                      Pen.Width = 2
                      Shape = stRoundRect
                      ExplicitLeft = -10
                      ExplicitTop = 37
                      ExplicitWidth = 921
                    end
                    object Label13: TLabel
                      Left = 15
                      Top = 47
                      Width = 38
                      Height = 17
                      Caption = 'Tabela'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label15: TLabel
                      Left = 102
                      Top = 47
                      Width = 35
                      Height = 17
                      Caption = 'Custo'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 3093442
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label16: TLabel
                      Left = 186
                      Top = 47
                      Width = 27
                      Height = 17
                      Caption = 'IPI%'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label18: TLabel
                      Left = 271
                      Top = 47
                      Width = 42
                      Height = 17
                      Caption = 'Frete%'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label19: TLabel
                      Left = 357
                      Top = 47
                      Width = 75
                      Height = 17
                      Caption = 'C Icms Frete'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label20: TLabel
                      Left = 446
                      Top = 47
                      Width = 76
                      Height = 17
                      Caption = 'Subs. Trib. %'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label21: TLabel
                      Left = 539
                      Top = 47
                      Width = 60
                      Height = 17
                      Caption = 'Cred Icms'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label22: TLabel
                      Left = 15
                      Top = 104
                      Width = 53
                      Height = 17
                      Caption = 'Acr'#233'sc.%'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label23: TLabel
                      Left = 102
                      Top = 104
                      Width = 42
                      Height = 17
                      Caption = 'Desc.%'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label24: TLabel
                      Left = 186
                      Top = 104
                      Width = 59
                      Height = 17
                      Caption = 'Custo F.%'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label25: TLabel
                      Left = 271
                      Top = 104
                      Width = 28
                      Height = 17
                      Caption = 'Pis%'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label26: TLabel
                      Left = 357
                      Top = 104
                      Width = 48
                      Height = 17
                      Caption = 'Cofins%'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label27: TLabel
                      Left = 446
                      Top = 104
                      Width = 42
                      Height = 17
                      Caption = 'ICMS%'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label28: TLabel
                      Left = 534
                      Top = 104
                      Width = 67
                      Height = 17
                      Caption = 'Custo Final'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 3093442
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object fieldPRECO_TAB: TEdit
                      Left = 14
                      Top = 75
                      Width = 70
                      Height = 25
                      Alignment = taRightJustify
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                      Text = '10.000,00'
                      OnExit = fieldPRECO_TABExit
                    end
                    object fieldPRECO_CUSTO: TEdit
                      Left = 102
                      Top = 75
                      Width = 70
                      Height = 25
                      Alignment = taRightJustify
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 3093442
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 1
                      OnExit = fieldPRECO_CUSTOExit
                    end
                    object fieldIPI: TEdit
                      Left = 186
                      Top = 75
                      Width = 70
                      Height = 25
                      Alignment = taRightJustify
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 2
                      OnExit = fieldPRECO_CUSTOExit
                    end
                    object fieldFRETE: TEdit
                      Left = 271
                      Top = 75
                      Width = 70
                      Height = 25
                      Alignment = taRightJustify
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 3
                      OnExit = fieldPRECO_CUSTOExit
                    end
                    object fieldCICMS_FRETE: TEdit
                      Left = 357
                      Top = 75
                      Width = 70
                      Height = 25
                      Alignment = taRightJustify
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 4
                      OnExit = fieldPRECO_CUSTOExit
                    end
                    object fieldSTRIB: TEdit
                      Left = 446
                      Top = 75
                      Width = 70
                      Height = 25
                      Alignment = taRightJustify
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 5
                      OnExit = fieldPRECO_CUSTOExit
                    end
                    object fieldCICMS: TEdit
                      Left = 532
                      Top = 75
                      Width = 70
                      Height = 25
                      Alignment = taRightJustify
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 6
                      OnExit = fieldPRECO_CUSTOExit
                    end
                    object fieldACRESC: TEdit
                      Left = 15
                      Top = 131
                      Width = 70
                      Height = 25
                      Alignment = taRightJustify
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 7
                      OnExit = fieldPRECO_CUSTOExit
                    end
                    object fieldDESCONTO: TEdit
                      Left = 102
                      Top = 131
                      Width = 70
                      Height = 25
                      Alignment = taRightJustify
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 8
                      OnExit = fieldPRECO_CUSTOExit
                    end
                    object fieldCFIXO: TEdit
                      Left = 186
                      Top = 131
                      Width = 70
                      Height = 25
                      Alignment = taRightJustify
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 9
                      OnExit = fieldPRECO_CUSTOExit
                    end
                    object fieldPIS: TEdit
                      Left = 271
                      Top = 131
                      Width = 70
                      Height = 25
                      Alignment = taRightJustify
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 10
                      OnExit = fieldPRECO_CUSTOExit
                    end
                    object fieldCOFINS: TEdit
                      Left = 357
                      Top = 131
                      Width = 70
                      Height = 25
                      Alignment = taRightJustify
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 11
                      OnExit = fieldPRECO_CUSTOExit
                    end
                    object fieldICMS: TEdit
                      Left = 446
                      Top = 131
                      Width = 70
                      Height = 25
                      Alignment = taRightJustify
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 12
                      OnExit = fieldPRECO_CUSTOExit
                    end
                    object fieldCUSTO_FINAL: TEdit
                      Left = 532
                      Top = 131
                      Width = 70
                      Height = 25
                      Alignment = taRightJustify
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 3093442
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 13
                      OnExit = fieldPRECO_CUSTOExit
                    end
                    object Panel17: TPanel
                      Left = 0
                      Top = 0
                      Width = 611
                      Height = 25
                      Align = alTop
                      BevelOuter = bvNone
                      Color = clWhite
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -16
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentBackground = False
                      ParentFont = False
                      TabOrder = 14
                      object Shape4: TShape
                        Left = 0
                        Top = 0
                        Width = 611
                        Height = 25
                        Align = alClient
                        Brush.Color = 3093442
                        Pen.Color = 3093442
                        Pen.Width = 0
                        Shape = stRoundRect
                        ExplicitLeft = 8
                        ExplicitTop = 16
                        ExplicitWidth = 65
                        ExplicitHeight = 65
                      end
                      object Label30: TLabel
                        AlignWithMargins = True
                        Left = 10
                        Top = 0
                        Width = 601
                        Height = 25
                        Margins.Left = 10
                        Margins.Top = 0
                        Margins.Right = 0
                        Margins.Bottom = 0
                        Align = alClient
                        Caption = 'Pre'#231'o de Custo'
                        Color = 16747306
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWhite
                        Font.Height = -16
                        Font.Name = 'Segoe UI'
                        Font.Style = [fsBold]
                        ParentColor = False
                        ParentFont = False
                        ExplicitWidth = 113
                        ExplicitHeight = 21
                      end
                    end
                  end
                  object pnlPrecoVenda: TPanel
                    AlignWithMargins = True
                    Left = 5
                    Top = 184
                    Width = 463
                    Height = 123
                    Margins.Left = 5
                    Margins.Top = 10
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alClient
                    BevelOuter = bvNone
                    TabOrder = 1
                    object Shape1: TShape
                      AlignWithMargins = True
                      Left = 0
                      Top = 30
                      Width = 463
                      Height = 93
                      Margins.Left = 0
                      Margins.Top = 5
                      Margins.Right = 0
                      Margins.Bottom = 0
                      Align = alClient
                      Pen.Color = 3574072
                      Pen.Width = 2
                      Shape = stRoundRect
                      ExplicitLeft = -1
                      ExplicitWidth = 498
                    end
                    object Label12: TLabel
                      Left = 10
                      Top = 45
                      Width = 44
                      Height = 17
                      Caption = '% Vista'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label35: TLabel
                      Left = 170
                      Top = 45
                      Width = 50
                      Height = 17
                      Alignment = taRightJustify
                      Caption = 'Vista R$'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 3574072
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label36: TLabel
                      Left = 247
                      Top = 45
                      Width = 53
                      Height = 17
                      Alignment = taRightJustify
                      Caption = 'Prazo R$'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 3574072
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label29: TLabel
                      Left = 79
                      Top = 45
                      Width = 49
                      Height = 17
                      Caption = '% Prazo'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label31: TLabel
                      Left = 326
                      Top = 45
                      Width = 52
                      Height = 17
                      Caption = '% Comis'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label32: TLabel
                      Left = 393
                      Top = 45
                      Width = 61
                      Height = 17
                      Caption = 'Desc. M'#225'x'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object fieldPORC_VISTA: TEdit
                      Left = 10
                      Top = 72
                      Width = 60
                      Height = 25
                      Alignment = taRightJustify
                      TabOrder = 1
                      Text = '100'
                      OnExit = fieldPRECO_CUSTOExit
                    end
                    object fieldPRECO: TEdit
                      Left = 150
                      Top = 72
                      Width = 70
                      Height = 25
                      Alignment = taRightJustify
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 3574072
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 3
                      OnExit = fieldPRECOExit
                    end
                    object fieldPRECO_PRAZO: TEdit
                      Left = 230
                      Top = 72
                      Width = 70
                      Height = 25
                      Alignment = taRightJustify
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 3574072
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 4
                      OnExit = fieldPRECOExit
                    end
                    object Panel16: TPanel
                      Left = 0
                      Top = 0
                      Width = 463
                      Height = 25
                      Align = alTop
                      BevelOuter = bvNone
                      Color = clWhite
                      ParentBackground = False
                      TabOrder = 0
                      object Shape5: TShape
                        Left = 0
                        Top = 0
                        Width = 463
                        Height = 25
                        Align = alClient
                        Brush.Color = 3574072
                        Pen.Color = 3574072
                        Pen.Width = 0
                        Shape = stRoundRect
                        ExplicitLeft = 8
                        ExplicitTop = 16
                        ExplicitWidth = 65
                        ExplicitHeight = 65
                      end
                      object Label17: TLabel
                        AlignWithMargins = True
                        Left = 10
                        Top = 0
                        Width = 453
                        Height = 25
                        Margins.Left = 10
                        Margins.Top = 0
                        Margins.Right = 0
                        Margins.Bottom = 0
                        Align = alClient
                        Caption = 'Pre'#231'o de Venda'
                        Color = 4700234
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWhite
                        Font.Height = -16
                        Font.Name = 'Segoe UI'
                        Font.Style = [fsBold]
                        ParentColor = False
                        ParentFont = False
                        ExplicitWidth = 118
                        ExplicitHeight = 21
                      end
                    end
                    object fieldPORC_PRAZO: TEdit
                      Left = 79
                      Top = 72
                      Width = 60
                      Height = 25
                      Alignment = taRightJustify
                      TabOrder = 2
                      OnExit = fieldPRECO_CUSTOExit
                    end
                    object fieldPCOMIS: TEdit
                      Left = 313
                      Top = 72
                      Width = 65
                      Height = 25
                      Alignment = taRightJustify
                      TabOrder = 5
                    end
                    object fieldDESC_MAX: TEdit
                      Left = 389
                      Top = 72
                      Width = 65
                      Height = 25
                      Alignment = taRightJustify
                      TabOrder = 6
                    end
                  end
                  object pnlEstoque: TPanel
                    AlignWithMargins = True
                    Left = 473
                    Top = 184
                    Width = 138
                    Height = 123
                    Margins.Left = 5
                    Margins.Top = 10
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alRight
                    BevelOuter = bvNone
                    TabOrder = 2
                    object Shape6: TShape
                      AlignWithMargins = True
                      Left = 0
                      Top = 30
                      Width = 138
                      Height = 93
                      Margins.Left = 0
                      Margins.Top = 5
                      Margins.Right = 0
                      Margins.Bottom = 0
                      Align = alClient
                      Pen.Color = 11730944
                      Pen.Width = 2
                      Shape = stRoundRect
                      ExplicitLeft = -2
                      ExplicitWidth = 189
                      ExplicitHeight = 103
                    end
                    object Label39: TLabel
                      Left = 8
                      Top = 45
                      Width = 53
                      Height = 17
                      Caption = 'Estoque '
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label33: TLabel
                      Left = 71
                      Top = 45
                      Width = 51
                      Height = 17
                      Caption = 'Est. Min.'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Panel19: TPanel
                      Left = 0
                      Top = 0
                      Width = 138
                      Height = 25
                      Margins.Top = 20
                      Align = alTop
                      BevelOuter = bvNone
                      Color = clWhite
                      ParentBackground = False
                      TabOrder = 0
                      object Shape7: TShape
                        Left = 0
                        Top = 0
                        Width = 138
                        Height = 25
                        Align = alClient
                        Brush.Color = 11730944
                        Pen.Color = 11730944
                        Pen.Width = 0
                        Shape = stRoundRect
                        ExplicitLeft = 8
                        ExplicitTop = 16
                        ExplicitWidth = 65
                        ExplicitHeight = 65
                      end
                      object Label41: TLabel
                        AlignWithMargins = True
                        Left = 10
                        Top = 0
                        Width = 128
                        Height = 25
                        Margins.Left = 10
                        Margins.Top = 0
                        Margins.Right = 0
                        Margins.Bottom = 0
                        Align = alClient
                        Caption = 'Estoque'
                        Color = 5353197
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWhite
                        Font.Height = -16
                        Font.Name = 'Segoe UI'
                        Font.Style = [fsBold]
                        ParentColor = False
                        ParentFont = False
                        ExplicitWidth = 61
                        ExplicitHeight = 21
                      end
                    end
                    object fieldESTOQUE_MAX: TEdit
                      Left = 8
                      Top = 72
                      Width = 55
                      Height = 25
                      Alignment = taRightJustify
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 1
                    end
                    object fieldEST_MIN: TEdit
                      Left = 71
                      Top = 72
                      Width = 55
                      Height = 25
                      Alignment = taRightJustify
                      Font.Charset = ANSI_CHARSET
                      Font.Color = 2696481
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 2
                    end
                  end
                end
              end
              object pnlAgrupaImpostos: TPanel
                AlignWithMargins = True
                Left = 0
                Top = 317
                Width = 992
                Height = 138
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alClient
                BevelOuter = bvNone
                Color = 15856113
                ParentBackground = False
                TabOrder = 1
                object pnlImpostos: TPanel
                  AlignWithMargins = True
                  Left = 0
                  Top = 0
                  Width = 421
                  Height = 138
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alLeft
                  BevelOuter = bvNone
                  Color = 15856113
                  ParentBackground = False
                  TabOrder = 0
                  object Shape15: TShape
                    AlignWithMargins = True
                    Left = 0
                    Top = 30
                    Width = 421
                    Height = 108
                    Margins.Left = 0
                    Margins.Top = 5
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alClient
                    Pen.Color = 12867584
                    Pen.Width = 2
                    Shape = stRoundRect
                    ExplicitLeft = 231
                    ExplicitHeight = 96
                  end
                  object Label34: TLabel
                    Left = 16
                    Top = 41
                    Width = 30
                    Height = 17
                    Caption = 'NCM'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 2696481
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label38: TLabel
                    Left = 102
                    Top = 41
                    Width = 29
                    Height = 17
                    Caption = 'CEST'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 2696481
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label40: TLabel
                    Left = 179
                    Top = 41
                    Width = 69
                    Height = 17
                    Caption = 'CFOP Dent.'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 2696481
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label42: TLabel
                    Left = 259
                    Top = 41
                    Width = 64
                    Height = 17
                    Caption = 'CFOP Fora'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 2696481
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label43: TLabel
                    Left = 339
                    Top = 41
                    Width = 69
                    Height = 17
                    Caption = 'CSOSN/CST'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 2696481
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object fieldNCM: TEdit
                    Left = 16
                    Top = 69
                    Width = 77
                    Height = 25
                    TabOrder = 1
                    Text = '123456789'
                  end
                  object fieldCEST: TEdit
                    Left = 102
                    Top = 69
                    Width = 68
                    Height = 25
                    TabOrder = 2
                    Text = '1234567'
                  end
                  object fieldCFOPDENTRO: TEdit
                    Left = 179
                    Top = 69
                    Width = 70
                    Height = 25
                    Alignment = taRightJustify
                    TabOrder = 3
                  end
                  object fieldCFOPFORA: TEdit
                    Left = 258
                    Top = 69
                    Width = 70
                    Height = 25
                    Alignment = taRightJustify
                    TabOrder = 4
                  end
                  object fieldCSOSN: TEdit
                    Tag = 2
                    Left = 339
                    Top = 69
                    Width = 69
                    Height = 25
                    Alignment = taRightJustify
                    TabOrder = 5
                  end
                  object Panel21: TPanel
                    Left = 0
                    Top = 0
                    Width = 421
                    Height = 25
                    Align = alTop
                    BevelOuter = bvNone
                    Color = clWhite
                    ParentBackground = False
                    TabOrder = 0
                    object Shape9: TShape
                      Left = 0
                      Top = 0
                      Width = 421
                      Height = 25
                      Align = alClient
                      Brush.Color = 12867584
                      Pen.Color = 12867584
                      Pen.Width = 0
                      Shape = stRoundRect
                      ExplicitLeft = 8
                      ExplicitTop = 16
                      ExplicitWidth = 65
                      ExplicitHeight = 65
                    end
                    object Label52: TLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 0
                      Width = 411
                      Height = 25
                      Margins.Left = 10
                      Margins.Top = 0
                      Margins.Right = 0
                      Margins.Bottom = 0
                      Align = alClient
                      Caption = 'Impostos'
                      Color = 16747306
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWhite
                      Font.Height = -16
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentColor = False
                      ParentFont = False
                      ExplicitWidth = 70
                      ExplicitHeight = 21
                    end
                  end
                end
                object pnlOutrosDados: TPanel
                  AlignWithMargins = True
                  Left = 431
                  Top = 0
                  Width = 561
                  Height = 138
                  Margins.Left = 10
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alClient
                  BevelOuter = bvNone
                  Color = 15856113
                  ParentBackground = False
                  TabOrder = 1
                  DesignSize = (
                    561
                    138)
                  object Shape10: TShape
                    AlignWithMargins = True
                    Left = 0
                    Top = 30
                    Width = 561
                    Height = 108
                    Margins.Left = 0
                    Margins.Top = 5
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alClient
                    Pen.Color = 12867584
                    Pen.Width = 2
                    Shape = stRoundRect
                    ExplicitLeft = 928
                    ExplicitTop = 104
                    ExplicitWidth = 65
                    ExplicitHeight = 65
                  end
                  object Label37: TLabel
                    Left = 10
                    Top = 41
                    Width = 72
                    Height = 17
                    Caption = 'Observa'#231#227'o'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 2696481
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Panel24: TPanel
                    Left = 0
                    Top = 0
                    Width = 561
                    Height = 25
                    Align = alTop
                    BevelOuter = bvNone
                    Color = clWhite
                    ParentBackground = False
                    TabOrder = 0
                    object Shape11: TShape
                      Left = 0
                      Top = 0
                      Width = 561
                      Height = 25
                      Align = alClient
                      Brush.Color = 12867584
                      Pen.Color = 12867584
                      Pen.Width = 0
                      Shape = stRoundRect
                      ExplicitLeft = 8
                      ExplicitTop = 16
                      ExplicitWidth = 65
                      ExplicitHeight = 65
                    end
                    object Label48: TLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 0
                      Width = 551
                      Height = 25
                      Margins.Left = 10
                      Margins.Top = 0
                      Margins.Right = 0
                      Margins.Bottom = 0
                      Align = alClient
                      Caption = 'Outros Dados'
                      Color = 16747306
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWhite
                      Font.Height = -16
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentColor = False
                      ParentFont = False
                      ExplicitWidth = 103
                      ExplicitHeight = 21
                    end
                  end
                  object fieldOBS: TEdit
                    Tag = 1
                    Left = 10
                    Top = 69
                    Width = 534
                    Height = 25
                    Anchors = [akLeft, akTop, akRight]
                    CharCase = ecUpperCase
                    TabOrder = 1
                  end
                end
              end
            end
          end
          inherited TabSheet2: TTabSheet
            Caption = 'Detalhes'
            ExplicitLeft = 4
            ExplicitTop = 28
            ExplicitWidth = 992
            ExplicitHeight = 455
            object pnlAgrupaDetalhes: TPanel
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 992
              Height = 113
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              BevelOuter = bvNone
              Color = 15856113
              ParentBackground = False
              TabOrder = 0
              object pnlTipo: TPanel
                AlignWithMargins = True
                Left = 468
                Top = 0
                Width = 519
                Height = 108
                Margins.Left = 5
                Margins.Top = 0
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alClient
                BevelOuter = bvNone
                Color = 15856113
                ParentBackground = False
                TabOrder = 0
                object Shape16: TShape
                  AlignWithMargins = True
                  Left = 0
                  Top = 30
                  Width = 519
                  Height = 78
                  Margins.Left = 0
                  Margins.Top = 5
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alClient
                  Pen.Color = 12867584
                  Pen.Width = 2
                  Shape = stRoundRect
                  ExplicitLeft = 928
                  ExplicitTop = 104
                  ExplicitWidth = 1323
                  ExplicitHeight = 72
                end
                object Label46: TLabel
                  Left = 256
                  Top = 36
                  Width = 29
                  Height = 17
                  Caption = 'Peso'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label47: TLabel
                  Left = 345
                  Top = 36
                  Width = 50
                  Height = 17
                  Caption = 'M'#250'ltiplo'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label49: TLabel
                  Left = 433
                  Top = 36
                  Width = 43
                  Height = 17
                  Caption = 'Metros'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Panel30: TPanel
                  Left = 0
                  Top = 0
                  Width = 519
                  Height = 25
                  Align = alTop
                  BevelOuter = bvNone
                  Color = 15856113
                  ParentBackground = False
                  TabOrder = 0
                  object Shape17: TShape
                    Left = 0
                    Top = 0
                    Width = 519
                    Height = 25
                    Hint = '$00C45800'
                    Align = alClient
                    Brush.Color = 12867584
                    Pen.Color = 12867584
                    Pen.Width = 0
                    Shape = stRoundRect
                    ExplicitLeft = 8
                    ExplicitTop = 16
                    ExplicitWidth = 1323
                    ExplicitHeight = 65
                  end
                  object Label53: TLabel
                    AlignWithMargins = True
                    Left = 10
                    Top = 0
                    Width = 509
                    Height = 25
                    Margins.Left = 10
                    Margins.Top = 0
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alClient
                    Caption = 'Tipo'
                    Color = 16747306
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -16
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    ExplicitWidth = 34
                    ExplicitHeight = 21
                  end
                end
                object fieldPISO: TRadioGroup
                  Left = 8
                  Top = 32
                  Width = 68
                  Height = 67
                  Caption = 'Piso'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ItemIndex = 0
                  Items.Strings = (
                    'Sim'
                    'N'#227'o')
                  ParentFont = False
                  TabOrder = 1
                end
                object fieldFLG_FRACIONA: TRadioGroup
                  Left = 90
                  Top = 32
                  Width = 68
                  Height = 67
                  Caption = 'Fraciona'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ItemIndex = 0
                  Items.Strings = (
                    'Sim'
                    'N'#227'o')
                  ParentFont = False
                  TabOrder = 2
                end
                object fieldBALANCA: TRadioGroup
                  Left = 173
                  Top = 32
                  Width = 68
                  Height = 67
                  Caption = 'Balan'#231'a'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ItemIndex = 0
                  Items.Strings = (
                    'Sim'
                    'N'#227'o')
                  ParentFont = False
                  TabOrder = 3
                end
                object fieldPESO: TEdit
                  Left = 256
                  Top = 63
                  Width = 76
                  Height = 25
                  CharCase = ecUpperCase
                  TabOrder = 4
                end
                object fieldMULTIPLO: TEdit
                  Left = 345
                  Top = 63
                  Width = 76
                  Height = 25
                  CharCase = ecUpperCase
                  TabOrder = 5
                end
                object fieldMETROS: TEdit
                  Left = 433
                  Top = 63
                  Width = 76
                  Height = 25
                  CharCase = ecUpperCase
                  TabOrder = 6
                end
              end
              object pnlDetalhes: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 0
                Width = 453
                Height = 108
                Margins.Left = 5
                Margins.Top = 0
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alLeft
                BevelOuter = bvNone
                Color = 15856113
                ParentBackground = False
                TabOrder = 1
                object Shape18: TShape
                  AlignWithMargins = True
                  Left = 0
                  Top = 30
                  Width = 453
                  Height = 78
                  Margins.Left = 0
                  Margins.Top = 5
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alClient
                  Pen.Color = 12867584
                  Pen.Width = 2
                  Shape = stRoundRect
                  ExplicitLeft = 928
                  ExplicitTop = 104
                  ExplicitWidth = 1323
                  ExplicitHeight = 72
                end
                object Label54: TLabel
                  Left = 16
                  Top = 36
                  Width = 88
                  Height = 17
                  Caption = 'Garantia (Dias)'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label55: TLabel
                  Left = 122
                  Top = 36
                  Width = 90
                  Height = 17
                  Caption = 'Validade (Data)'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Panel33: TPanel
                  Left = 0
                  Top = 0
                  Width = 453
                  Height = 25
                  Align = alTop
                  BevelOuter = bvNone
                  Color = 15856113
                  ParentBackground = False
                  TabOrder = 0
                  object Shape19: TShape
                    Left = 0
                    Top = 0
                    Width = 453
                    Height = 25
                    Hint = '$00C45800'
                    Align = alClient
                    Brush.Color = 12867584
                    Pen.Color = 12867584
                    Pen.Width = 0
                    Shape = stRoundRect
                    ExplicitLeft = 8
                    ExplicitTop = 16
                    ExplicitWidth = 1323
                    ExplicitHeight = 65
                  end
                  object Label57: TLabel
                    AlignWithMargins = True
                    Left = 10
                    Top = 0
                    Width = 443
                    Height = 25
                    Margins.Left = 10
                    Margins.Top = 0
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alClient
                    Caption = 'Detalhes'
                    Color = 16747306
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -16
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    ExplicitWidth = 67
                    ExplicitHeight = 21
                  end
                end
                object fieldGARANTIA: TEdit
                  Left = 16
                  Top = 63
                  Width = 88
                  Height = 25
                  CharCase = ecUpperCase
                  TabOrder = 1
                end
                object fieldVALIDADE: TEdit
                  Left = 122
                  Top = 63
                  Width = 90
                  Height = 25
                  CharCase = ecUpperCase
                  TabOrder = 2
                end
                object fieldPROMOCAO: TRadioGroup
                  Left = 342
                  Top = 32
                  Width = 96
                  Height = 67
                  Caption = 'Promo'#231#227'o'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ItemIndex = 0
                  Items.Strings = (
                    'Sim'
                    'N'#227'o')
                  ParentFont = False
                  TabOrder = 4
                end
                object fieldSITUACAO: TRadioGroup
                  Tag = 1
                  Left = 230
                  Top = 34
                  Width = 95
                  Height = 65
                  Caption = 'Situa'#231#227'o'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ItemIndex = 0
                  Items.Strings = (
                    'Ativo'
                    'Inativo')
                  ParentFont = False
                  TabOrder = 3
                end
              end
            end
            object pnlAgrupaLocalizacao: TPanel
              AlignWithMargins = True
              Left = 0
              Top = 113
              Width = 992
              Height = 113
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              BevelOuter = bvNone
              Color = 15856113
              ParentBackground = False
              TabOrder = 1
              object pnlLocalizacao: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 0
                Width = 453
                Height = 108
                Margins.Left = 5
                Margins.Top = 0
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alLeft
                BevelOuter = bvNone
                Color = 15856113
                ParentBackground = False
                TabOrder = 0
                object Shape12: TShape
                  AlignWithMargins = True
                  Left = 0
                  Top = 30
                  Width = 453
                  Height = 78
                  Margins.Left = 0
                  Margins.Top = 5
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alClient
                  Pen.Color = 12867584
                  Pen.Width = 2
                  Shape = stRoundRect
                  ExplicitLeft = 928
                  ExplicitTop = 104
                  ExplicitWidth = 1323
                  ExplicitHeight = 72
                end
                object Label44: TLabel
                  Left = 16
                  Top = 36
                  Width = 51
                  Height = 17
                  Caption = 'G'#244'ndola'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label45: TLabel
                  Left = 268
                  Top = 36
                  Width = 57
                  Height = 17
                  Caption = 'Preteleira'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label50: TLabel
                  Left = 359
                  Top = 36
                  Width = 42
                  Height = 17
                  Caption = 'Coluna'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Panel27: TPanel
                  Left = 0
                  Top = 0
                  Width = 453
                  Height = 25
                  Align = alTop
                  BevelOuter = bvNone
                  Color = 15856113
                  ParentBackground = False
                  TabOrder = 0
                  object Shape13: TShape
                    Left = 0
                    Top = 0
                    Width = 453
                    Height = 25
                    Hint = '$00C45800'
                    Align = alClient
                    Brush.Color = 12867584
                    Pen.Color = 12867584
                    Pen.Width = 0
                    Shape = stRoundRect
                    ExplicitLeft = 8
                    ExplicitTop = 16
                    ExplicitWidth = 1323
                    ExplicitHeight = 65
                  end
                  object Label51: TLabel
                    AlignWithMargins = True
                    Left = 10
                    Top = 0
                    Width = 443
                    Height = 25
                    Margins.Left = 10
                    Margins.Top = 0
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alClient
                    Caption = 'Localiza'#231#227'o'
                    Color = 16747306
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -16
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    ExplicitWidth = 89
                    ExplicitHeight = 21
                  end
                end
                object fieldGONDOLA: TEdit
                  Left = 16
                  Top = 63
                  Width = 71
                  Height = 25
                  CharCase = ecUpperCase
                  TabOrder = 1
                end
                object fieldCOLUNA: TEdit
                  Left = 359
                  Top = 63
                  Width = 80
                  Height = 25
                  CharCase = ecUpperCase
                  TabOrder = 4
                end
                object fieldLADO: TRadioGroup
                  Tag = 3
                  Left = 97
                  Top = 36
                  Width = 162
                  Height = 56
                  Caption = 'Lado'
                  Columns = 2
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ItemIndex = 0
                  Items.Strings = (
                    'Direito'
                    'Esquerdo')
                  ParentFont = False
                  TabOrder = 2
                end
                object fieldPRATELEIRA: TEdit
                  Left = 268
                  Top = 63
                  Width = 76
                  Height = 25
                  CharCase = ecUpperCase
                  TabOrder = 3
                end
              end
              object pnlClasseProduto: TPanel
                AlignWithMargins = True
                Left = 468
                Top = 0
                Width = 519
                Height = 108
                Margins.Left = 5
                Margins.Top = 0
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alClient
                BevelOuter = bvNone
                Color = 15856113
                ParentBackground = False
                TabOrder = 1
                object Shape24: TShape
                  AlignWithMargins = True
                  Left = 0
                  Top = 30
                  Width = 519
                  Height = 78
                  Margins.Left = 0
                  Margins.Top = 5
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alClient
                  Pen.Color = 12867584
                  Pen.Width = 2
                  Shape = stRoundRect
                  ExplicitLeft = 928
                  ExplicitTop = 104
                  ExplicitWidth = 1323
                  ExplicitHeight = 72
                end
                object Panel40: TPanel
                  Left = 0
                  Top = 0
                  Width = 519
                  Height = 25
                  Align = alTop
                  BevelOuter = bvNone
                  Color = 15856113
                  ParentBackground = False
                  TabOrder = 0
                  object Shape25: TShape
                    Left = 0
                    Top = 0
                    Width = 519
                    Height = 25
                    Hint = '$00C45800'
                    Align = alClient
                    Brush.Color = 12867584
                    Pen.Color = 12867584
                    Pen.Width = 0
                    Shape = stRoundRect
                    ExplicitLeft = 8
                    ExplicitTop = 16
                    ExplicitWidth = 1323
                    ExplicitHeight = 65
                  end
                  object Label68: TLabel
                    AlignWithMargins = True
                    Left = 10
                    Top = 0
                    Width = 509
                    Height = 25
                    Margins.Left = 10
                    Margins.Top = 0
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alClient
                    Caption = 'Classe do Produto'
                    Color = 16747306
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -16
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    ExplicitWidth = 137
                    ExplicitHeight = 21
                  end
                end
                object fieldCLAS_ABC: TRadioGroup
                  Tag = 4
                  Left = 8
                  Top = 36
                  Width = 225
                  Height = 56
                  Caption = 'Classe'
                  Columns = 3
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ItemIndex = 0
                  Items.Strings = (
                    'A'
                    'B'
                    'C')
                  ParentFont = False
                  TabOrder = 1
                end
              end
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'ImpostosNFe'
            ImageIndex = 2
            object pnlmpostosNFe: TPanel
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 992
              Height = 113
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              BevelOuter = bvNone
              Color = 15856113
              ParentBackground = False
              TabOrder = 0
              object Panel35: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 0
                Width = 982
                Height = 108
                Margins.Left = 5
                Margins.Top = 0
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alClient
                BevelOuter = bvNone
                Color = 15856113
                ParentBackground = False
                TabOrder = 0
                object Shape20: TShape
                  AlignWithMargins = True
                  Left = 0
                  Top = 30
                  Width = 982
                  Height = 78
                  Margins.Left = 0
                  Margins.Top = 5
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alClient
                  Pen.Color = 12867584
                  Pen.Width = 2
                  Shape = stRoundRect
                  ExplicitLeft = 928
                  ExplicitTop = 104
                  ExplicitWidth = 1323
                  ExplicitHeight = 72
                end
                object Label56: TLabel
                  Left = 16
                  Top = 36
                  Width = 101
                  Height = 17
                  Caption = '% ICMS de Sa'#237'da'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label58: TLabel
                  Left = 333
                  Top = 36
                  Width = 78
                  Height = 17
                  Caption = '% Base ICMS'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label59: TLabel
                  Left = 424
                  Top = 36
                  Width = 99
                  Height = 17
                  Caption = 'Sit PIS/CONFINS'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label61: TLabel
                  Left = 129
                  Top = 36
                  Width = 70
                  Height = 17
                  Caption = '% PIS Sa'#237'da'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label62: TLabel
                  Left = 223
                  Top = 36
                  Width = 97
                  Height = 17
                  Caption = '% COFINS Sa'#237'da'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label63: TLabel
                  Left = 538
                  Top = 36
                  Width = 31
                  Height = 17
                  Caption = '% IPI'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label64: TLabel
                  Left = 629
                  Top = 36
                  Width = 36
                  Height = 17
                  Caption = '(MVA)'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label65: TLabel
                  Left = 720
                  Top = 36
                  Width = 50
                  Height = 17
                  Caption = 'MVA 4%'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label66: TLabel
                  Left = 811
                  Top = 36
                  Width = 55
                  Height = 17
                  Caption = 'MVA 12%'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label67: TLabel
                  Left = 904
                  Top = 36
                  Width = 72
                  Height = 17
                  Caption = 'BC Redu'#231#227'o'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2696481
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Panel36: TPanel
                  Left = 0
                  Top = 0
                  Width = 982
                  Height = 25
                  Align = alTop
                  BevelOuter = bvNone
                  Color = 15856113
                  ParentBackground = False
                  TabOrder = 0
                  object Shape21: TShape
                    Left = 0
                    Top = 0
                    Width = 982
                    Height = 25
                    Hint = '$00C45800'
                    Align = alClient
                    Brush.Color = 12867584
                    Pen.Color = 12867584
                    Pen.Width = 0
                    Shape = stRoundRect
                    ExplicitLeft = 8
                    ExplicitTop = 16
                    ExplicitWidth = 1323
                    ExplicitHeight = 65
                  end
                  object Label60: TLabel
                    AlignWithMargins = True
                    Left = 10
                    Top = 0
                    Width = 972
                    Height = 25
                    Margins.Left = 10
                    Margins.Top = 0
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alClient
                    Caption = 'Impostos NFe de Sa'#237'da'
                    Color = 16747306
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -16
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    ExplicitWidth = 173
                    ExplicitHeight = 21
                  end
                end
                object fieldPORC_ICMS: TEdit
                  Left = 16
                  Top = 63
                  Width = 101
                  Height = 25
                  TabOrder = 1
                end
                object fieldPORC_BICMS: TEdit
                  Left = 333
                  Top = 63
                  Width = 80
                  Height = 25
                  TabOrder = 4
                end
                object fieldSIT_PIS_COFINS: TEdit
                  Left = 424
                  Top = 63
                  Width = 101
                  Height = 25
                  TabOrder = 5
                end
                object fieldPIS_SAIDA: TEdit
                  Left = 129
                  Top = 63
                  Width = 80
                  Height = 25
                  TabOrder = 2
                end
                object fieldCOFINS_SAIDA: TEdit
                  Left = 223
                  Top = 63
                  Width = 97
                  Height = 25
                  TabOrder = 3
                end
                object fieldPORC_IPI: TEdit
                  Left = 538
                  Top = 63
                  Width = 80
                  Height = 25
                  Hint = 'Porcentagem de IPI'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 6
                end
                object fieldMVA: TEdit
                  Left = 629
                  Top = 63
                  Width = 80
                  Height = 25
                  Hint = 'Margem Valor Agregado'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 7
                end
                object fieldMVA4: TEdit
                  Left = 720
                  Top = 63
                  Width = 80
                  Height = 25
                  Hint = 'MVA Ajustada 4%'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 8
                end
                object fieldMVA12: TEdit
                  Left = 811
                  Top = 63
                  Width = 80
                  Height = 25
                  Hint = 'MVA Ajustada 12%'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 9
                end
                object fieldBASE_REDUCAO: TEdit
                  Left = 904
                  Top = 63
                  Width = 72
                  Height = 25
                  Hint = 'Base de C'#225'lculo Redu'#231#227'o'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 10
                end
              end
            end
            object pnlOrigemProduto: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 113
              Width = 982
              Height = 337
              Margins.Left = 5
              Margins.Top = 0
              Margins.Right = 5
              Margins.Bottom = 5
              Align = alClient
              BevelOuter = bvNone
              Color = 15856113
              ParentBackground = False
              TabOrder = 1
              DesignSize = (
                982
                337)
              object Shape22: TShape
                AlignWithMargins = True
                Left = 0
                Top = 30
                Width = 982
                Height = 307
                Margins.Left = 0
                Margins.Top = 5
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alClient
                Pen.Color = 12867584
                Pen.Width = 2
                Shape = stRoundRect
                ExplicitLeft = 928
                ExplicitTop = 104
                ExplicitWidth = 1323
                ExplicitHeight = 72
              end
              object Panel38: TPanel
                Left = 0
                Top = 0
                Width = 982
                Height = 25
                Align = alTop
                BevelOuter = bvNone
                Color = 15856113
                ParentBackground = False
                TabOrder = 0
                object Shape23: TShape
                  Left = 0
                  Top = 0
                  Width = 982
                  Height = 25
                  Hint = '$00C45800'
                  Align = alClient
                  Brush.Color = 12867584
                  Pen.Color = 12867584
                  Pen.Width = 0
                  Shape = stRoundRect
                  ExplicitLeft = 8
                  ExplicitTop = 16
                  ExplicitWidth = 1323
                  ExplicitHeight = 65
                end
                object Label79: TLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 0
                  Width = 972
                  Height = 25
                  Margins.Left = 10
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alClient
                  Caption = 'Origem da Mercadoria'
                  Color = 16747306
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                  ExplicitWidth = 171
                  ExplicitHeight = 21
                end
              end
              object fieldCST_ORIG: TRadioGroup
                Tag = 5
                Left = 16
                Top = 46
                Width = 951
                Height = 251
                Anchors = [akLeft, akTop, akRight]
                Caption = 'Origem'
                Items.Strings = (
                  '0 - Nacional, exceto as indicadas nos c'#243'digos 3, 4, 5 e 8'
                  
                    '1 - Estrangeira - Importa'#231#227'o direta, exceto a indicada no c'#243'digo' +
                    ' 6'
                  
                    '2 - Estrangeira - Adquirida no mercado interno, exceto a indicad' +
                    'a no c'#243'digo 7'
                  
                    '3 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o super' +
                    'ior a 40% (quarenta por cento) e inferior ou igual a 70% (setent' +
                    'a por cento)'
                  
                    '4 - Nacional, cuja produ'#231#227'o tenha sido feita em conformidade com' +
                    ' os processos produtivos b'#225'sicos de que tratam as legisla'#231#245'es ci' +
                    'tadas nos Ajustes'
                  
                    '5 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o infer' +
                    'ior ou igual a 40%'
                  
                    '6 - Estrangeira - Importa'#231#227'o direta, sem similar nacional, const' +
                    'ante em lista da CAMEX'
                  
                    '7 - Estrangeira - Adquirida no mercado interno, sem similar naci' +
                    'onal, constante em lista da CAMEX'
                  
                    '8 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o super' +
                    'ior a 70% (setenta por cento).')
                TabOrder = 1
              end
            end
          end
        end
        inherited Panel25: TPanel
          Width = 995
          ExplicitWidth = 995
          object pnlDetails: TPanel
            AlignWithMargins = True
            Left = 139
            Top = 0
            Width = 134
            Height = 30
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            BevelOuter = bvNone
            Caption = 'Detalhes'
            Color = 32251
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            OnClick = pnlDetailsClick
            OnMouseEnter = pnlInserirMouseEnter
            OnMouseLeave = pnlInserirMouseLeave
            DesignSize = (
              134
              30)
            object Image11: TImage
              Left = 6
              Top = 3
              Width = 24
              Height = 24
              Margins.Top = 2
              Margins.Bottom = 2
              Anchors = [akLeft, akTop, akRight, akBottom]
              DragCursor = crHandPoint
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                00180806000000E0773DF80000000467414D410000B18F0BFC61050000000662
                4B4744000000000000F943BB7F000000097048597300000EC400000EC401952B
                0E1B000000504944415478DA6364A031601CB560D482510B06C082FFFFFF7B03
                A999202610A73132326E27471C9F058F81940C94FB18A8418E1CF101B5C01348
                CD42F2F20E72C4715A406D306AC1A805A316D0C1020025BB4219B0F561950000
                002574455874646174653A63726561746500323032302D30362D30315431333A
                31373A34322B30303A30302F6AAAA20000002574455874646174653A6D6F6469
                667900323032302D30362D30315431333A31373A34322B30303A30305E37121E
                0000001974455874536F667477617265007777772E696E6B73636170652E6F72
                679BEE3C1A0000000049454E44AE426082}
              Stretch = True
              OnMouseEnter = pnlInserirMouseEnter
              OnMouseLeave = pnlInserirMouseLeave
            end
          end
          object pnlImpostoNFe: TPanel
            AlignWithMargins = True
            Left = 278
            Top = 0
            Width = 134
            Height = 30
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            BevelOuter = bvNone
            Caption = '      Impostos NFe'
            Color = 32251
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 2
            OnClick = pnlImpostoNFeClick
            OnMouseEnter = pnlInserirMouseEnter
            OnMouseLeave = pnlInserirMouseLeave
            DesignSize = (
              134
              30)
            object Image12: TImage
              Left = 6
              Top = 3
              Width = 24
              Height = 24
              Margins.Top = 2
              Margins.Bottom = 2
              Anchors = [akLeft, akTop, akRight, akBottom]
              DragCursor = crHandPoint
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                00180806000000E0773DF80000000467414D410000B18F0BFC61050000000662
                4B4744000000000000F943BB7F000000097048597300000EC400000EC401952B
                0E1B000000AC4944415478DA6364A03160A49B05FFFFFFF706523381581A8BBA
                27409CC6C8C8B89D54B5C8163C065232781CF318A8498E54B5C816FC27E85D20
                C0A616248E4D6C602C80492003743952D40EAF20A2792AF20452B37068041908
                4ADB3B48554BBF9C4C730B8655517107889F01B11D101F0262292056012BC691
                4CB1060D9E7C00323404884B81B81B88D7402DA36A4EEE06CA970185BAA01631
                60B360D0FA806671305A54600F2A5A5B0000BF96D919B7F77802000000257445
                5874646174653A63726561746500323032302D30362D30315431333A32323A32
                332B30303A303030B905D40000002574455874646174653A6D6F646966790032
                3032302D30362D30315431333A32323A32332B30303A303041E4BD6800000019
                74455874536F667477617265007777772E696E6B73636170652E6F72679BEE3C
                1A0000000049454E44AE426082}
              Stretch = True
              OnMouseEnter = pnlInserirMouseEnter
              OnMouseLeave = pnlInserirMouseLeave
            end
          end
        end
        inherited pnlTopCrud: TPanel
          Width = 1000
          ExplicitWidth = 1000
          inherited pnlDados: TPanel
            Width = 994
            ExplicitWidth = 994
            inherited Shape8: TShape
              Width = 994
              ExplicitLeft = -8
              ExplicitTop = 30
              ExplicitWidth = 994
              ExplicitHeight = 88
            end
            inherited lblCodigo: TLabel
              Left = 22
              Width = 44
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 22
              ExplicitWidth = 44
            end
            inherited Label4: TLabel
              Left = 104
              Top = 44
              Width = 37
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 104
              ExplicitTop = 44
              ExplicitWidth = 37
            end
            object Label3: TLabel [3]
              Left = 387
              Top = 40
              Width = 85
              Height = 17
              Anchors = [akTop, akRight]
              Caption = 'C'#243'digo Barras'
              Font.Charset = ANSI_CHARSET
              Font.Color = 2696481
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel [4]
              Left = 565
              Top = 40
              Width = 94
              Height = 17
              Anchors = [akTop, akRight]
              Caption = 'C'#243'd. Fabricante'
              Font.Charset = ANSI_CHARSET
              Font.Color = 2696481
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel [5]
              Left = 706
              Top = 40
              Width = 100
              Height = 17
              Anchors = [akTop, akRight]
              Caption = 'C'#243'd. Fornecedor'
              Font.Charset = ANSI_CHARSET
              Font.Color = 2696481
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel [6]
              Left = 847
              Top = 40
              Width = 62
              Height = 17
              Anchors = [akTop, akRight]
              Caption = 'Refer'#234'ncia'
              Font.Charset = ANSI_CHARSET
              Font.Color = 2696481
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 1112
            end
            inherited pnlInfo: TPanel
              Width = 994
              ExplicitWidth = 994
              inherited Shape2: TShape
                Width = 994
                ExplicitWidth = 1259
              end
              inherited Label1: TLabel
                Width = 954
                Height = 25
              end
            end
            inherited fieldCodigo: TEdit
              Left = 22
              ExplicitLeft = 22
            end
            inherited fieldNome: TEdit
              Left = 104
              Width = 276
              Anchors = [akLeft, akTop, akRight]
              ExplicitLeft = 104
              ExplicitWidth = 276
            end
            object fieldCODIGO_BARRAS: TEdit
              Left = 387
              Top = 67
              Width = 166
              Height = 25
              Anchors = [akTop, akRight]
              CharCase = ecUpperCase
              TabOrder = 3
            end
            object fieldCOD_FABR: TEdit
              Left = 565
              Top = 67
              Width = 129
              Height = 25
              Anchors = [akTop, akRight]
              CharCase = ecUpperCase
              TabOrder = 4
            end
            object fieldCOD_FOR: TEdit
              Left = 706
              Top = 67
              Width = 133
              Height = 25
              Anchors = [akTop, akRight]
              CharCase = ecUpperCase
              TabOrder = 5
            end
            object fieldREFERENCIA: TEdit
              Left = 847
              Top = 67
              Width = 129
              Height = 25
              Anchors = [akTop, akRight]
              CharCase = ecUpperCase
              TabOrder = 6
            end
          end
        end
      end
    end
    inherited pnlButtons: TPanel
      Width = 998
      ExplicitWidth = 998
      inherited pnlBack: TPanel
        inherited Image6: TImage
          ExplicitLeft = 5
          ExplicitTop = 2
          ExplicitHeight = 25
        end
        inherited lblVoltar: TLabel
          Width = 76
          Height = 18
        end
      end
      inherited pnlAgrupaInserUpdDel: TPanel
        inherited Panel3: TPanel
          inherited pnlDelete: TPanel
            inherited lblExcluir: TLabel
              Width = 78
              Height = 18
            end
          end
        end
        inherited Panel2: TPanel
          inherited pnlUpdate: TPanel
            inherited lblAlterar: TLabel
              Width = 76
              Height = 18
            end
          end
        end
        inherited Panel1: TPanel
          inherited pnlInserir: TPanel
            inherited Image1: TImage
              ExplicitLeft = 5
              ExplicitTop = 9
              ExplicitHeight = 25
            end
            inherited lblInserir: TLabel
              Width = 76
              Height = 18
            end
          end
        end
      end
      inherited pnlAgrupaSaveCancelar: TPanel
        inherited Panel5: TPanel
          inherited pnlSave: TPanel
            inherited lblSalvar: TLabel
              Width = 72
              Height = 18
            end
          end
        end
        inherited Panel7: TPanel
          inherited pnlCancel: TPanel
            inherited Image5: TImage
              ExplicitLeft = 5
              ExplicitTop = 9
              ExplicitHeight = 25
            end
            inherited lblCancelar: TLabel
              Width = 80
              Height = 18
            end
          end
        end
      end
    end
  end
  inherited pnlTop: TPanel
    Width = 1008
    ExplicitWidth = 1008
    inherited pnl1: TPanel
      Width = 823
      ExplicitWidth = 823
      inherited lblNome: TLabel
        Width = 805
        Height = 25
      end
    end
    inherited Panel20: TPanel
      Left = 823
      ExplicitLeft = 823
    end
  end
end
