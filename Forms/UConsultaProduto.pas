unit UConsultaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UConsultaPai, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmConsultaProduto = class(TFrmConsultaPai)
    CheckBox1: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Carregadados;
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaProduto: TFrmConsultaProduto;


implementation

uses
  UConexao, UCadProced;


{$R *.dfm}

procedure TFrmConsultaProduto.BitBtn1Click(Sender: TObject);
var _cons,_inativo : string;

begin
  inherited;
  sqlstr := '';
  FDQuery1.close;
  FDQuery1.SQL.Clear;

  if CheckBox1.Checked = True then
    _inativo := ' where ATIVO = 0'
  else
    _inativo := ' where ATIVO = 1';

  if Trim(CbConsultarPor.Text) = 'Descrição' then
    _cons :=' and DESCRICAO like '+ QuotedStr(EdtConsulta.Text+'%')

  else
  if Trim(CbConsultarPor.Text) = 'Cod.Interno' then
    _cons := ' and ID_PRODUTO = ' + QuotedStr(EdtConsulta.Text)

  else
  if Trim(CbConsultarPor.Text) = 'Cod.Barras' then
    _cons := ' and COD_EAN = ' + QuotedStr(EdtConsulta.Text);

  sqlstr := 'SELECT * FROM PRODUTOS '+_inativo + _cons;
  ConsultaMySql(FDQuery1,sqlstr);
end;

procedure TFrmConsultaProduto.Carregadados;
begin
  if not FDQuery1.IsEmpty then
  begin

    if FrmConsultaProduto.Tag = 0 then
    begin
      FrmCadProced.EdtCodProd.Text := FDQuery1.FieldByName('ID_PRODUTO').AsString;
      FrmCadProced.EdtDescProd.Text := FDQuery1.FieldByName('DESCRICAO').AsString;
    end;
    FrmConsultaProduto.Close;
  end;
end;

procedure TFrmConsultaProduto.CheckBox1Click(Sender: TObject);
var _inativo: string;
begin
  inherited;
  if CheckBox1.Checked = True then
    _inativo := ' where ATIVO = 0'
  else
    _inativo := ' where ATIVO = 1';

  sqlstr := 'SELECT * FROM PRODUTOS ' + _inativo ;
  ConsultaMySql(FDQuery1,sqlstr);

end;

procedure TFrmConsultaProduto.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  Carregadados;
end;

end.
