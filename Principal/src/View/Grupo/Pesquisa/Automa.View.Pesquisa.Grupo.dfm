inherited frmPesquisaGrupo: TfrmPesquisaGrupo
  Caption = 'frmPesquisaGrupo'
  PixelsPerInch = 96
  TextHeight = 21
  inherited Panel4: TPanel
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
          Width = 100
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
          Width = 661
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TIPO'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = 2696481
          Title.Font.Height = -16
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
end
