unit tipunit;

interface

uses
  Windows, Messages, SysUtils,sunit, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGridEh, mySQLDbTables, ExtCtrls, DBCtrls, StdCtrls;

type
  Ttipform = class(TSForm)
    tipTable: TmySQLTable;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    tipTableid: TAutoIncField;
    tipTablename: TStringField;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    updTipQ: TmySQLQuery;
    complTable: TmySQLTable;
    complTableid: TAutoIncField;
    complTabletip: TIntegerField;
    complTablename: TStringField;
    DataSource2: TDataSource;
    DBGridEh2: TDBGridEh;
    Label2: TLabel;
    DBNavigator2: TDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tipTableBeforePost(DataSet: TDataSet);
    procedure tipTableBeforeDelete(DataSet: TDataSet);
    procedure tipTableAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tipform: Ttipform;

implementation

uses dmunit;

{$R *.dfm}

procedure Ttipform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Ttipform.tipTableBeforePost(DataSet: TDataSet);
begin
//if tipTableid.Value=0 then tipTable.Cancel;
end;

procedure Ttipform.tipTableBeforeDelete(DataSet: TDataSet);
begin
updTipQ.ParamByName('tip').AsInteger:=tipTableid.Value;
updtipq.ExecSQL;

end;

procedure Ttipform.tipTableAfterScroll(DataSet: TDataSet);
begin
 if tipTableid.Value=0 then DBNavigator1.Enabled:=false
                       else DBNavigator1.Enabled:=true;
end;

procedure Ttipform.FormCreate(Sender: TObject);
begin
tipTable.Open;
complTable.Open;
end;

end.
