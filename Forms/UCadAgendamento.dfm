inherited FrmCadAgendamento: TFrmCadAgendamento
  Caption = 'FrmCadAgendamento'
  ClientHeight = 208
  ClientWidth = 446
  OnCreate = FormCreate
  ExplicitWidth = 462
  ExplicitHeight = 247
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 8
    Top = 65
    Width = 45
    Height = 13
    Caption = 'Cod. Cli.:'
  end
  object Label3: TLabel [1]
    Left = 67
    Top = 65
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label4: TLabel [2]
    Left = 341
    Top = 109
    Width = 97
    Height = 13
    Caption = 'Data Agendamento:'
  end
  object Label5: TLabel [3]
    Left = 8
    Top = 107
    Width = 27
    Height = 13
    Caption = 'Cod.:'
  end
  object Label6: TLabel [4]
    Left = 67
    Top = 107
    Width = 69
    Height = 13
    Caption = 'Procedimento:'
  end
  object Label7: TLabel [5]
    Left = 190
    Top = 157
    Width = 45
    Height = 13
    Caption = 'Situa'#231#227'o:'
  end
  object Label8: TLabel [6]
    Left = 341
    Top = 157
    Width = 39
    Height = 13
    Caption = 'Hor'#225'rio:'
  end
  object Label1: TLabel [7]
    Left = 8
    Top = 157
    Width = 39
    Height = 13
    Caption = 'Contato'
  end
  inherited Panel1: TPanel
    Width = 446
    ExplicitWidth = 446
    inherited BtnSalvar: TBitBtn
      OnClick = BtnSalvarClick
    end
  end
  object EdtCodCliente: TEdit [9]
    Left = 8
    Top = 80
    Width = 53
    Height = 21
    TabOrder = 1
    OnKeyPress = EdtCodClienteKeyPress
  end
  object EdtNome: TEdit [10]
    Left = 67
    Top = 80
    Width = 371
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object DTAgendamento: TDateTimePicker [11]
    Left = 341
    Top = 124
    Width = 97
    Height = 21
    Date = 44180.000000000000000000
    Time = 0.598680555558530600
    ImeMode = imAlpha
    TabOrder = 5
  end
  object EdtCodProcedimento: TEdit [12]
    Left = 8
    Top = 124
    Width = 53
    Height = 21
    TabOrder = 3
    OnKeyPress = EdtCodProcedimentoKeyPress
  end
  object EdtProcedimento: TEdit [13]
    Left = 67
    Top = 124
    Width = 267
    Height = 21
    Enabled = False
    TabOrder = 4
  end
  object CBSituacao: TComboBox [14]
    Left = 190
    Top = 173
    Width = 145
    Height = 21
    TabOrder = 7
    Text = 'AGENDADO'
    Items.Strings = (
      'AGENDADO'
      'CONCLUIDO'
      'ANDAMENTO'
      'CANCELADO')
  end
  object TimeHorario: TTimePicker [15]
    Left = 341
    Top = 173
    Width = 97
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 8
    Time = 0.621168981481481500
    TimeFormat = 'hh:mm'
  end
  object EdtContato: TEdit [16]
    Left = 8
    Top = 173
    Width = 176
    Height = 21
    TabOrder = 6
  end
  inherited FDTransaction1: TFDTransaction
    Left = 206
    Top = 5
  end
  inherited FDQuery1: TFDQuery
    Left = 260
    Top = 7
  end
end
