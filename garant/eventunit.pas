unit eventunit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,sunit, Grids, DBGridEh, DB, mySQLDbTables, StdCtrls, ExtCtrls,
  GridsEh, MemTableDataEh, DataDriverEh, MemTableEh,EhLibMTE,
  DBGridEhGrouping;

type
  Teventform = class(TSForm)
    eventQ: TmySQLQuery;
    DataSource3: TDataSource;
    DBGrid: TDBGridEh;
    alleventQ: TmySQLQuery;
    Panel2: TPanel;
    Button3: TButton;
    mytable: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    jevent: TmySQLQuery;
    Button1: TButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  userid:integer;
 
   magid:integer;

  end;

var
  eventform: Teventform;

implementation

uses dmunit, histunit, jurnunit, Unit1;

{$R *.dfm}

procedure Teventform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=caFree;
eventform:=nil;
end;

procedure Teventform.Button3Click(Sender: TObject);
var temp:Thistform;

begin
if DataSource3.DataSet.FieldByName('id').AsInteger=0 then exit;
temp:=Thistform.Create(tform(self),mybar);
temp.histQuery.ParamByName('tovarid').AsInteger:=DataSource3.DataSet.FieldByName('id').AsInteger;
temp.histQuery.ParamByName('remontid').AsInteger:=DataSource3.DataSet.FieldByName('id').AsInteger;

temp.histQuery.Open;
temp.DataSource1.DataSet:=temp.histQuery;
temp.Caption:='История по  '+DataSource3.DataSet.FieldByName('tovar').AsString;
temp.tovarid:=DataSource3.DataSet.FieldByName('id').AsInteger;
temp.Panel2.Visible:=true;
temp.userid:=userid;
temp.magid:=magid;
temp.Show;
temp.OnActivate(temp);

end;

procedure Teventform.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

 if DBGrid.DataSource.DataSet.FieldByName('inuse').AsInteger=0 then
 DBGrid.Canvas.Brush.Color:=$10FBFF;




IF  gdSelected   IN State
        Then Begin
                TDBGrideh(Sender).Canvas.Brush.Color:= clHighLight;
            //    TDBGrideh(Sender).Canvas.Font.Color := clHighLightText;
          end;
    TDBGrideh(Sender).Canvas.Brush.Color:=TDBGrideh(Sender).Canvas.Brush.Color;
    TDBGrideh(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure Teventform.Button1Click(Sender: TObject);
var temp:TjurnForm;
begin
temp:=TjurnForm.Create(mainform,mainform.myBar);
//temp:=TjurnForm.Create(tform(self),mybar);
 temp.Caption:='текущие ремонты';
 temp.ds.DataSet:=temp.tovvremonte;
 temp.CreateCds;

  temp.username:=mainform.username;
   temp.userid:=mainform.userid;
   temp.userprof:=mainform.userprof;
  temp. magname:=mainform.magname;
   temp.magid:=mainform.magid;
 temp.Show;
 temp.OnActivate(temp);
 temp.ClientDataSet.Locate('id',mytable.FieldValues['rid'],[]);
 temp.DBGridDblClick(nil);
 temp.Close;
end;

procedure Teventform.Button2Click(Sender: TObject);
var temp:TjurnForm;
begin
 temp:=TjurnForm.Create(mainform,mainform.mybar);
 temp.Caption:='какой товар возвращаем';
 temp.ds.DataSet:=temp.tovout;
 if mainform.userprof<>1 then temp.tovout.ParamByName('magid').Value:=mainform.magid else
  temp.tovout.ParamByName('magid').AsString:='%';
  temp.tovout.Open;
  temp.CreateCds;
  //temp.tovout.Filter:='client=1';
  //temp.tovout.Filtered:=true;
  temp.username:=mainform.username;
   temp.userid:=mainform.userid;
   temp.userprof:=mainform.userprof;
  temp. magname:=mainform.magname;
   temp.magid:=mainform.magid;
 temp.Button1.Visible:=false;

 temp.Show;
 temp.OnActivate(temp);
// ShowMessage(mytable.FieldValues['rid']);
  if  temp.ds.DataSet.Locate('remontid',mytable.FieldValues['rid'],[]) then
 temp.DBGridDblClick(nil)
 else ShowMessage('невозможно закрыть ремонт');
 temp.Close;



end;

initialization
  //DBGridEhDefaultStyle.FilterEditCloseUpApplyFilter := True;
end.
