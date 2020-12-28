inherited FrmCadProd: TFrmCadProd
  Caption = 'Cadastro de Produtos'
  ClientHeight = 248
  OnShow = FormShow
  ExplicitHeight = 287
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 63
    Width = 62
    Height = 13
    Caption = 'Cod. Interno'
  end
  object Label2: TLabel [1]
    Left = 103
    Top = 63
    Width = 102
    Height = 13
    Caption = 'Descri'#231#227'o do Produto'
  end
  object Label3: TLabel [2]
    Left = 543
    Top = 63
    Width = 57
    Height = 13
    Caption = 'Cod. Barras'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 110
    Width = 52
    Height = 13
    Caption = 'Cod. Forn.'
  end
  object Label5: TLabel [4]
    Left = 82
    Top = 110
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
  end
  object Label6: TLabel [5]
    Left = 363
    Top = 110
    Width = 70
    Height = 13
    Caption = 'Data Cadastro'
  end
  object Label7: TLabel [6]
    Left = 482
    Top = 110
    Width = 76
    Height = 13
    Caption = 'Ult. Modifica'#231#227'o'
  end
  object Label8: TLabel [7]
    Left = 603
    Top = 110
    Width = 39
    Height = 13
    Caption = 'Estoque'
  end
  object Label9: TLabel [8]
    Left = 8
    Top = 157
    Width = 49
    Height = 13
    Caption = 'Cod. Dep.'
  end
  object Label10: TLabel [9]
    Left = 81
    Top = 157
    Width = 69
    Height = 13
    Caption = 'Departamento'
  end
  object Label11: TLabel [10]
    Left = 267
    Top = 157
    Width = 48
    Height = 13
    Caption = 'Cod. Sub.'
  end
  object Label12: TLabel [11]
    Left = 340
    Top = 157
    Width = 90
    Height = 13
    Caption = 'Sub Departamento'
  end
  object Label13: TLabel [12]
    Left = 8
    Top = 198
    Width = 44
    Height = 13
    Caption = 'R$ Custo'
  end
  object Label14: TLabel [13]
    Left = 99
    Top = 198
    Width = 46
    Height = 13
    Caption = 'R$ Venda'
  end
  object Label15: TLabel [14]
    Left = 521
    Top = 157
    Width = 76
    Height = 13
    Caption = 'Tipo de Produto'
  end
  object Label16: TLabel [15]
    Left = 187
    Top = 200
    Width = 25
    Height = 13
    Caption = 'Ativo'
  end
  inherited Panel1: TPanel
    inherited BtnSalvar: TBitBtn
      OnClick = BtnSalvarClick
    end
    inherited BtnConsultar: TBitBtn
      OnClick = BitBtn2Click
    end
  end
  object EdtCodInterno: TEdit [17]
    Left = 8
    Top = 80
    Width = 89
    Height = 21
    TabOrder = 1
  end
  object EdtDescricao: TEdit [18]
    Left = 103
    Top = 80
    Width = 434
    Height = 21
    TabOrder = 2
  end
  object EdtCodBarras: TEdit [19]
    Left = 543
    Top = 80
    Width = 154
    Height = 21
    TabOrder = 3
  end
  object EdtCodFornecedor: TEdit [20]
    Left = 8
    Top = 127
    Width = 65
    Height = 21
    TabOrder = 4
  end
  object EdtDescForn: TEdit [21]
    Left = 81
    Top = 127
    Width = 274
    Height = 21
    Enabled = False
    TabOrder = 5
  end
  object EdtDataCadastro: TEdit [22]
    Left = 363
    Top = 127
    Width = 111
    Height = 21
    TabOrder = 6
  end
  object EdtModificacao: TEdit [23]
    Left = 482
    Top = 127
    Width = 111
    Height = 21
    Enabled = False
    TabOrder = 7
  end
  object EdtEstoque: TEdit [24]
    Left = 603
    Top = 127
    Width = 94
    Height = 21
    TabOrder = 8
  end
  object EdtCodDep: TEdit [25]
    Left = 8
    Top = 173
    Width = 65
    Height = 21
    TabOrder = 9
  end
  object EdtNomeDep: TEdit [26]
    Left = 82
    Top = 173
    Width = 175
    Height = 21
    TabStop = False
    Enabled = False
    TabOrder = 10
  end
  object EdtSubDep: TEdit [27]
    Left = 267
    Top = 173
    Width = 65
    Height = 21
    TabOrder = 11
  end
  object EdtDescSub: TEdit [28]
    Left = 340
    Top = 173
    Width = 175
    Height = 21
    Enabled = False
    TabOrder = 12
  end
  object CbTipoProd: TComboBox [29]
    Left = 521
    Top = 173
    Width = 176
    Height = 21
    ItemIndex = 0
    TabOrder = 13
    Text = 'Uso em Procedimentos'
    Items.Strings = (
      'Uso em Procedimentos'
      'Uso e Consumo')
  end
  object EdtCusto: TEdit [30]
    Left = 8
    Top = 214
    Width = 82
    Height = 21
    TabOrder = 14
  end
  object EdtVenda: TEdit [31]
    Left = 99
    Top = 214
    Width = 82
    Height = 21
    TabOrder = 15
  end
  object CBAtivo: TComboBox [32]
    Left = 187
    Top = 214
    Width = 44
    Height = 21
    ItemIndex = 0
    TabOrder = 16
    Text = 'SIM'
    Items.Strings = (
      'SIM'
      'NAO')
  end
end
