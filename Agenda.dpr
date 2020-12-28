program Agenda;

uses
  Vcl.Forms,
  UPrincipal in 'Forms\UPrincipal.pas' {FrmPrincipal},
  UConexao in 'pas\UConexao.pas' {DataModule1: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  UCadPai in 'Forms\UCadPai.pas' {FrmCadPai},
  UCadCliente in 'Forms\UCadCliente.pas' {FrmCadCliente},
  UCadProduto in 'Forms\UCadProduto.pas' {FrmCadProd},
  UCadForn in 'Forms\UCadForn.pas' {FrmCadForn},
  UCadAgendamento in 'Forms\UCadAgendamento.pas' {FrmCadAgendamento},
  UConsultaPai in 'Forms\UConsultaPai.pas' {FrmConsultaPai},
  UConsultaProduto in 'Forms\UConsultaProduto.pas' {FrmConsultaProduto},
  UConsultaCliente in 'Forms\UConsultaCliente.pas' {FrmConsultaCliente},
  UCadProced in 'Forms\UCadProced.pas' {FrmCadProced},
  UConsultaProced in 'Forms\UConsultaProced.pas' {FrmConsultaProced};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Charcoal Dark Slate');
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
