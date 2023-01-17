unit tovinunit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,sunit, StdCtrls, Buttons, ComCtrls, ExtCtrls, Mask, DBCtrlsEh,
  DB, mySQLDbTables, Grids, DBGridEh, DBLookupEh, CheckLst, GridsEh,
  DBGridEhGrouping;

type
  Ttovinform = class(TSForm)
    Panel1: TPanel;
    Panel2: TPanel;
    pagecontrol: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    BackB: TBitBtn;
    forB: TBitBtn;
    dataselledit: TDBDateTimeEditEh;
    Label8: TLabel;
    DBGridtovin: TDBGridEh;
    tovsellQ: TmySQLQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    tovnameedit: TDBEditEh;
    Label7: TLabel;
    tovnumbedit: TDBEditEh;
    Label12: TLabel;
    primedit: TDBEditEh;
    Label13: TLabel;
    kompedit: TDBEditEh;
    Label16: TLabel;
    videdit: TDBEditEh;
    seltip: TmySQLQuery;
    tipname: TDBLookupComboboxEh;
    DataSource2: TDataSource;
    selcomplect: TmySQLQuery;
    selcomplectname: TStringField;
    chekbox: TCheckListBox;
    Label2: TLabel;
    Label3: TLabel;
    clientname: TDBEditEh;
    Label4: TLabel;
    clientadr: TDBEditEh;
    Label5: TLabel;
    clienttel: TDBEditEh;
    Label6: TLabel;
    ClientQ: TmySQLQuery;
    DataSource3: TDataSource;
    clientgrid: TDBGridEh;
    magdb: TmySQLQuery;
    magdbid: TAutoIncField;
    magdbname: TStringField;
    magdbadres: TStringField;
    magdbtel: TStringField;
    magdbservis: TSmallintField;
    magds: TDataSource;
    Label15: TLabel;
    servbox: TDBLookupComboboxEh;
    Label11: TLabel;
    podmenaname: TDBEditEh;
    podmenanum: TDBEditEh;
    Label9: TLabel;
    saveB: TBitBtn;
    findtovq: TmySQLQuery;
    newTovarq: TmySQLQuery;
    findclQ: TmySQLQuery;
    newclQ: TmySQLQuery;
    insertRemQuery: TmySQLQuery;
    updTovarQuery: TmySQLQuery;
    remidQuery: TmySQLQuery;
    remidQueryid: TAutoIncField;
    delpodmena: TmySQLQuery;
    insPodmenaQuery: TmySQLQuery;
    updMesto: TmySQLQuery;
    selpictquery: TmySQLQuery;
    selpictqueryid: TAutoIncField;
    selpictqueryremont: TIntegerField;
    selpictqueryFILENAME: TStringField;
    selpictqueryFILE: TBlobField;
    BitBtn1: TBitBtn;
    spravq: TmySQLQuery;
    updatesell: TmySQLQuery;
    InsertSell: TmySQLQuery;
    dostavka: TCheckBox;
    Label10: TLabel;
    vodbox: TDBLookupComboboxEh;
    vodq: TmySQLQuery;
    DataSource4: TDataSource;
    datalabel: TLabel;
    dataDost: TDBDateTimeEditEh;
    timeDost: TDBComboBoxEh;
    timelabel: TLabel;
    Label14: TLabel;
    datadoceh: TDBDateTimeEditEh;
    magview: TmySQLQuery;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    SmallintField1: TSmallintField;
    magdbemail: TStringField;
    DataSource5: TDataSource;
    prodbox: TDBLookupComboboxEh;
    Label17: TLabel;
    maglabel: TLabel;
    pricel: TLabel;
    priceED: TDBNumberEditEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BackBClick(Sender: TObject);
    procedure forBClick(Sender: TObject);
    procedure dataselleditCloseUp(Sender: TObject; Accept: Boolean);
    procedure dataselleditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridtovinDblClick(Sender: TObject);
    procedure DBGridtovinKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tovnameeditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tovnumbeditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure tipnameCloseUp(Sender: TObject; Accept: Boolean);
    procedure tipnameChange(Sender: TObject);
    procedure primeditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure videditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tipnameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chekboxClickCheck(Sender: TObject);
    procedure chekboxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kompeditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure clientnameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure clientadrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure clientgridDblClick(Sender: TObject);
    procedure clientgridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure clienttelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure servboxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure podmenanameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure saveBClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure podmenanumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure tovnameeditKeyPress(Sender: TObject; var Key: Char);
    procedure dostavkaClick(Sender: TObject);
    procedure dostavkaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure vodboxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dataDostKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure timeDostKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure datadocehCloseUp(Sender: TObject; Accept: Boolean);
  private
    { Private declarations }
  function ChekPage(const Pindex:integer):boolean;
  function FindorCreateTovar(const tovname,tovnumber:string;const tip:integer):integer;
  function FindorCreateClient(const cname,adr,tel:string):integer;
  function insertRemont:boolean;
  function updatetovar:boolean;
  function GetRemontId:integer;
 // function mymagid(const mymag:text):integer;

  public
    { Public declarations }
   username:string;
   userid:integer;
   spravid:integer;
   magname:string;
   magid:integer;
   clientid:integer;
   tovarid:integer;
   podmenaid:integer;
   remontid:integer;
   saved:boolean;
  sellid:integer;
 end;

