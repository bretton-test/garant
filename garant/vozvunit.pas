unit vozvunit;

interface

uses
  Windows, Messages, SysUtils,Sunit, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, mySQLDbTables, StdCtrls, Mask, DBCtrlsEh, DBLookupEh, Grids,
  DBGridEh, provider, Buttons,  ExtCtrls,ehlibcds, DBClient, GridsEh ;

type
  TvozvForm = class(TSForm)
    Panel2: TPanel;
    ok: TBitBtn;
    DBGrid: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    servbox: TDBLookupComboboxEh;
    magdb: TmySQLQuery;
    magdbid: TAutoIncField;
    magdbname: TStringField;
    magdbadres: TStringField;
    magdbtel: TStringField;
    magdbservis: TSmallintField;
    magds: TDataSource;
    magcheck: TCheckBox;
    allmagquery: TmySQLQuery;
    ClientDS: TClientDataSet;
    DataSource1: TDataSource;
    curmagQuery: TmySQLQuery;
    insvozvq: TmySQLQuery;
    updRemont: TmySQLQuery;
    updTovar: TmySQLQuery;
    getVozvId: TmySQLQuery;
    getVozvIdid: TAutoIncField;
    updservis: TmySQLQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure servboxChange(Sender: TObject);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure okClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
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
   extern:boolean;

  end;

var
  vozvForm: TvozvForm;

implementation

uses dmunit;

{$R *.dfm}

procedure TvozvForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;
//-------------------------------------------------------------------------------
procedure TvozvForm.servboxChange(Sender: TObject);
var  TempProvider:TDataSetProvider;
begin
//
if servbox.Value<>null
then begin
          if ClientDS.Active then ClientDS.EmptyDataSet;
              Clientds.Close;
              screen.Cursor:=crSQLWait;
              TempProvider := TDataSetProvider.Create(nil);

     //   if not magcheck.Checked then
       //      begin
               allmagquery.Close;
               allmagquery.ParamByName('scenter').AsInteger:=servbox.Value;
               allmagquery.Open;
               TempProvider.DataSet :=allmagquery;
  //           end else
    //         begin
      //         curmagquery.Close;
     //          curmagquery.ParamByName('scenter').AsInteger:=servbox.Value;
     //          curmagquery.ParamByName('magid').AsInteger:=magid;
    //           curmagquery.Open;
    //           TempProvider.DataSet :=curmagquery;

    //         end;
          ClientDS.Data := TempProvider.Data;
          TempProvider.Free;
          ClientDS.Open;
          screen.Cursor:=crDefault;
          allmagquery.Close;
          curmagquery.Close;

     end;







     end;
 //-------------------------------------------------------------------------------
procedure TvozvForm.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 //showmessage(inttostr(key));
 if key=45 then
   begin
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
if (key=13) and (ClientDS.State<>dsBrowse) then ClientDS.Post;



  end;

procedure TvozvForm.okClick(Sender: TObject);
begin

 if not extern then
 begin
  if dbgrid.SelectedRows.Count>0 then
  begin
    Button1Click(nil);
   end else
   begin
    ShowMessage('нужно выбрать строку правой клавишей мышки или кнопкой Insert');
    exit;
  end;
 end;

      if (ClientDS.RecordCount>0) and (  MessageDlg('сохранить документ ?',
           mtConfirmation, [mbYes, mbNo], 0) = mrYes ) then
            begin
            if not dm.test then exit;
            if SaveRem then
                 begin
                  ok.Enabled:=false;
                  tform(self).Close;
                  end;
            end else DBGrid.Selection.Clear;

  end;
//----------------------------------------------------------------------------
function TvozvForm.SaveRem:boolean;
var temp:tdatetime;
    str:string;
begin
 result:=false;
 if ClientDS.State<> dsBrowse then ClientDS.Post;
 if servbox.Value=null then
          begin
           ShowMessage('нужно выбрать сервис-центр');
           exit;
          end;
  temp:=now;
   ClientDS.First;
   while not ClientDS.Eof
    do begin
         insvozvq.ParamByName('userid').Value:=userid;
         insvozvq.ParamByName('data').AsDateTime:=temp;
         insvozvq.ParamByName('magid').Value:=magid;
         insvozvq.ParamByName('remontid').Value:=ClientDS.FieldValues['remontid'];
         insvozvq.ParamByName('scenter').Value:=servbox.KeyValue;
         insvozvq.ParamByName('close').Value:=ClientDS.FieldValues['close'];
         insvozvq.ParamByName('comment').Value:=ClientDS.FieldValues['prim'];

         insvozvq.ExecSQL;

          getVozvId.Close;
          getVozvId.ParamByName('data').AsDateTime:=temp;
          getVozvId.ParamByName('remontid').AsInteger:=ClientDS.FieldValues['remontid'];
         getVozvId.Open;
         if getVozvId.RecordCount=1 then
                         begin
                         updservis.ParamByName('vozvratid').AsInteger:=getVozvIdid.Value;
                         updservis.ParamByName('servid').AsInteger:=ClientDS.FieldValues['servid'];
                         updservis.ExecSQL;

                         end else
                         begin
                          ShowMessage('ошибка получения кода возврата');
                          exit;
                         end;

         updRemont.ParamByName('skladid').AsInteger:=magid;
         updRemont.ParamByName('remontid').AsInteger:=ClientDS.FieldValues['remontid'];
         updRemont.ParamByName('close').Value:=ClientDS.FieldValues['close'];

         updRemont.ExecSQL;

         updTovar.ParamByName('mesto').Value:=magname;
         updTovar.ParamByName('tovarid').AsInteger:=ClientDS.FieldValues['tovarid'];
         updTovar.ExecSQL;
         if ClientDS.fieldbyname('close').AsInteger=1 then
         str:='отремонтирован' else str:='не отремонтирован';

          dm.newEvent(ClientDS.fieldbyname('tovarid').AsInteger,
              magid,userid,date+7,'возврат из  '+servbox.Text+' '+str);

        ClientDS.Next;
       end;

 result:=true;


end ;
//----------------------------------------------------------------------------------------
procedure TvozvForm.FormCreate(Sender: TObject);
begin
magdb.Open;
end;

procedure TvozvForm.DBGridMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if button=mbRight then
   begin
   dbgrid.SelectedRows.CurrentRowSelected:=not dbgrid.SelectedRows.CurrentRowSelected;
  end;
end;

procedure TvozvForm.Button1Click(Sender: TObject);
var I:integer;

begin
 i:=0;
 ClientDS.First;
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




 end;

end.
