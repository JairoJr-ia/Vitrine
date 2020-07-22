inherited frmGrupo: TfrmGrupo
  Caption = 'Grupos'
  ClientWidth = 1231
  OnDestroy = FormDestroy
  ExplicitWidth = 1231
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlPrincipal: TPanel
    Width = 1231
    ExplicitWidth = 1231
    inherited PageControl: TPageControl
      Width = 1231
      ExplicitWidth = 1231
      inherited tabFind: TTabSheet
        ExplicitWidth = 1223
        inherited pnlFind: TPanel
          Width = 1223
          ExplicitWidth = 1223
          inherited DBGrid: TDBGrid
            Width = 1213
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CODIGO'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI'
                Title.Font.Style = [fsBold]
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME'
                Title.Caption = 'Nome'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI'
                Title.Font.Style = [fsBold]
                Width = 634
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'TIPO'
                Title.Alignment = taCenter
                Title.Caption = 'Tipo'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI'
                Title.Font.Style = [fsBold]
                Width = 128
                Visible = True
              end>
          end
          inherited pnlInfoFind: TPanel
            Width = 1223
            ExplicitWidth = 1223
            inherited Label2: TLabel
              Width = 1223
              Height = 37
            end
          end
          inherited Panel4: TPanel
            Width = 1223
            ExplicitWidth = 1223
            inherited edtPesquisa: TEdit
              Width = 833
              ExplicitWidth = 833
            end
            inherited Panel6: TPanel
              inherited lblFiltro: TLabel
                Height = 26
              end
            end
          end
          inherited Panel8: TPanel
            Width = 1223
            ExplicitWidth = 1223
            inherited pnlPage: TPanel
              Width = 1223
              ExplicitWidth = 1223
              inherited Panel10: TPanel
                Left = 1098
                ExplicitLeft = 1098
              end
              inherited Panel11: TPanel
                Width = 973
                ExplicitWidth = 973
              end
            end
          end
        end
      end
      inherited tabCRUD: TTabSheet
        ExplicitWidth = 1223
        inherited pageControlDados: TPageControl
          Width = 1223
          ExplicitWidth = 1223
          inherited TabSheet1: TTabSheet
            ExplicitWidth = 1215
            inherited pnlCRUD: TPanel
              Width = 1215
              ExplicitWidth = 1215
            end
          end
          inherited TabSheet2: TTabSheet
            ExplicitWidth = 1215
          end
        end
        inherited Panel25: TPanel
          Width = 1218
          ExplicitWidth = 1218
        end
        inherited pnlTopCrud: TPanel
          Width = 1223
          ExplicitWidth = 1223
          inherited pnlDados: TPanel
            Width = 1217
            ExplicitWidth = 1217
            inherited Shape8: TShape
              Width = 1217
              ExplicitWidth = 1209
              ExplicitHeight = 191
            end
            object fieldTipo: TRadioGroup [3]
              Tag = 2
              Left = 688
              Top = 40
              Width = 105
              Height = 69
              Caption = 'Tipo'
              ItemIndex = 0
              Items.Strings = (
                'Produto'
                'Servi'#231'o')
              TabOrder = 1
            end
            inherited pnlInfo: TPanel
              Width = 1217
              ExplicitWidth = 1217
              inherited Shape2: TShape
                Width = 1217
                ExplicitWidth = 1209
              end
            end
            inherited fieldCodigo: TEdit
              TabOrder = 2
            end
            inherited fieldNome: TEdit
              TabOrder = 3
            end
          end
        end
      end
    end
    inherited pnlButtons: TPanel
      Width = 1221
      ExplicitWidth = 1221
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
    Width = 1231
    ExplicitWidth = 1231
    inherited pnl1: TPanel
      Width = 1046
      ExplicitWidth = 1046
      inherited lblNome: TLabel
        Width = 1028
        Height = 25
      end
    end
    inherited Panel20: TPanel
      Left = 1046
      ExplicitLeft = 1046
    end
  end
end
