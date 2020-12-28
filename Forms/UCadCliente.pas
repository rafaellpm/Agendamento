unit UCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons,
  Vcl.ExtCtrls, Data.Win.ADODB, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait;

type
  TFrmCadCliente = class(TFrmCadPai)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    EdtNome: TEdit;
    EdtRG: TEdit;
    EdtEndereco: TEdit;
    EdtCidade: TEdit;
    EdtNr_end: TEdit;
    CbEstado: TComboBox;
    EdtEmail: TEdit;
    EdtTelefone: TEdit;
    EdtDataCadastro: TEdit;
    EdtCodMun: TEdit;
    EdtCPF: TEdit;
    CbAtivo: TComboBox;
    Label13: TLabel;
    procedure inserecliente;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCliente: TFrmCadCliente;

implementation

uses
  UConsultaCliente;

{$R *.dfm}


procedure TFrmCadCliente.BitBtn2Click(Sender: TObject);
begin
  inherited;
  FrmConsultaCliente := TFrmConsultaCliente.Create(self);
  FrmConsultaCliente.ShowModal;

end;

procedure TFrmCadCliente.BtnSalvarClick(Sender: TObject);
begin
  inherited;
  inserecliente;
end;

procedure TFrmCadCliente.inserecliente;

begin
  EdtDataCadastro.Text :=  DateToStr(Now);
  FDQuery1.close;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('Insert into clientes');
  FDQuery1.SQL.Add('(CPF, NOME, ENDERECO, CIDADE, ESTADO, TELEFONE, EMAIL, COD_MUNICIPIO, DATA_CADASTRO, RG, NUMERO_END, ATIVO)');
  FDQuery1.SQL.Add('values ');
  FDQuery1.SQL.Add('(:CPF, :NOME, :ENDERECO, :CIDADE, :ESTADO, :TELEFONE, :EMAIL, :COD_MUNICIPIO, :DATA_CADASTRO, :RG, :NUMERO_END, :ATIVO)');
  FDQuery1.Params.ParamByName('CPF').Value := StrToInt(EdtCPF.Text);
  FDQuery1.Params.ParamByName('NOME').Value := EdtNome.Text;
  FDQuery1.Params.ParamByName('ENDERECO').Value := EdtEndereco.Text;
  FDQuery1.Params.ParamByName('CIDADE').Value := EdtCidade.Text;
  FDQuery1.Params.ParamByName('ESTADO').Value := CbEstado.Text;
  FDQuery1.Params.ParamByName('TELEFONE').Value := StrToInt(EdtTelefone.Text);
  FDQuery1.Params.ParamByName('EMAIL').Value := EdtEmail.Text;
  FDQuery1.Params.ParamByName('COD_MUNICIPIO').Value := StrToInt(EdtCodMun.Text);
  FDQuery1.Params.ParamByName('DATA_CADASTRO').Value := EdtDataCadastro.Text;
  FDQuery1.Params.ParamByName('RG').Value := StrToInt(EdtRG.Text);
  FDQuery1.Params.ParamByName('NUMERO_END').Value := StrToInt(EdtNr_end.Text);

  if CBAtivo.Text = 'SIM'  then
    FDQuery1.Params.ParamByName('ATIVO').Value := 1
  else
    FDQuery1.Params.ParamByName('ATIVO').Value := 0;

  FDQuery1.ExecSQL;



end;

end.