var

  tovinform: Ttovinform;

implementation

uses dmunit, DateUtils, StrUtils;

{$R *.dfm}
{function Ttovinform.mymagid(const mymag:text):integer;
 var temp:string;
 begin
   result:=0;
   if trim(mymag)='' then  exit;
   temp:=trim(AnsiUpperCase(mymag));
   if temp:='ТЕХНОМАРКЕТ'


 end; }
//----------------------------------------------------------------------------
   function Ttovinform.GetRemontId:integer;
  begin
   result:=0;
    remidQuery.Close;
    remidQuery.ParamByName('tovar').AsInteger:=tovarid;
    remidQuery.ParamByName('magid').AsInteger:=magid;
    remidQuery.ParamByName('data').AsDate:=datadoceh.Value;
    remidQuery.Open;
    if remidQuery.RecordCount=1 then result:=remidQueryid.Value;
    remidQuery.Close;

  end;


//---------------------------------------------------------------------------
 function Ttovinform.updatetovar:boolean;
  begin
    result:=false;
     try
    updTovarQuery.ParamByName('inuse').AsInteger:=1;
    if clientid=0 then updTovarQuery.ParamByName('client').AsInteger:=0
                  else updTovarQuery.ParamByName('client').AsInteger:=1;

    updTovarQuery.ParamByName('id').AsInteger:=tovarid;
    updTovarQuery.ParamByName('sklad').AsString:=magname;
    updTovarQuery.ExecSQL;

    result:=true;
except
    ShowMessage('ошибка записи в таблицу товара');

end;



  end;
//----------------------------------------------------------------------------




 function Ttovinform.insertRemont:boolean;
var datad:tdatetime;

 begin
result:=false;
  try
    if datadoceh.Value=null then datadoceh.Value:=now;
    insertRemQuery.ParamByName('tovar').AsInteger:=tovarid;
    insertRemQuery.ParamByName('magid').AsInteger:=magid;
    insertRemQuery.ParamByName('userid').AsInteger:=userid;
    insertRemQuery.ParamByName('clientid').AsInteger:=clientid;
    insertRemQuery.ParamByName('data').AsDateTime:=datadoceh.value;//now;
    insertRemQuery.ParamByName('podmena').AsInteger:=podmenaid;
    insertRemQuery.ParamByName('comment').AsString:=primedit.Text;
    insertRemQuery.ParamByName('sklad').AsInteger:=magid;
    insertRemQuery.ParamByName('scenter').AsInteger:=servbox.Value;
    insertRemQuery.ParamByName('price').AsInteger:=priceed.Value;

    if dostavka.Checked then
                          begin
                          insertRemQuery.ParamByName('dostavka').AsInteger:=1;
                          if dataDost.Value<>null then datad:=datadost.Value
                          else datad:=date;
                         if timedost.Value='' then datad:=datad+StrToTime('09:00:00')
                                                 else datad:=datad+StrToTime(timedost.Value);
                         insertRemQuery.ParamByName('datadost').AsDateTime:=datad;


                       end else
                        begin
                         insertRemQuery.ParamByName('dostavka').AsInteger:=0;
                          insertRemQuery.ParamByName('datadost').AsDateTime:=now;
                         end;

    if vodbox.Value<>null then  insertRemQuery.ParamByName('driver').AsInteger:=vodbox.KeyValue
                          else  insertRemQuery.ParamByName('driver').AsInteger:=0;


    if kompedit.Text='' then
    insertRemQuery.ParamByName('complect').AsString:='-'
    else insertRemQuery.ParamByName('complect').AsString:=kompedit.Text;
     if videdit.Text='' then
    insertRemQuery.ParamByName('vid').AsString:='-'
    else insertRemQuery.ParamByName('vid').AsString:=videdit.Text;


    insertRemQuery.ExecSQL;
    result:=true;
