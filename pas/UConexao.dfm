object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 164
  Width = 412
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=Agenda'
      'User_Name=quantum'
      'Password=quantum28042004'
      'Port=3390'
      'DriverID=MySQL')
    Connected = True
    Left = 105
    Top = 31
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'E:\Users\Suporte PC\Desktop\Delphi\ProjetosGitHub\Agenda\libmysq' +
      'l.dll'
    Left = 254
    Top = 77
  end
end
