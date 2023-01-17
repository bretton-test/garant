unit movunit;

interface

uses
  Windows, Messages, SysUtils, Variants,sunit, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrlsEh, DBLookupEh, DB, mySQLDbTables, Grids,
  DBGridEh, ExtCtrls, DBClient,provider, Buttons, GridsEh;

type
  Tmovform = class(TSForm)
    Panel1: TPanel;
    DBGrid: TDBGridEh;
    Label1: TLabel;
    DataSource1: TDataSource;
    ClientDS: TClientDataSet;
    Panel2: TPanel;
    ok: TBitBtn;
    insremq: TmySQLQuery;
    updRemont: TmySQLQuery;
    updTovar: TmySQLQuery;
    allrem: TmySQLQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure okClick(Sender: TObject);
    procedure DBGridMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }

   function SaveRem:boolean;

  public
    { Public declarations }
   username:string;
   userid:integer;
   userprof:integer;
   magname:string;
   magid:integer;
  procedure loadDataset(const mag:integer);

  end;

var
  movform: Tmovform;

implementation

uses dmunit;

{$R *.dfm}

procedure Tmovform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;
//---------------------------------------------------------------------------

 procedure Tmovform.loadDataset(const mag:integer);

var  TempProvider:TDataSetProvider;

begin

 if ClientDS.Active then ClientDS.EmptyDataSet;
Clientds.Close;
screen.Cursor:=crSQLWait;
 allrem.Close;
 //allrem.ParamByName('magid').AsInteger:=mag;
 allrem.Open;

  TempProvider := TDataSetProvider.Create(nil);
  TempProvider.DataSet :=allrem;
  ClientDS.Data := TempProvider.Data;
  TempProvider.Free;
 ClientDS.Open;
screen.Cursor:=crDefault;
 allrem.Close;
end;
//----------------------------------------------------------------------------

procedure Tmovform.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=45 then begin
 dbgrid.SelectedRows.CurrentRowSelected:=not dbgrid.SelectedRows.CurrentRowSelected;
 ClientDS.Next;
 end;
 if key=46 then
  begin
      if (ClientDS.RecordCount>0) and (  MessageDlg('удалить строчку ?',
           mtConfirmation, [mbYes, mbNo], 0) = mrYes ) then
            begin
            ClientDS.Delete;

           end;
  end;
end;
//------------------------------------------------------------------------------






procedure Tmovform.okClick(Sender: TObject);
var i:integer;
begin

 if dbgrid.SelectedRows.Count=0 then
  begin
    ShowMessage('нужно выбрать строку правой клавишей мышки или кнопкой Insert');
   exit;
  end;
   ClientDS.First;
 i:=0;
 while not ClientDS.Eof do
  begin
  if dbgrid.SelectedRows.CurrentRowSelected then inc(i);
  dbgrid.SelectedRows.CurrentRowSelected:=not dbgrid.SelectedRows.CurrentRowSelected;
  ClientDS.Next;
  end;

 if  (dbgrid.SelectedRows.Count>0) and (i>0)
         then begin
               with ClientDS do
                 for i:=0 to dbgrid.SelectedRows.Count-1 do
                begin
                GotoBookmark(pointer(dbgrid.SelectedRows.Items[i]));
                  Delete;


                end;

             end;



      if (ClientDS.RecordCount>0) and (  MessageDlg('сохранить документ ?',
           mtConfirmation, [mbYes, mbNo], 0) = mrYes ) then
            begin
            if not dm.test then exit;
               if SaveRem then
                     begin
                       ok.Enabled:=false;
                        TForm(self).Close;
                      end;
            end else DBGrid.Selection.Clear;



end;
//----------------------------------------------------------------------------
function Tmovform.SaveRem:boolean;
begin
 result:=false;

   ClientDS.First;
   while not ClientDS.Eof
    do begin
         insremq.ParamByName('userid').Value:=userid;
         insremq.ParamByName('data').AsDateTime:=now;
         //insremq.ParamByName('magid').Value:=magid;
         insremq.ParamByName('magid').Value:=ClientDS.FieldValues['skladid'];
         insremq.ParamByName('remontid').Value:=ClientDS.FieldValues['remontid'];
         insremq.ParamByName('scenter').Value:=ClientDS.FieldValues['scenter'];
         insremq.ExecSQL;

         updRemont.ParamByName('skladid').AsInteger:=ClientDS.FieldValues['scenter'];
         updRemont.ParamByName('remontid').AsInteger:=ClientDS.FieldValues['remontid'];
         updRemont.ExecSQL;

         updTovar.ParamByName('mesto').AsString:=ClientDS.FieldValues['mname'];
         updTovar.ParamByName('tovarid').AsInteger:=ClientDS.FieldValues['tovarid'];
         updTovar.ExecSQL;
          dm.newEvent(ClientDS.fieldbyname('tovarid').AsInteger,
          magid,userid,date+5,'перемещение в '+ClientDS.fieldbyname('mname').AsString);


        ClientDS.Next;
       end;

 result:=true;


end ;
//--------------------------------------------------------------------------
procedure Tmovform.DBGridMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if button=mbRight then
   begin
   dbgrid.SelectedRows.CurrentRowSelected:=not dbgrid.SelectedRows.CurrentRowSelected;
  end;
end;

end.