except
    ShowMessage('ошибка записи в таблицу ремонта');

end;

 end;
//---------------------------------------------------------------------------








 //-------------------------------------------------------------------------
  function Ttovinform.FindorCreateClient(const cname,adr,tel:string):integer;
  begin
     result:=0;
     With findclq do
    begin
      Close;
      ParamByName('name').AsString:=AnsiLowerCase(trim(cname));
      ParamByName('adr').AsString:=AnsiLowerCase(trim(adr));
      open;
     end;
   if (findclq.RecordCount>=1)  then begin
                                   result:=findclq.FieldValues['id'];
                                       if Length(tel)>5 then   dm.ExecQuery('update garant.customer set tel='+chr(39)+tel+chr(39)+' where id='+inttostr(Result));

                                   exit;
                                  end;

   With newclq do
    begin
      Close;
      ParamByName('name').AsString:=AnsiUpperCase(trim(cname));
      ParamByName('adr').AsString:=AnsiUpperCase(trim(adr));
      ParamByName('tel').AsString:=AnsiUpperCase(trim(tel));
      ExecSQL;

     end;
    With findclq do
    begin
      Close;
      ParamByName('name').AsString:=AnsiLowerCase(trim(cname));
      ParamByName('adr').AsString:=AnsiLowerCase(trim(adr));
      open;
     end;
   if findclq.RecordCount=1 then begin
                                   result:=findclq.FieldValues['id'];

                                  end;




    findclq.Close;


  end;
 //--------------------------------------------------------------------------
 function Ttovinform.FindorCreateTovar(const tovname,tovnumber:string;const tip:integer):integer;
 begin
   result:=0;
 if Length(trim(tovnumber))>5 then
 begin
   With findtovq do
    begin
      Close;
      ParamByName('name').AsString:=AnsiUpperCase(trim(tovname));
      ParamByName('num').AsString:=AnsiUpperCase(trim(tovnumber));
      open;
     end;
   if findtovq.RecordCount>=1 then begin
                                   result:=findtovq.FieldValues['id'];
                                   exit;
                                  end;

    end;
   With newTovarq do
    begin
      Close;
      ParamByName('name').AsString:=AnsiUpperCase(trim(tovname));
      ParamByName('num').AsString:=AnsiUpperCase(trim(tovnumber));
      ParamByName('tip').AsInteger:=tip;
      ExecSQL;

     end;
    With findtovq do
    begin
      Close;
      ParamByName('name').AsString:=AnsiUpperCase(trim(tovname));
      ParamByName('num').AsString:=AnsiUpperCase(trim(tovnumber));
      open;
     end;
   if findtovq.RecordCount>=1 then begin
                                   result:=findtovq.FieldValues['id'];

                                  end;


     findtovq.Close;
 end;
 //------------------------------------------------------------------------------
