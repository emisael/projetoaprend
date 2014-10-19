unit UAprend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBClient, StdCtrls;

type
  TFrm = class(TForm)
    EdAssunto: TEdit;
    Label1: TLabel;
    Memo: TMemo;
    TabDados: TClientDataSet;
    DataSource: TDataSource;
    TabDadosAssunto: TStringField;
    TabDadosSobre: TMemoField;
    DBGrid1: TDBGrid;
    Button1: TButton;
    btGravar: TButton;
    btAbrir: TButton;
    SaveDialog: TSaveDialog;
    OpenDialog: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btGravarClick(Sender: TObject);
    procedure btAbrirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm: TFrm;

implementation

{$R *.dfm}

procedure TFrm.FormCreate(Sender: TObject);
begin
  TabDados.CreateDataSet;
end;

procedure TFrm.Button1Click(Sender: TObject);
begin
  TabDados.Append;
  TabDadosAssunto.AsString:= EdAssunto.Text;
  TabDadosSobre.AsString:= Memo.Text;
  TabDados.Post;
  EdAssunto.Clear;
  Memo.Clear;
end;

procedure TFrm.DBGrid1CellClick(Column: TColumn);
begin
  EdAssunto.Text:= TabDadosAssunto.AsString;
  Memo.Text:= TabDadosSobre.AsString;
end;

procedure TFrm.btGravarClick(Sender: TObject);
begin
  TabDados.SaveToFile('D:\Aprend\Dados.xml');
end;

procedure TFrm.btAbrirClick(Sender: TObject);
begin
  TabDados.LoadFromFile('D:\Aprend\Dados.xml');
end;

end.
