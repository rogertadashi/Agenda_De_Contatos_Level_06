unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tdata_Module = class(TDataModule)
    Conexao: TFDConnection;
    tabela_contatos: TFDTable;
    Data_Source_Contatos: TDataSource;
    tabela_contatosid: TFDAutoIncField;
    tabela_contatosnome: TStringField;
    tabela_contatoscelular: TStringField;
    tabela_contatosbloqueado: TBooleanField;
    tabela_contatosdata: TDateTimeField;
    tabela_contatosobservacoes: TMemoField;
    procedure tabela_contatosAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  data_Module: Tdata_Module;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdata_Module.tabela_contatosAfterInsert(DataSet: TDataSet);
begin
   tabela_contatosdata.Value := Now ();
end;

end.