function Ttovinform.ChekPage(const Pindex:integer):boolean;
 var i:integer;
 temp:string;
 begin
 result:=false;

   case Pindex of
      0: begin
         //  while pos('%',tovnameedit.value)>0 DO StuffString(tovnameedit.Value,pos('%',tovnameedit.value),1,' ');
           temp:=tovnameedit.Value;
            for i:=1 to length(temp) do if temp[i]='%' then temp[i]:=' ';
           tovnameedit.Value:=temp;
           if tovnameedit.Value='' then begin tovnameedit.SetFocus;exit;end;
           if length(trim(tovnumbedit.Value))<4 then begin tovnumbedit.SetFocus;exit;end;
           if (dataselledit.Value<>null) and (prodbox.Visible) and (prodbox.Value=null) then
           begin
           prodbox.SetFocus;
           exit;

           end;
           result:=true;

         end;

     1: begin
           if length(trim(primedit.Value))<6 then begin primedit.SetFocus;exit;end;
           if Trim(AnsiUpperCase(primedit.Value))='НЕ РАБОТАЕТ' then begin primedit.SetFocus;exit;end;
          // if videdit.Value='' then begin videdit.SetFocus;exit;end;
          // if kompedit.Value='' then begin kompedit.SetFocus;exit;end;

           result:=true;

         end;

      
     2: begin
           if not clientname.enabled then begin result:=true;exit;   end;
           if clientname.Value='' then begin clientname.SetFocus;exit;end;
           if clientadr.Value='' then begin clientadr.SetFocus;exit;end;
           result:=true;

         end;




    end;//case
  end;


 procedure Ttovinform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;

end;

procedure Ttovinform.FormDestroy(Sender: TObject);
begin
tovinform:=nil;
end;

procedure Ttovinform.BackBClick(Sender: TObject);
begin
if pagecontrol.ActivePageIndex >0 then
pagecontrol.SelectNextPage(false,true);
   case pagecontrol.ActivePageIndex
    of  2:if  not clientname.Enabled then pagecontrol.SelectNextPage(false,true);

     end;

end;

procedure Ttovinform.forBClick(Sender: TObject);
begin
if ChekPage(pagecontrol.ActivePageIndex)then
    begin
    if pagecontrol.ActivePageIndex<pagecontrol.PageCount-1 then
    pagecontrol.SelectNextPage(true,true);
    case pagecontrol.ActivePageIndex
    of 1: primedit.SetFocus;
       2:if clientname.Enabled then clientname.SetFocus ELSE forBClick(forb);
       3:if servbox.Value=null then begin servbox.DropDown;servbox.SetFocus;end
          else ;

     end;
    end;

end;

procedure Ttovinform.dataselleditCloseUp(Sender: TObject; Accept: Boolean);
var temp:boolean;
 shift:TShiftState;
  mykey:word;
 begin
if dataselledit.Value<>null
then begin
  if  (tdatetime(dataselledit.Value) >Date)
     or (dataselledit.Value<StrToDate('01.01.2000')   )
       then
     begin
      dataselledit.Value:=null;

      exit;
     end;

  DataSource1.DataSet:=tovsellQ;
 //DBGridtovin.SetFocus ;

  tovsellQ.Close;
  tovsellQ.ParamByName('data').AsDate:=dataselledit.Value;
  tovsellq.Open;


  DBGridtovin.Visible:=tovsellQ.RecordCount>0;
  if tovsellQ.RecordCount=0 then
   begin
    mykey:=13;
    tovnameeditKeyDown(tovnameedit,mykey,shift);
    end;
  tovnameedit.ReadOnly:=false;
  sellid:=0;

  end ;

   temp:=dataselledit.Value<>null;
    dostavka.Visible:=temp;

    label11.Visible:=temp;
    podmenaname.Visible:=temp;
    label9.Visible:=temp;
    podmenanum.Visible:=temp;
    clientname.Enabled:=Temp;
    clientadr.Enabled:=Temp;
    clienttel.Enabled:=Temp;
//     DBGridtovin.Visible:=temp;
    pricel.Visible:=temp;
    priceED.Visible:=temp;

   if  DBGridtovin.Visible then
    DBGridtovin.SetFocus else
  tovnameedit.SetFocus;


  end;

procedure Ttovinform.dataselleditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then dataselleditCloseUp(dataselledit,true);

