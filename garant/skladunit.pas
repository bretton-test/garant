unit skladunit;

interface

uses
  Windows, Messages,sunit, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, mySQLDbTables, Grids, DBGridEh, ExtCtrls;

type
  Tskladform = class(TsForm)
    Panel1: TPanel;
    DBGrid: TDBGridEh;
    magtable: TmySQLTable;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  skladform: Tskladform;

implementation

uses dmunit;

{$R *.dfm}

procedure Tskladform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tskladform.FormCreate(Sender: TObject);
begin
magtable.Open;
end;

end.
