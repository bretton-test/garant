unit carsunit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,sunit, DB, mySQLDbTables, Grids, DBGridEh;

type
  Tcarsform = class(TSForm)
    carsTable: TmySQLTable;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  carsform: Tcarsform;

implementation

uses dmunit;

{$R *.dfm}

procedure Tcarsform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;
//----------------------------------------------------------------------------



procedure Tcarsform.FormCreate(Sender: TObject);
begin
carsTable.Open;
end;

end.