end;

procedure Ttovinform.DBGridtovinDblClick(Sender: TObject);
begin

tovnameedit.Value:=DBGridtovin.DataSource.DataSet.Fieldbyname('tovname').AsString;  //tovsellQ.Fieldbyname('tovname').AsString;
if (DBGridtovin.DataSource.DataSet=tovsellQ) then
   begin
  if (length(tovsellQ.Fieldbyname('serialnum').AsString)>3) then
     tovnumbedit.Value:=tovsellQ.Fieldbyname('serialnum').AsString;
    sellid:=tovsellQ.Fieldbyname('id').AsInteger;
    prodbox.Visible:=false;
    maglabel.Caption:=tovsellQ.FieldValues['mag'];
    maglabel.Visible:=true;

    tovnameedit.ReadOnly:=true;
   end;
if DBGridtovin.DataSource.DataSet=spravq then

 spravid:=spravq.fieldbyname('id').AsInteger;
//tovnumbedit.Value:=tovsellQ.Fieldbyname('serialnum').AsString;
//tipname.KeyValue:= tovsellQ.Fieldbyname('tip').AsInteger;
DBGridtovin.Visible:=false;
//tipnameCloseUp(tipname,true);
//forb.SetFocus;
tovnumbedit.SetFocus;
end;

procedure Ttovinform.DBGridtovinKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//ShowMessage(inttostr(key));
if (key=38) and (DBGridtovin.DataSource.DataSet.Bof) then tovnameedit.SetFocus;
if key=13 then DBGridtovinDblClick(DBGridtovin);

end;

procedure Ttovinform.tovnameeditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
begin
 if (dataselledit.Value<>null) and (tovsellQ.RecordCount>0) and
   (tovnameedit.Text='' ) then
 begin
 DataSource1.DataSet:=tovsellQ;
 DBGridtovin.SetFocus ;
end ;

 if (dataselledit.Value=null) or ((dataselledit.Value<>null) and (tovsellQ.RecordCount=0)) then
 begin
        with spravq do
         begin
           close;
           ParamByName('name').AsString:=trim('%'+AnsiLowerCase(tovnameedit.Value))+'%';
           open;
         end;
       DataSource1.DataSet:=spravq;
      if spravq.RecordCount>0 then
        begin
         DBGridtovin.Visible:=true;
        DBGridtovin.SetFocus;
        end;
      end;

end;


///tovnumbedit.SetFocus;
end;

procedure Ttovinform.tovnumbeditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then forB.SetFocus;
end;

procedure Ttovinform.FormCreate(Sender: TObject);
begin
datadoceh.Value:=now;
seltip.Open;
magdb.Open;
magview.Open;
saved:=false;
sellid:=0;
spravid:=0;
end;

procedure Ttovinform.tipnameCloseUp(Sender: TObject; Accept: Boolean);
begin
//if tipname.Value<>0
//then begin
      selcomplect.Close;
      selcomplect.ParamByName('tip').AsInteger:=tipname.Value;
      selcomplect.Open;
      if selcomplect.RecordCount>0 then
       begin
         chekbox.Visible:=true;
         chekbox.Items.Clear;
               while not selcomplect.Eof do
               begin
                chekbox.Items.Add(selcomplectname.Value);
                selcomplect.Next;
               end;
               selcomplect.Close;
       end else chekbox.Visible:=false;
  //  end;

end;

procedure Ttovinform.tipnameChange(Sender: TObject);
begin
if pagecontrol.ActivePageIndex=1 then
TIPNAME.DropDown;

end;

procedure Ttovinform.primeditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then videdit.SetFocus;
end;

procedure Ttovinform.videditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tipname.SetFocus;
end;

procedure Ttovinform.tipnameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) and (tipname.Text<>'') then
              begin
               tipname.CloseUp(true);
                if chekbox.Visible then  chekbox.SetFocus;

              end;


end;

procedure Ttovinform.chekboxClickCheck(Sender: TObject);
 var i:integer;
 begin
