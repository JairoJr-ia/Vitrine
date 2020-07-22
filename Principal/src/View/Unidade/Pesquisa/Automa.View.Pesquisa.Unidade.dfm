inherited frmPesquisaUnidade: TfrmPesquisaUnidade
  Caption = 'frmPesquisaUnidade'
  PixelsPerInch = 96
  TextHeight = 21
  inherited pnl1: TPanel
    ExplicitWidth = 988
  end
  inherited Panel4: TPanel
    ExplicitTop = 153
    ExplicitWidth = 978
    ExplicitHeight = 370
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
          Width = 93
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
          Width = 688
          Visible = True
        end>
    end
  end
  inherited Panel6: TPanel
    ExplicitTop = 102
    ExplicitWidth = 978
    inherited edtPesquisa: TEdit
      ExplicitWidth = 588
    end
  end
end
