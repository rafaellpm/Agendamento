object FrmCadPai: TFrmCadPai
  Left = 0
  Top = 0
  Caption = 'FrmCadPai'
  ClientHeight = 326
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 719
    Height = 57
    Align = alTop
    TabOrder = 0
    object BtnSalvar: TBitBtn
      Left = 4
      Top = 4
      Width = 57
      Height = 48
      Caption = 'Salvar'
      TabOrder = 0
      TabStop = False
    end
    object BtnConsultar: TBitBtn
      Left = 67
      Top = 4
      Width = 57
      Height = 48
      Caption = 'Consultar'
      TabOrder = 1
      TabStop = False
    end
    object BtnExcluir: TBitBtn
      Left = 130
      Top = 4
      Width = 57
      Height = 48
      Caption = 'Excluir'
      TabOrder = 2
      TabStop = False
    end
    object BtnSair: TBitBtn
      Left = 655
      Top = 4
      Width = 57
      Height = 48
      Caption = 'Sair'
      TabOrder = 3
      TabStop = False
      OnClick = BtnSairClick
    end
  end
  object FDTransaction1: TFDTransaction
    Connection = DataModule1.FDConexao
    Left = 346
    Top = 9
  end
  object FDQuery1: TFDQuery
    Connection = DataModule1.FDConexao
    Left = 418
    Top = 8
  end
end