kompedit.Text:='';
for i:=0 to chekbox.Items.Count-1 do
    begin
    if chekbox.Checked[i] then
      kompedit.Text:=kompedit.Text+chekbox.Items.Strings[i]+';';

    end;
end;

procedure Ttovinform.chekboxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then kompedit.SetFocus;


end;

procedure Ttovinform.kompeditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then forB.SetFocus;
end;

procedure Ttovinform.clientnameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
     begin
       if clientname.Value<>'' then
           begin

             with  ClientQ do
               begin
                 Close;
                 ParamByName('name').AsString:=AnsiLowerCase(clientname.Value)+'%';
                 open;
                 clientgrid.Visible:=RecordCount>0;
               end;


           end;
        if  clientgrid.Visible then clientgrid.SetFocus;// else
                               // clientadr.SetFocus;
     end;
end;

procedure Ttovinform.clientadrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then clienttel.SetFocus;
end;

procedure Ttovinform.clientgridDblClick(Sender: TObject);
begin
clientname.Value:=ClientQ.fieldbyname('name').AsString;
clientadr.Value:=ClientQ.fieldbyname('adres').AsString;
clienttel.Value:=ClientQ.fieldbyname('tel').AsString;
clientgrid.Visible:=false;
if  clienttel.Value<>'' then
forB.SetFocus
else clienttel.SetFocus;


end;

procedure Ttovinform.clientgridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=38) and (clientgrid.DataSource.DataSet.Bof) then clientname.SetFocus;
if key=13 then clientgridDblClick(clientgrid);
//if key=38 then clientname.SetFocus;
//ShowMessage(inttostr(key));
end;

procedure Ttovinform.clienttelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 var i,j:integer;
   temp:string;
  begin

if key=13 then
 begin

 temp:=trim(clienttel.Text);
 if pos('-',temp)=0 then
 begin
   if round(length(temp)/3)<>(length(temp)/3) then
   i:=round(length(temp)/3)
   else  i:=round(length(temp)/3)-1;
   for j:=1 to i
    do begin
       insert('-',temp,j*4);

      end;
    if temp<>'' then clienttel.Value:=temp;

  end;
 forB.SetFocus;
 end;
end;

procedure Ttovinform.servboxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
  begin
  servbox.CloseUp(true);
  if podmenaname.Visible then podmenaname.SetFocus
  else saveB.SetFocus;
  end;
end;

procedure Ttovinform.podmenanameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then podmenanum.SetFocus;
end;

procedure Ttovinform.saveBClick(Sender: TObject);
var tip:integer;

begin
If (dataDost.Visible) and (dataDost.Value<date) then begin datadost.SetFocus;exit;end;
If (timeDost.Visible) and (timeDost.Value='') then begin timedost.SetFocus;exit;end;

