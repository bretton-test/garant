unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,barUnit, SpeedForm, DB, mySQLDbTables, Mask,
  DBCtrlsEh, DBLookupEh, Menus, Buttons,INIFiles, Grids, DBGridEh, ComCtrls;

type
  Tmainform = class(TForm)
    logform: TSpeedForm;
    userdb: TmySQLTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    userdbid: TAutoIncField;
    userdbname: TStringField;
    userdbprof: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    namebox: TDBLookupComboboxEh;
    magbox: TDBLookupComboboxEh;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    magdb: TmySQLQuery;
    magdbid: TAutoIncField;
    magdbname: TStringField;
    magdbadres: TStringField;
    magdbtel: TStringField;
    magdbservis: TSmallintField;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    Button3: TButton;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    Button4: TButton;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    Button5: TButton;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    Email1: TMenuItem;
    magdbemail: TStringField;
    Label3: TLabel;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    userdbpassword: TStringField;
    passedit: TDBEditEh;
    passlabel: TLabel;
    N35: TMenuItem;
    N36: TMenuItem;
    passeditform: TSpeedForm;
    Label5: TLabel;
    Label6: TLabel;
    oldpass: TDBEditEh;
    newpass: TDBEditEh;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    nameed: TDBEditEh;
    Label7: TLabel;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    kbtButton: TButton;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    dateform: TSpeedForm;
    edata: TDateTimePicker;
    BitBtn2: TBitBtn;
    allservis: TmySQLQuery;
    DataSource3: TDataSource;
    servbox: TDBLookupComboboxEh;
    N41: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    vozvDial: TSpeedForm;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    kd: TDBDateTimeEditEh;
    Label4: TLabel;
    Label8: TLabel;
    nd: TDBDateTimeEditEh;
    userdbvisible: TSmallintField;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
   
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure MainMenu1Change(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure N28Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    //procedure Email1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure nameboxChange(Sender: TObject);
    procedure passeditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure kbtButtonClick(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure N45Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
  private
   function addprobelleft(const str:string;const dlinna:integer):string;
   function addprobelright(const str:string;const dlinna:integer):string;
    { Private declarations }
  public
   username:string;
   userid:integer;
   userprof:integer;
   magname:string;
   magadres:string;
   magid:integer;
    { Public declarations }
   myBar:TTaskbar;
  end;

var
  mainform: Tmainform;

implementation

uses dmunit, userunit, tovarunit, custunit, aktunit, jurnunit, skladunit,
  movunit, vozvunit, tipunit, carsunit, SMTP1, histunit, tovinunit,
  eventunit, zunit;





{$R *.dfm}
 //---------------------------------------------------------------------------
function tmainform.addprobelleft(const str:string;const dlinna:integer):string;
var temp:string;
 var i,d:integer;
 begin
 result:='';
 temp:='';
  d:=dlinna-length(trim(str));
  for i:=1 to d do temp:=temp+' ';
   result:=temp+trim(str);

 end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function tmainform.addprobelright(const str:string;const dlinna:integer):string;
var temp:string;
 var i,d:integer;
 begin
 result:='';
 temp:='';
  d:=dlinna-length(trim(str));
  for i:=1 to d do temp:=temp+' ';
   result:=trim(str)+temp;
  // ShowMessage(IntToStr(length(Result)));
 end;

//------------------------------------------------------------------------------







procedure Tmainform.FormCreate(Sender: TObject);
  var FINIFile: TINIFile;
begin
nd.Value:=date;
kd.Value:=date;
myBar:=TTaskbar.Create(tform(self));
myBar.Parent:=tform(self);
myBar.Visible:=true;
with tform(self) do
  begin
  Left:=0;
  top:=0;
  Width:=Screen.Width;
  Height:=Screen.Height-30;
  //Caption:='Приём платежей ';
  end;


 try
  FINIFile := TINIFile.Create(ExtractFilePath(Application.ExeName)+'Project1.ini');
    magid:= strtoint( FINIFile.readString('mag', 'id', '')) ;

 finally
   FreeAndNil(FINIFile);
  end;

end;

procedure Tmainform.FormResize(Sender: TObject);
begin
 if mybar<>nil

 then
  begin
  mybar.resizeButtons;
  mybar.resizewindows;

 end;
end;

procedure Tmainform.FormShow(Sender: TObject);

begin
while dm=nil do Application.ProcessMessages;

if dm.connect then
    begin
    userdb.Open;
    magdb.Open;
    magbox.KeyValue:=magid;
   namebox.DropDownBox.Rows:=userdb.RecordCount+1;

  if logform.Showmodal = mrOk
  then begin
      if (namebox.KeyValue=null) or (magbox.KeyValue=null) then
       Application.Terminate;

       username:=userdbname.Value;
       userprof:=userdbprof.Value;
       magname:=magdbname.Value;
       magadres:=magdbadres.Value;
       userid:=userdbid.Value;
       magid:=magdbid.Value;
       dm.dmuserid:=userid;
       dm.dmmagid:=magid;

       userdb.Close;
       magdb.Close;
       mainform.Caption:=dm.myBase.Host+'@'+username+':'+magname;
     {if not assigned(eventform) then eventform:=Teventform.Create(self,myBar);
       eventform.eventQ.ParamByName('mag').AsInteger:=magid;
       eventform.eventQ.Open;
       //eventform.DataSource3.DataSet:=eventform.eventQ;
       eventform.DataSetDriverEh1.ProviderDataSet:=eventform.eventQ;
       eventform.mytable.Open;
       eventform.userid:=userid;
       eventform.magid:=magid;
       if eventform.eventQ.RecordCount>0
       then
       eventform.Show else eventform.Close;  }


       end else
       begin


        Application.Terminate;

        end;
    end ;
end;
//---------------------------------------------------------------------------
procedure Tmainform.N2Click(Sender: TObject);
var temp: Tuserform;
begin
temp:=Tuserform.Create(mainform,myBar);
if userprof<>1 then
begin
  temp.BitBtn1.Enabled:=false;
  temp.BitBtn2.Enabled:=false;
  temp.BitBtn3.Enabled:=false;
end;
  temp.userquery.Open;
temp.Show;


end;
//---------------------------------------------------------------------------
procedure Tmainform.N6Click(Sender: TObject);
var temp:Ttovarform;
begin
temp:=Ttovarform.Create(tform(self),myBar);
temp.userid:=userid;
temp.magid:=magid;
//temp.tovarTable.Open;
temp.Show;

end;
//----------------------------------------------------------------------------
procedure Tmainform.N4Click(Sender: TObject);
var temp:Tcustform;
begin
temp:=Tcustform.Create(tform(self),mybar);

temp.Show;


end;
//------------------------------------------------------------------------------




procedure Tmainform.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if mainform.MDIChildCount>0 then
begin
ShowMessage('Закройте все активные документы.');
CanClose:=false
end else CanClose:=true;

end;
//--------------------------------------------------------------------------------
procedure Tmainform.BitBtn1Click(Sender: TObject);
var temp:Taktform;
begin
 temp:=Taktform.Create(tform(self),mybar);
 temp.username:=username;
 temp.userid:=userid;
 temp.magname:=magname;
 temp.magid:=magid;
 temp.newakt:=true;
 temp.userlabel.Caption:='автор - '+temp.username+
                        ': магазин - '+temp.magname+' : дата - '+datetostr(date);
 temp.BitBtn6.Enabled:=false;
 temp.Show;

end;
//--------------------------------------------------------------------------------
procedure Tmainform.BitBtn2Click(Sender: TObject);
var temp:TjurnForm;
begin
 temp:=TjurnForm.Create(tform(self),mybar);
 temp.Caption:='текущие ремонты';
 temp.ds.DataSet:=temp.tovvremonte;
 temp.CreateCds;

  temp.username:=username;
   temp.userid:=userid;
   temp.userprof:=userprof;
  temp. magname:=magname;
   temp.magid:=magid;
 temp.Show;
 temp.OnActivate(temp);
end;

procedure Tmainform.N8Click(Sender: TObject);
var temp:Tskladform;
begin
 temp:=Tskladform.Create(tform(self),mybar);
 if userprof=1 then temp.DBGrid.ReadOnly:=false;
 temp.Show;

end;

procedure Tmainform.N11Click(Sender: TObject);
var temp:TjurnForm;
begin
 temp:=TjurnForm.Create(tform(self),mybar);
 temp.Caption:='все ремонты';
 temp.ds.DataSet:=temp.allrem;
 temp.allrem.Open;
  temp.CreateCds;
  temp.username:=username;
   temp.userid:=userid;
   temp.userprof:=userprof;
  temp. magname:=magname;
   temp.magid:=magid;
 temp.Button1.Visible:=false;
 temp.Show;
 temp.OnActivate(temp);
 end;

procedure Tmainform.Button3Click(Sender: TObject);
var temp:Tmovform;
begin
 temp:=Tmovform.Create(tform(self),mybar);
 temp.username:=username;
   temp.userid:=userid;
   temp.userprof:=userprof;
   temp. magname:=magname;
   temp.magid:=magid;
   temp.loadDataset(magid);
 temp.Show;

end;

procedure Tmainform.N14Click(Sender: TObject);
var temp:TjurnForm;
begin
 temp:=TjurnForm.Create(tform(self),mybar);
 temp.Caption:='товар в сервисном центре';
 temp.ds.DataSet:=temp.servQuery;
 temp.servQuery.Open;
 temp.CreateCds;
  temp.username:=username;
   temp.userid:=userid;
   temp.userprof:=userprof;
  temp. magname:=magname;
   temp.magid:=magid;
 temp.Button1.Visible:=userprof=1;
 temp.Show;
 temp.OnActivate(temp);
 end;

procedure Tmainform.N15Click(Sender: TObject);
var temp:TjurnForm;
begin
 temp:=TjurnForm.Create(tform(self),mybar);
 temp.Caption:='товар в сервисном центре из магазина '+magname;
 temp.ds.DataSet:=temp.servmag;
 temp.servmag.ParamByName('id').Value:=magid;

 temp.CreateCds;
  temp.username:=username;
   temp.userid:=userid;
   temp.userprof:=userprof;
  temp. magname:=magname;
   temp.magid:=magid;
 temp.printb.Enabled:=true;
 temp.Show;
 temp.OnActivate(temp);
end;

procedure Tmainform.Button4Click(Sender: TObject);
var temp:TvozvForm;
begin
 temp:=TvozvForm.Create(tform(self),mybar);
   temp.username:=username;
   temp.userid:=userid;
   temp.userprof:=userprof;
   temp. magname:=magname;
   temp.magid:=magid;
   //temp.loadDataset(magid);
 temp.extern:=false;
 temp.Show;

end;

procedure Tmainform.N17Click(Sender: TObject);
var temp:TjurnForm;
  i:integer;
begin
 temp:=TjurnForm.Create(tform(self),mybar);
 temp.Caption:='ремонт выполнен.Товар в магазине';
 temp.ds.DataSet:=temp.tovarclienta;
 temp.CreateCds;
// temp.tovarclienta.Open;
  temp.username:=username;
   temp.userid:=userid;
   temp.userprof:=userprof;
  temp. magname:=magname;
   temp.magid:=magid;
 temp.DBGrid.Columns[0].Visible:=true;
 temp.DBGrid.Columns[8].Visible:=false;
  for i:=0 to  temp.dbgrid.columns.Count-1 do
         begin
          temp.dbgrid.columns[i].Title.TitleButton:=true;

         end;
 temp.Button1.Visible:=false;
 temp.Show;
 temp.OnActivate(temp);
end;

procedure Tmainform.N19Click(Sender: TObject);
var temp:TjurnForm;
begin
 temp:=TjurnForm.Create(tform(self),mybar);
 temp.Caption:='Товар после ремонта';
 temp.ds.DataSet:=temp.allvozvratQ;
 temp.allvozvratQ.Open;
 temp.CreateCds;
  temp.username:=username;
   temp.userid:=userid;
   temp.userprof:=userprof;
  temp. magname:=magname;
   temp.magid:=magid;
 temp.Button1.Visible:=userprof=1;
 temp.Show;
 temp.OnActivate(temp);
end;

procedure Tmainform.N20Click(Sender: TObject);
var temp:TjurnForm;
begin
 temp:=TjurnForm.Create(tform(self),mybar);
 temp.Caption:='Товар после ремонта в магазине '+magname;
 temp.ds.DataSet:=temp.vozvratmag;
 temp.vozvratmag.ParamByName('mag').Value:=magid;
  temp.CreateCds;
 // temp.vozvratmag.Open;
  temp.username:=username;
   temp.userid:=userid;
   temp.userprof:=userprof;
  temp. magname:=magname;
   temp.magid:=magid;

 temp.Show;
 temp.OnActivate(temp);
end;

procedure Tmainform.Button5Click(Sender: TObject);
var temp:TjurnForm;
begin
 temp:=TjurnForm.Create(tform(self),mybar);
 temp.Caption:='какой товар возвращаем';
 temp.ds.DataSet:=temp.tovout;
 if userprof<>1 then temp.tovout.ParamByName('magid').Value:=magid else
  temp.tovout.ParamByName('magid').AsString:='%';
  temp.tovout.Open;
  temp.CreateCds;
  //temp.tovout.Filter:='client=1';
  //temp.tovout.Filtered:=true;
  temp.username:=username;
   temp.userid:=userid;
   temp.userprof:=userprof;
  temp. magname:=magname;
   temp.magid:=magid;
 temp.Button1.Visible:=false;

 temp.Show;
 temp.OnActivate(temp);
end;

procedure Tmainform.N22Click(Sender: TObject);
var temp:TjurnForm;
begin
 temp:=TjurnForm.Create(tform(self),mybar);
 temp.Caption:='возврат товара клиенту ';
 temp.ds.DataSet:=temp.tovoutQuery;
 temp.tovoutQuery.Open;
 temp.CreateCds;
   temp.username:=username;
   temp.userid:=userid;
   temp.userprof:=userprof;
   temp. magname:=magname;
   temp.magid:=magid;
   temp.Button1.Visible:=userprof=1;

 temp.Show;
 temp.OnActivate(temp);
end;

procedure Tmainform.N23Click(Sender: TObject);
var temp:TjurnForm;
begin
 temp:=TjurnForm.Create(tform(self),mybar);
 temp.Caption:='возврат товара клиенту ';
 temp.ds.DataSet:=temp.tovoutmag;
 temp.tovoutmag.ParamByName('magid').Value:=magid;
 temp.tovoutmag.Open;
 temp.CreateCds;
   temp.username:=username;
   temp.userid:=userid;
   temp.userprof:=userprof;
   temp. magname:=magname;
   temp.magid:=magid;


 temp.Show;
 temp.OnActivate(temp);
end;

procedure Tmainform.N25Click(Sender: TObject);
var temp:Ttipform;
begin
temp:=Ttipform.Create(tform(self),mybar);

temp.Show;

end;

procedure Tmainform.N27Click(Sender: TObject);
begin
dm.editreport:=not dm.editreport;
end;

procedure Tmainform.MainMenu1Change(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
 if dm<>nil
 then begin
     if dm.editreport then n27.Caption:='печать отчетов'
      else  n27.Caption:='редактировать отчеты';
  end;
end;

procedure Tmainform.N28Click(Sender: TObject);
var temp:Tcarsform;
begin
temp:=Tcarsform.Create(tform(self),mybar);
temp.Show;




end;

procedure Tmainform.N30Click(Sender: TObject);
var temp:TjurnForm;
begin
 temp:=TjurnForm.Create(tform(self),mybar);
 temp.Caption:='товар в сервисном центре из магазина '+magname;
 temp.ds.DataSet:=temp.servmag;
 temp.servmag.ParamByName('id').Value:=magid;
 temp.Label5.Visible:=false;
 temp.magbox.Visible:=false;
 temp.CreateCds;
  temp.username:=username;
   temp.userid:=userid;
   temp.userprof:=userprof;
  temp. magname:=magname;
   temp.magid:=magid;
 temp.printb.Enabled:=true;
 temp.Show;
 temp.OnActivate(temp);
 temp.printbClick(temp.printb);
 //temp.Close;
 end;

{procedure Tmainform.Email1Click(Sender: TObject);
var FINIFile: TINIFile;
    massiv: array of TForm1;
    razmer: integer;
    i:integer;
    smtpadr:string;
    begin
      edata.Date:=date;
  allservis.Close;
  allservis.Open;
  servbox.KeyValue:=6;
  if  dateform.ShowModal<>mrOk then begin allservis.Close; exit;end;



     try
         FINIFile := TINIFile.Create(ExtractFilePath(Application.ExeName)+'Project1.ini');
        smtpadr  := FINIFile.readString('mail', 'smtp', '') ;
        finally
          FreeAndNil(FINIFile);
        end;

    dm.peremPrintQ.Close;
    dm.peremslave.Close;

      dm.peremPrintQ.ParamByName('data').AsDate:=edata.Date;
     dm.peremslave.ParamByName('data').AsDate:=edata.Date;
     dm.peremPrintQ.ParamByName('servis').AsInteger:=servbox.KeyValue; //date;
     dm.peremslave.ParamByName('scenter').AsInteger:=servbox.KeyValue;
     dm.peremPrintQ.ParamByName('magid').Value:=magid;
     dm.peremslave.ParamByName('mag').Value:=magid;
    dm.peremPrintQ.Open;
    dm.peremslave.Open;
if dm.peremPrintQ.RecordCount>0 then
    begin
      i:=1;
      razmer:= dm.peremPrintQ.RecordCount+1;
       SetLength(massiv,razmer);
       while not dm.peremPrintQ.Eof do
         begin
         massiv[i]:=TForm1.Create(tform(self),mybar);
          massiv[i].Caption:='отправка почты в'+dm.peremPrintQ.fieldbyname('scenter').AsString; //scenter.Value;

          massiv[i].edtSMTPAddress.Text:=smtpadr;
          massiv[i].edtSubject.Text:='перемещение товара из магазина '+magname+' '+
                           magadres+' за '+DateToStr(edata.Date);
          massiv[i].memMessage.Clear;
          massiv[i].cbxMailTo.Text:=dm.peremPrintQ.Fieldbyname('email').AsString; //;email.Value;
          massiv[i].memMessage.Lines.Add('Техносила. г.Каменск-Уральский ');
          massiv[i].memMessage.Lines.Add('док;товар;владелец; сер.№ ; комплектность ; дефект ;');
          while not dm.peremslave.Eof do
            begin
              massiv[i].memMessage.Lines.Add(
                         addprobelright(dm.peremslave.fieldbyname('remontid').AsString,10)+ ' | '+
                         addprobelright(dm.peremslave.fieldbyname('tovar').AsString,100)+  ' | '+
                         addprobelright(dm.peremslave.fieldbyname('client').AsString,50)+ ' | '+
                      addprobelleft(dm.peremslave.fieldbyname('serialnum').AsString,50)+  ' | '+
                      addprobelright(dm.peremslave.fieldbyname('complect').AsString,100)+  ' | '+
                      addprobelright(dm.peremslave.fieldbyname('comment').AsString,100));
              dm.peremslave.Next;
            end;
          massiv[i].Show;
          massiv[i].Left:=massiv[i].Left+(i*10);
          massiv[i].OnActivate(massiv[i]);
           inc(i);
          dm.peremPrintQ.Next;
        end;
    end
    else showmessage('За '+DateToStr(edata.Date)+ 'нет перемещений');

    dm.peremPrintQ.Close;
    dm.peremslave.Close;
    allservis.Close;

 end;
//----------------------------------------------------------------------------
  }



procedure Tmainform.Button6Click(Sender: TObject);
begin
if not Assigned(tovinform) then
tovinform:=Ttovinform.Create(mainform,myBar);
tovinform.Show;
tovinform.pagecontrol.ActivePageIndex:=0;
tovinform.dataselledit.SetFocus;
 tovinform.username:=username;
 tovinform.userid:=userid;
 tovinform.magname:=magname;
 tovinform.magid:=magid;
 

end;

procedure Tmainform.N33Click(Sender: TObject);
var eventform:Teventform;
begin
 eventform:=Teventform.Create(self,myBar);
       eventform.eventQ.ParamByName('mag').AsInteger:=magid;
       //eventform.eventQ.Open;
       eventform.DataSetDriverEh1.ProviderDataSet :=eventform.eventQ;
       eventform.mytable.Open;
       eventform.userid:=userid;
       eventform.magid:=magid;
       eventform.Show;


end;

procedure Tmainform.N34Click(Sender: TObject);
var eventform:Teventform;
begin
 eventform:=Teventform.Create(self,myBar);
       eventform.alleventQ.Open;
       //eventform.DataSource3.DataSet:=eventform.alleventQ;
        eventform.DataSetDriverEh1.ProviderDataSet:=eventform.alleventQ;
        eventform.mytable.Open;
       eventform.userid:=userid;
       eventform.magid:=magid;
       eventform.Show;

end;

procedure Tmainform.nameboxChange(Sender: TObject);
begin
if namebox.Text<>''
          then begin
           if userdbpassword.AsString<>''
           then begin
                passlabel.Visible:=true;
                passedit.Visible:=true;
                passedit.Text:='';

               passedit.SetFocus;

               end
          else begin
                passlabel.Visible:=false;
                passedit.Visible:=false;
                passedit.Text:='';
                Button1.SetFocus;
               end;

         end;
end;

procedure Tmainform.passeditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) and (namebox.Text<>'')
 then begin
       Button1Click(nil);


      end;
end;

procedure Tmainform.Button1Click(Sender: TObject);
begin
//

  if (passedit.Text=userdbpassword.AsString) then

  begin
  logform.ModalResult:=mrOk;
   namebox.ListSource:=nil;
  end;

end;

procedure Tmainform.N36Click(Sender: TObject);
begin
try
userdb.Close;
userdb.ReadOnly:=false;
userdb.Open;
if userdb.Locate('id',userid,[]) then
       begin
         nameed.Text:=username;
         if passeditform.ShowModal=mrOk
          then begin

               userdb.Edit;
               userdbpassword.AsString:=newpass.Text;
               userdb.Post;

              end;
       end;
  finally
 userdb.Close;
 userdb.ReadOnly:=true;
 end;
 end;

procedure Tmainform.BitBtn5Click(Sender: TObject);
begin
if oldpass.Text=newpass.Text then passeditform.ModalResult:=mrOk
else oldpass.SetFocus;


end;

procedure Tmainform.N37Click(Sender: TObject);
var temp:TjurnForm;
begin
if userprof<>1 then begin
                     ShowMessage('Только администратор. ');
                     exit;
                   end;
 temp:=TjurnForm.Create(tform(self),mybar);
// temp.Caption:='Товар после ремонта';
// temp.ds.DataSet:=temp.allvozvratQ;
// temp.allvozvratQ.Open;
temp.Caption:='Нужно отметить строку и нажать "Печать"';
 temp.ds.DataSet:=temp.servQuery;
 temp.servQuery.Open;
 temp.CreateCds;
  temp.username:=username;
   temp.userid:=userid;
   temp.userprof:=userprof;
  temp. magname:=magname;
   temp.magid:=magid;
 temp.printb.Enabled:=true;
 temp.Label5.Visible:=TRUE;
 temp.Label3.Visible:=false;
 temp.label4.Visible:=false;
 temp.dtp.Visible:=false;
 temp.magbox.Visible:=true;
 temp.servbox.Visible:=true;
 temp.DBGrid.PopupMenu:=nil;
 temp.Show;
 temp.OnActivate(temp);
// temp.printbClick(temp.printb);
end;

procedure Tmainform.N40Click(Sender: TObject);
var temp:TjurnForm;
begin
 {if userprof<>1 then
 begin
  ShowMessage('Только администратор может изменить документ. ');
  exit;
 end;      }
 temp:=TjurnForm.Create(tform(self),mybar);
 temp.Caption:='какой товар вернули ?';
 temp.ds.DataSet:=temp.tremClient;
 temp.tremClient.ParamByName('id').AsInteger:=magid;
 temp.CreateCds;

  temp.username:=username;
   temp.userid:=userid;
   temp.userprof:=userprof;
  temp. magname:=magname;
   temp.magid:=magid;
 temp.Show;
 temp.OnActivate(temp);
end;

procedure Tmainform.kbtButtonClick(Sender: TObject);
var zsform:Tzform;
begin
zsform:=Tzform.Create(self,mybar);

zsform.Show;
zsform.username:=username;
zsform.userid:=userid;
zsform.magname:=magname;
zsform.magid:=magid;
end;

procedure Tmainform.N42Click(Sender: TObject);
var eventform:Teventform;
begin
 eventform:=Teventform.Create(self,myBar);
       eventform.Caption:='Все события';
       eventform.jevent.Open;
       eventform.DataSetDriverEh1.ProviderDataSet:=eventform.jevent;
        eventform.mytable.Open;
       eventform.userid:=userid;
       eventform.magid:=magid;
       eventform.Show;

end;

procedure Tmainform.N44Click(Sender: TObject);
var temp:TjurnForm;
begin
 temp:=TjurnForm.Create(tform(self),mybar);
 temp.Caption:='заявки на диагностику';
 temp.ds.DataSet:=temp.zjurn;
 temp.zjurn.Open;
  temp.CreateCds;
  temp.username:=username;
   temp.userid:=userid;
   temp.userprof:=userprof;
  temp. magname:=magname;
   temp.magid:=magid;
 temp.Button1.Visible:=false;
 temp.Button3.Visible:=false;
 temp.printb.Enabled:=false;
 temp.Show;
 temp.OnActivate(temp);
end;

procedure Tmainform.N45Click(Sender: TObject);
begin
dm.tipQuery.Open;
dm.setreport4(dm.tipQuery,dm.markaQuery,nil,nil,'\kolvobraka.fr3');


end;

procedure Tmainform.N46Click(Sender: TObject);
begin
if vozvDial.ShowModal=mrok then
 begin

 dm.vozvQ.Close;
 dm.vozvQ.ParamByName('nd').AsDate:=nd.Value;
 dm.vozvQ.ParamByName('kd').AsDate:=kd.Value;
 dm.vozvQ.Open;
 dm.setreport4(dm.vozvQ,nil,nil,nil,'\vozvClientu.fr3');
 end;
end;

procedure Tmainform.N48Click(Sender: TObject);
begin
dm.setreport4(dm.warnQ,dm.warnEQ,nil,nil,'\warn.fr3');
end;

procedure Tmainform.N49Click(Sender: TObject);
begin
dm.setreport4(dm.tovvremonte,nil,nil,nil,'\90.fr3');

end;

end.
