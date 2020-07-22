inherited frmUnidade: TfrmUnidade
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
                Width = 86
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
                Width = 699
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
        inherited pageControlDados: TPageControl
          inherited TabSheet2: TTabSheet
            ExplicitHeight = 192
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