if servbox.Text='' then begin servbox.SetFocus;exit;end;
if not dm.test then exit;
if not saved then

   begin
      if MessageDlg('Сохранить документ ?',
           mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
  if tipname.Value<>null
  then
  tip:=tipname.Value
  else tip:=0;
  tovarid:=FindorCreateTovar(tovnameedit.Value,tovnumbedit.Value,tip);
  if tovarid=0 then begin
                     ShowMessage('ошибка сохранения товара. проверте название и сер.номер.');
                     exit;
                    end;
  if (podmenaname.Visible) and (podmenaname.Value<>'') and
  (podmenanum.Value<>'') then
  podmenaid:=FindorCreateTovar(podmenaname.Value,podmenanum.Value,0)
  else podmenaid:=0;
   if clientname.Enabled then
   clientid:=FindorCreateClient(clientname.Value,clientadr.Value,clienttel.Value)
   else clientid:=0;
   if not insertRemont then exit;

   if not updatetovar then exit;

    if (sellid>0) and (tovarid>0) then
         with updatesell do
          begin
            ParamByName('tovar').AsInteger:=tovarid;
            ParamByName('client').AsInteger:=clientid;
            ParamByName('id').AsInteger:=sellid;
            ExecSQL;
         end;

        if (sellid=0) and (tovarid>0) and (clientid>0)  then
          with InsertSell do
          begin
            ParamByName('tovar').AsInteger:=tovarid;
            ParamByName('data').AsDate:=dataselledit.Value;
            ParamByName('mag').AsString:=prodbox.value;
            ParamByName('owner').AsString:=username;
            ParamByName('customer').AsInteger:=clientid;
            ParamByName('serialnum').AsString:=copy(trim(tovnumbedit.Value),1,45);
            ParamByName('sprav').AsInteger:=spravid;
            ExecSQL;

          end;
      remontid:=GetRemontId;
              if remontid=0 then ShowMessage('ошибка получения кода ремонта');
              dm.newEvent(tovarid,magid,userid,date+1,'поступление в ремонт');


              if (podmenaid<>0) and  (remontid<>0)
              then             begin
                                delpodmena.ParamByName('id').Value:=remontid;
                                delpodmena.ExecSQL;

                               if clientid>0 then
                                          begin
                                           updMesto.ParamByName('mesto').Value:=clientname.Text;
                                           updMesto.ParamByName('id').Value:=podmenaid;
                                           updMesto.ExecSQL;
                                          end;
                                insPodmenaQuery.ParamByName('tovar').AsInteger:=podmenaid;
                                insPodmenaQuery.ParamByName('remont').AsInteger:=remontid;
                                insPodmenaQuery.ExecSQL;
                               end;

      saved:=true;
   end;//dlg
  end;//if
    dm.remontprint.ParamByName('remontid').Value:=remontid;
    dm.remontprint.ParamByName('mymag').Value:=magid;
    selpictquery.ParamByName('id').Value:=remontid;
    if dataselledit.Value<>null then dm.selldata:=dataselledit.Value;
   // dm.setreport(dm.remontprint,selpictquery,nil,nil,'\kvit.frf');
   dm.setreport4(dm.remontprint,selpictquery,nil,nil,'\kvit.fr3');
   if (dostavka.Visible) and ( dostavka.Checked) then
              begin
                dm.newEvent(tovarid,magid,userid,now,'заявление на диагностику от '+clientname.Text+'.Водитель '+vodbox.Text);
                 dm.setreport4(dm.remontprint,nil,nil,nil,'\zayavka.fr3')

              end;

end;

procedure Ttovinform.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canclose:=false;
if saved then canclose:=true
else   if MessageDlg('Документ не сохранён.Закрыть ?',
           mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            canclose:=true;




end;

procedure Ttovinform.podmenanumKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then dostavka.SetFocus;
end;

procedure Ttovinform.BitBtn1Click(Sender: TObject);
begin
tovinform.Close;
end;

procedure Ttovinform.tovnameeditKeyPress(Sender: TObject; var Key: Char);
begin
//if key=' ' then key:='%';
end;

procedure Ttovinform.dostavkaClick(Sender: TObject);
begin
if dostavka.Checked then
  begin
    vodq.Open;
    vodbox.Visible:=true;
    Label10.Visible:=true;
    datalabel.Visible:=true;
    timelabel.Visible:=true;
    dataDost.Visible:=true;
    datadost.Value:=now;
    timeDost.Visible:=true;


  end else
  begin
   vodq.close;
    vodbox.Visible:=false;
    Label10.Visible:=false;
    datalabel.Visible:=false;
    timelabel.Visible:=false;
    dataDost.Visible:=false;
    timeDost.Visible:=false;


  end;
end;

procedure Ttovinform.dostavkaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) and (vodbox.Visible) then  datadost.SetFocus;
if (key=13) and (not vodbox.Visible) then  saveb.SetFocus;

end;

procedure Ttovinform.vodboxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//ShowMessage(inttostr(key));
if key=8 then vodbox.Value:=null;

if key=13 then saveB.SetFocus;
end;

procedure Ttovinform.dataDostKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then  timedost.SetFocus;
end;

procedure Ttovinform.timeDostKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then  vodbox.SetFocus;
end;

procedure Ttovinform.datadocehCloseUp(Sender: TObject; Accept: Boolean);
begin
if datadoceh.Value<date then
  begin
    ShowMessage('оформляете задним числом ?');
    datadoceh.Value:=now;
  end;

end;

end.
