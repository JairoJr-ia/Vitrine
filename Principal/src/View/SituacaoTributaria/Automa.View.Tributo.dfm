inherited frmTributo: TfrmTributo
  Caption = ''
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlPrincipal: TPanel
    inherited PageControl: TPageControl
      inherited tabFind: TTabSheet
        inherited pnlFind: TPanel
          inherited DBGrid: TDBGrid
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
                Width = 99
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
                Width = 589
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NRO_CST'
                Title.Alignment = taCenter
                Title.Caption = 'CST'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 2696481
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI'
                Title.Font.Style = [fsBold]
                Width = 77
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ICMS'
                Title.Alignment = taCenter
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 2696481
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI'
                Title.Font.Style = [fsBold]
                Width = 81
                Visible = True
              end>
          end
          inherited pnlInfoFind: TPanel
            inherited Label2: TLabel
              Width = 1258
              Height = 37
            end
          end
          inherited Panel4: TPanel
            inherited Panel6: TPanel
              inherited lblFiltro: TLabel
                Height = 26
              end
            end
          end
        end
      end
      inherited tabCRUD: TTabSheet
        ExplicitHeight = 387
        inherited pageControlDados: TPageControl
          ExplicitHeight = 228
          inherited TabSheet1: TTabSheet
            ExplicitHeight = 192
            inherited pnlCRUD: TPanel
              ExplicitHeight = 192
            end
          end
          inherited TabSheet2: TTabSheet
            ExplicitHeight = 192
          end
        end
        inherited pnlTopCrud: TPanel
          inherited pnlDados: TPanel
            object Label3: TLabel [3]
              Left = 710
              Top = 40
              Width = 22
              Height = 17
              Caption = 'CST'
            end
            object Label5: TLabel [4]
              Left = 796
              Top = 40
              Width = 30
              Height = 17
              Caption = 'ICMS'
            end
            object fieldNRO_CST: TEdit
              Left = 672
              Top = 67
              Width = 65
              Height = 29
              Alignment = taRightJustify
              CharCase = ecUpperCase
              TabOrder = 3
            end
            object fieldICMS: TEdit
              Left = 768
              Top = 67
              Width = 65
              Height = 29
              CharCase = ecUpperCase
              TabOrder = 4
            end
          end
        end
      end
    end
    inherited pnlButtons: TPanel
      inherited pnlBack: TPanel
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
    inherited pnl1: TPanel
      inherited lblNome: TLabel
        Width = 1063
        Height = 25
      end
    end
  end
end
