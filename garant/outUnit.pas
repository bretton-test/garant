unit outUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,sunit, DB, mySQLDbTables, StdCtrls, DBCtrls, Grids, DBGrids,
  DBGridEh, ExtCtrls, Buttons, GridsEh;

type
  Toutform = class(TSForm)
    tovout: TmySQLQuery;
    tovarname: TStringField;
    serialnum: TStringField;
    mesto: TStringField;
    name: TStringField;
    tel: TStringField;
    podmena: TStringField;
    tovoutremontid: TAutoIncField;
    DBText1: TDBText;
    ds: TDataSource;
    Label1: TLabel;
    DBText2: TDBText;
    Label2: TLabel;
    DBText3: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    DBText4: TDBText;
    tovoutcomment: TStringField;
    Label5: TLabel;
    DBText5: TDBText;
    tovoutpserialn: TStringField;
    DBText6: TDBText;
    Label6: TLabel;
    DBText7: TDBText;
    Label7: TLabel;
    remont: TmySQLQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    ok: TBitBtn;
    insout: TmySQLQuery;
    updUse: TmySQLQuery;
    seloutid: TmySQLQuery;
    tovoutid: TAutoIncField;
    seloutidid: TAutoIncField;
    tovoutpodmenaid: TIntegerField;
    updPodmena: TmySQLQuery;
    updRemont: TmySQLQuery;
    tovoutremdata: TDateTimeField;
    remontdata: TDateTimeField;
    remontname: TStringField;
    remontcomment: TStringField;
    remontresult: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure okClick(Sender: TObject);
  private
    { Private declarations }
    function saveout:boolean;

  public
    { Public declarations }
   username:string;
   userid:integer;
   userprof:integer;
   magname:string;
   magid:integer;
   remontid:integer;
  end;

var
  outform: Toutform;

implementation

uses dmunit;

{$R *.dfm}

procedure Toutform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=caFree;
end;
//----------------------------------------------------------------------------
procedure Toutform.okClick(Sender: TObject);
begin
  if    MessageDlg('сохранить документ ?',
           mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
            begin
            if not dm.test then exit;
            if Saveout then ok.Enabled:=false;


            end;
end;
//----------------------------------------------------------------------------
function Toutform.saveout:boolean;
var temp:TDateTime;
begin
result:=false;
temp:=now;
insout.ParamByName('remontid').Value:=remontid;
insout.ParamByName('data').AsDateTime:=temp;
insout.ParamByName('magid').Value:=magid;
insout.ParamByName('userid').Value:=userid;
insout.ExecSQL;

updUse.ParamByName('tovarid').Value:=tovoutid.Value;
updUse.ExecSQL;
updRemont.ParamByName('id').Value:=remontid;
updRemont.ExecSQL;

 dm.newEvent(tovoutid.AsInteger,
              magid,userid,date,'возврат клиенту ');



if tovoutpodmenaid.Value<>0 then
begin

updUse.ParamByName('tovarid').Value:=tovoutpodmenaid.Value;
updUse.ExecSQL;

seloutid.ParamByName('remontid').Value:=remontid;
seloutid.ParamByName('data').AsDateTime:=temp;
seloutid.Open;
if seloutid.RecordCount>0 then
              begin
                 updPodmena.ParamByName('endid').AsInteger:=seloutidid.Value;
                 updPodmena.ParamByName('remontid').AsInteger:=remontid;
                 updPodmena.ExecSQL;
              end;

end;

 result:=true;


end;
//-----------------------------------------------------------------------------
end.
