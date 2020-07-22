inherited frmPesquisaMarca: TfrmPesquisaMarca
  Caption = 'frmPesquisaMarca'
  ParentBiDiMode = False
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
          Width = 97
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
          Width = 653
          Visible = True
        end>
    end
  end
end
