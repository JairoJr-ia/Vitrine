inherited frmMarca: TfrmMarca
  Caption = ''
  ClientHeight = 544
  ClientWidth = 1257
  ExplicitWidth = 1257
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlPrincipal: TPanel
    Width = 1257
    Height = 513
    ExplicitWidth = 1257
    ExplicitHeight = 513
    inherited PageControl: TPageControl
      Width = 1257
      Height = 460
      ExplicitWidth = 1257
      ExplicitHeight = 460
      inherited tabFind: TTabSheet
        ExplicitWidth = 1249
        ExplicitHeight = 428
        inherited pnlFind: TPanel
          Width = 1249
          Height = 428
          ExplicitWidth = 1249
          ExplicitHeight = 428
          inherited DBGrid: TDBGrid
            Width = 1239
            Height = 303
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
                Width = 654
                Visible = True
              end>
          end
          inherited pnlInfoFind: TPanel
            Width = 1249
            ExplicitWidth = 1249
            inherited Label2: TLabel
              Width = 1249
              Height = 37
            end
          end
          inherited Panel4: TPanel
            Width = 1249
            ExplicitWidth = 1249
            inherited edtPesquisa: TEdit
              Width = 859
              ExplicitWidth = 859
            end
            inherited Panel6: TPanel
              inherited lblFiltro: TLabel
                Height = 26
              end
            end
          end
          inherited Panel8: TPanel
            Top = 387
            Width = 1249
            ExplicitTop = 387
            ExplicitWidth = 1249
            inherited pnlPage: TPanel
              Width = 1249
              ExplicitWidth = 1249
              inherited Panel10: TPanel
                Left = 1124
                ExplicitLeft = 1124
              end
              inherited Panel11: TPanel
                Width = 999
                ExplicitWidth = 999
                inherited pnlPrior: TPanel
                  Left = 400
                  ExplicitLeft = 400
                end
                inherited pnlCurrentPage: TPanel
                  Left = 472
                  ExplicitLeft = 472
                end
                inherited pnlNext: TPanel
                  Left = 540
                  ExplicitLeft = 540
                end
              end
            end
          end
        end
      end
      inherited tabCRUD: TTabSheet
        ExplicitWidth = 1249
        ExplicitHeight = 410
        inherited pageControlDados: TPageControl
          Width = 1249
          Height = 267
          ExplicitWidth = 1249
          ExplicitHeight = 251
          inherited TabSheet1: TTabSheet
            ExplicitWidth = 1241
            ExplicitHeight = 215
            inherited pnlCRUD: TPanel
              Width = 1241
              Height = 215
              ExplicitWidth = 1241
              ExplicitHeight = 215
            end
          end
          inherited TabSheet2: TTabSheet
            ExplicitWidth = 1241
            ExplicitHeight = 215
          end
        end
        inherited Panel25: TPanel
          Width = 1244
          ExplicitWidth = 1244
        end
        inherited pnlTopCrud: TPanel
          Width = 1249
          ExplicitWidth = 1249
          inherited pnlDados: TPanel
            Width = 1243
            ExplicitWidth = 1243
            inherited Shape8: TShape
              Width = 1243
              ExplicitWidth = 1243
            end
            inherited pnlInfo: TPanel
              Width = 1243
              ExplicitWidth = 1243
              inherited Shape2: TShape
                Width = 1243
                ExplicitWidth = 1243
              end
            end
          end
        end
      end
    end
    inherited pnlButtons: TPanel
      Width = 1247
      ExplicitWidth = 1247
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
    Width = 1257
    ExplicitWidth = 1257
    inherited pnl1: TPanel
      Width = 1072
      ExplicitWidth = 1072
      inherited lblNome: TLabel
        Width = 1054
        Height = 25
      end
    end
    inherited Panel20: TPanel
      Left = 1072
      ExplicitLeft = 1072
    end
  end
end
