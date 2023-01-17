unit jurnunit;

interface

uses
  Windows, Messages,sunit, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, mySQLDbTables, Grids, DBGridEh, ExtCtrls, StdCtrls, Buttons,
  Mask, DBCtrlsEh, DBLookupEh, SpeedForm,ehlibcds,provider, DBClient,
  GridsEh, ComCtrls, ImgList, Menus,dateutils;

type
  TjurnForm = class(TSForm)
    Panel2: TPanel;
    Panel1: TPanel;
    DBGrid: TDBGridEh;
    tovvremonte: TmySQLQuery;
    ds: TDataSource;
    tovvremonteid: TAutoIncField;
    tovvremontename: TStringField;
    tovvremontename_1: TStringField;
    tovvremontename_2: TStringField;
    tovvremontename_3: TStringField;
    tovvremontetovar: TIntegerField;
    tovvremontepodmena: TIntegerField;
    tovvremonteclientid: TIntegerField;
    tovvremontecomment: TStringField;
    tovvremonteskladid: TIntegerField;
    tovvremontemesto: TStringField;
    Button1: TButton;
    allrem: TmySQLQuery;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField5: TStringField;
    IntegerField4: TIntegerField;
    StringField6: TStringField;
    servQuery: TmySQLQuery;
    servmag: TmySQLQuery;
    servmagid: TAutoIncField;
    servmagdata: TDateTimeField;
    servmaguser: TStringField;
    servmagmag: TStringField;
    servmagscenter: TStringField;
    servmagtovar: TStringField;
    servmagserialnum: TStringField;
    servmagcomment: TStringField;
    servmagremontid: TAutoIncField;
    servmagtovarid: TIntegerField;
    servmagmagid: TIntegerField;
    tovarclienta: TmySQLQuery;
    allvozvratQ: TmySQLQuery;
    allremresult: TStringField;
    allremclose: TSmallintField;
    vozvratmag: TmySQLQuery;
    vozvratmagid: TAutoIncField;
    vozvratmagdata: TDateTimeField;
    vozvratmagmname: TStringField;
    vozvratmaguser: TStringField;
    vozvratmagscname: TStringField;
    vozvratmagname: TStringField;
    vozvratmagserialnum: TStringField;
    vozvratmagclient: TStringField;
    vozvratmagresult: TStringField;
    vozvratmagcomment: TStringField;
    vozvratmagservisid: TAutoIncField;
    vozvratmagremontid: TAutoIncField;
    vozvratmagtovarid: TAutoIncField;
    vozvratmagmagid: TAutoIncField;
    tovvremontescenter: TIntegerField;
    allremscenter: TIntegerField;
    tovvremontemagid: TIntegerField;
    allremmagid: TIntegerField;
    tovout: TmySQLQuery;
    tovoutQuery: TmySQLQuery;
    vozvratmagmesto: TStringField;
    tovoutmag: TmySQLQuery;
    tovoutmagid: TAutoIncField;
    tovoutmagremontid: TIntegerField;
    tovoutmagmagid: TIntegerField;
    tovoutmaguserid: TIntegerField;
    tovoutmaguser: TStringField;
    tovoutmagmag: TStringField;
    tovoutmagtname: TStringField;
    tovoutmagclient: TStringField;
    tovoutmagmagin: TStringField;
    tovvremontecomplect: TStringField;
    tovvremontevid: TStringField;
    allremcomplect: TStringField;
    allremvid: TStringField;
    printb: TBitBtn;
    printform: TSpeedForm;
    carsq: TmySQLQuery;
    DataSource1: TDataSource;
    carsbox: TDBLookupComboboxEh;
    vodq: TmySQLQuery;
    vodbox: TDBLookupComboboxEh;
    DataSource2: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    tovvremontedata: TDateTimeField;
    allremdata: TDateTimeField;
    tovoutmagdata: TDateTimeField;
    tovoutmagrdata: TDateTimeField;
    tovoutid: TAutoIncField;
    tovouttovarname: TStringField;
    tovoutserialnum: TStringField;
    tovoutmesto: TStringField;
    tovoutname: TStringField;
    tovouttel: TStringField;
    tovoutremdata: TDateTimeField;
    tovoutpodmena: TStringField;
    tovoutremontid: TAutoIncField;
    tovoutresult: TStringField;
    Button3: TButton;
    tovvremontetovarid: TAutoIncField;
    allremtovarid: TAutoIncField;
    tovouttovarid: TAutoIncField;
    tovoutmagtovarid: TAutoIncField;
    tovarquery: TmySQLQuery;
    tovoutclient: TWordField;
    ClientDataSet: TClientDataSet;
    tovoutQueryid: TAutoIncField;
    tovoutQueryremontid: TIntegerField;
    tovoutQuerydata: TDateTimeField;
    tovoutQuerymagid: TIntegerField;
    tovoutQueryuserid: TIntegerField;
    tovoutQueryuser: TStringField;
    tovoutQuerymag: TStringField;
    tovoutQuerytname: TStringField;
    tovoutQueryclient: TStringField;
    tovoutQueryrdata: TDateTimeField;
    tovoutQuerymagin: TStringField;
    tovoutQuerytovarid: TAutoIncField;
    servmagsid: TIntegerField;
    allreminuse: TWordField;
    tovvremonteservis: TStringField;
    dtp: TDateTimePicker;
    Label3: TLabel;
    allservis: TmySQLQuery;
    DataSource3: TDataSource;
    Label4: TLabel;
    servbox: TDBLookupComboboxEh;
    allmag: TmySQLQuery;
    DataSource4: TDataSource;
    magbox: TDBLookupComboboxEh;
    Label5: TLabel;
    tremClient: TmySQLQuery;
    AutoIncField2: TAutoIncField;
    DateTimeField1: TDateTimeField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    StringField12: TStringField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    AutoIncField3: TAutoIncField;
    StringField15: TStringField;
    allremremontid: TIntegerField;
    tovvremonteremontid: TIntegerField;
    tremClientremontid: TIntegerField;
    ynImage: TImageList;
    remimage: TImageList;
    tovvremonteperem: TStringField;
    allremuser: TStringField;
    allremperem: TStringField;
    zjurn: TmySQLQuery;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    tovvremontedostavka: TSmallintField;
    allremdostavka: TSmallintField;
    dostimage: TImageList;
    zjurnid: TIntegerField;
    zjurnclientid: TIntegerField;
    zjurntovar: TIntegerField;
    zjurnname: TStringField;
    zjurnadres: TStringField;
    zjurntel: TStringField;
    zjurncomment: TStringField;
    zjurntovarname: TStringField;
    zjurndriver: TStringField;
    zjurndata: TDateTimeField;
    zjurnuser: TStringField;
    zjurnmag: TStringField;
    Button2: TButton;
    zjurndatadost: TDateTimeField;
    tovvremonteprice: TIntegerField;
    allremprice: TIntegerField;
    zjurnprice: TIntegerField;
    tovvremontewarn: TWordField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure printbClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ClientDataSetAfterOpen(DataSet: TDataSet);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure printformClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  
  private
    { Private declarations }
    dsname:string;
    mydataset:TDataSet;
  public
    { Public declarations }
   username:string;
   userid:integer;
   userprof:integer;
   magname:string;
   magid:integer;
   procedure CreateCds;
  end;

var
  jurnForm: TjurnForm;

   Fromcolor:Tcolor= $10FBFF;
  Tocolor:Tcolor=$0080FF80;
  redColor:Tcolor=$00e0e0FF;
implementation

uses dmunit, aktunit, outUnit, histunit, vozvunit;

{$R *.dfm}

procedure TjurnForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TjurnForm.DBGridDblClick(Sender: TObject);
var temp:Taktform;
    temp1:Toutform;
    tid,i:integer;
    temps:string;
    myds:TDataSet;
    begin




if ((dsname='tovvremonte' ) or (dsname='allrem') or (dsname='zjurn')  ) {and (ClientDataSet.Filtered=False) }
then
  begin




 if dsname<>'zjurn' then myds:=ds.DataSet
                    else begin
                         allrem.Open;
                         if not allrem.Locate('id',ds.DataSet.FieldValues['id'],[]) then exit;
                         myds:=allrem;

                         end;
 temp:=Taktform.Create(Application,mybar);
 temp.servbox.KeyValue:=myds.FieldValues['scenter']  ;
 if  myds.FieldValues['skladid']=myds.FieldValues['magid']
   then  temp.servbox.Enabled:=true
   else  temp.servbox.Enabled:=false;
 temp.priceED.Value:=myds.FieldValues['price'];
 temp.chekbox.Visible:=false;
 temp.kompedit.Text:=myds.FieldValues['complect'];
 temp.videdit.Text:=myds.FieldValues['vid'];
 temp.tovarid:= myds.FieldValues['tovar'];//tovvremontetovar.Value;
 temp.clientid:=myds.FieldValues['clientid'];//tovvremonteclientid.Value;
 temp.podmenaid:=myds.FieldValues['podmena'];//tovvremontepodmena.Value;
 temp.remontid:=myds.FieldValues['id'];//tovvremonteid.Value;
 temp.username:=username;
 temp.userid:=userid;
 temp.magname:=magname;
 temp.magid:=magid;
 temp.newakt:=false;
 temp.userlabel.Caption:='автор - '+myds.FieldValues['user']{tovvremontename_2.Value}+
                        ': магазин - '+myds.FieldValues['name_1']+' : дата - '+string(myds.FieldValues['data']);
 temp.Caption:='редактируем';
 temp.primedit.Text:=myds.FieldValues['comment'];//tovvremontecomment.Value;
 //temp.Label14.Caption:='дата поступления в ремонт '+tovvremontedata.AsString;
 temp.loadrekv;
 temp.remdata:=myds.FieldValues['data'];//tovvremontedata.AsDateTime;
 //temp.BitBtn1.Enabled:=false;
 //temp.BitBtn2.Enabled:=false;
 temp.BitBtn4.Enabled:=true;
 temp.print.Enabled:=true;
 if (dsname='allrem') and (myds.FieldByName('close').AsInteger=1)   //allremclose.Value=1)
 then temp.ok.Enabled:=false;

 if myds.FieldValues['dostavka']=0 then
 temp.dostlabel.Caption:='' else
 temp.dostlabel.Caption:='оформлена доставка';


 temp.Show;
// tform(self).Close;
// Button2.Click;
  end;

 if (dsname='tovout') and (ds.DataSet.RecordCount>0) then
      begin
        temp1:=Toutform.Create(Application,mybar);
        temp1.username:=username;
        temp1.userid:=userid;
        temp1.magname:=magname;
        temp1.magid:=magid;
        temp1.remontid:=ds.DataSet.FieldValues['remontid'];//tovoutremontid.Value;
        temp1.tovout.ParamByName('id').Value:=ds.DataSet.FieldValues['remontid'];//tovoutremontid.Value;
        temp1.tovout.Open;
        temp1.remont.ParamByName('remontid').Value:=ds.DataSet.FieldValues['remontid'];//tovoutremontid.Value;
        temp1.remont.Open;

        temp1.Show;
       tform(self).Close;
      end;

 if (dsname='tremClient') and (ds.DataSet.RecordCount>0)
 then begin
       if MessageDlg('Изменть  документ ?',
           mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
              dm.vozvratTovara(ds.DataSet.FieldValues['id'],ds.DataSet.FieldValues['tovar']
              ,ds.DataSet.FieldValues['name_2']);

            tid:=ds.DataSet.FieldValues['id'];
             ds.DataSet:=tovvremonte;
              CreateCds;
            ds.DataSet.Locate('id',tid,[]);
            end else
        TForm(self).Close;
       end;

 if (dsname='tovvremonte') and (ClientDataSet.Filtered)
 then
      begin
          if MessageDlg('Изменть  документ ?',
           mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
             temps:=ClientDataSet.FieldValues['perem'];
             if temps='0' then i:=1 else i:=0;
                if   dm.ExecQuery('update garant.remont set perem='+inttostr(I)
                            +' where id='+ClientDataSet.fieldbyname('id').AsString)
                then dm.newEvent(ClientDataSet.fieldbyname('tovar').AsInteger,
                                    magid,userid,date+30,'изменён статус перемещения');

               tid:=ds.DataSet.FieldValues['id'];
             tform(self).Caption:='текущие ремонты';
             ds.DataSet:=tovvremonte;
              CreateCds;
             ClientDataSet.Filtered:=false;
            ds.DataSet.Locate('id',tid,[]);
            end else

         TForm(self).Close;
       end;



  end;

procedure TjurnForm.FormActivate(Sender: TObject);
var temp:variant;
begin
//CreateCds;
{if  dbgrid.DataSource.DataSet.Active then
begin
 temp:=dbgrid.DataSource.DataSet.FieldValues['id'];
 //dbgrid.DataSource.DataSet.Refresh;
 dbgrid.DataSource.DataSet.Locate('id',temp,[]);

end;}

end;
//-------------------------------------------------------------------------

//--------------------------------------------------------------------------
procedure TjurnForm.Button1Click(Sender: TObject);
begin
    if DBGrid.DataSource.DataSet.RecordCount>0 then
    begin
    if MessageDlg('Удалить документ ?',
           mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
            if not dm.test then exit;
            if (dsname='tovvremonte') and
            ((Trim(AnsiUpperCase(username))=
            trim(AnsiUpperCase( ClientDataSet.FieldByName('user').AsString)))
            or (userprof=1) ) then
             begin
              dm.deleteRemont(ClientDataSet.FieldValues['id'],
                             ClientDataSet.FieldValues['tovar'],
                             ClientDataSet.FieldValues['podmena']);
              ds.DataSet:=tovvremonte;
              CreateCds;
              end;
           // dm.deleteRemont(tovvremonteid.Value,tovvremontetovar.Value,tovvremontepodmena.Value);
            //----------------------------------------------------------
            if (dsname='servmag')
              and ((Trim(AnsiUpperCase(username))=
            trim(AnsiUpperCase( ClientDataSet.FieldByName('user').AsString)))
            or (userprof=1) ) then  begin
                 dm.deleteServis(ClientDataSet.FieldValues['id'],
                                 ClientDataSet.FieldValues['remontid'],
                                 ClientDataSet.FieldValues['tovarid'],
                                 ClientDataSet.FieldValues['magid'],
                                 ClientDataSet.FieldValues['mag']);
              // dm.deleteServis(servmagid.Value,servmagremontid.Value,
              //                servmagtovarid.Value,servmagmagid.Value,servmagmag.Value);
                   ds.DataSet:=servmag;
                   CreateCds;

                   end;
            //-------------------------------------------------------------------

            if (dsName='vozvratmag') and
             ((Trim(AnsiUpperCase(username))=
            trim(AnsiUpperCase( ClientDataSet.FieldByName('user').AsString)))
            or (userprof=1) )
            then
             begin
               dm.deletevozvrat(ClientDataSet.FieldValues['servisid'],
                                  ClientDataSet.FieldValues['remontid'],
                                  ClientDataSet.FieldValues['tovarid'],
                                  ClientDataSet.FieldValues['magid'],
                                  ClientDataSet.FieldValues['scname'],
                                  ClientDataSet.FieldValues['id']);

                   ds.DataSet:=vozvratmag;
                   CreateCds;
              end;

             //----------------------------------------------------------------
                if (dsName='tovoutmag')
                and( (AnsiUpperCase(username)=AnsiUpperCase( ClientDataSet.FieldByName('user').AsString))
                or (userprof=1) ) then
             begin
             //  dm.deleteOut(tovoutmagid.Value,tovoutmagremontid.Value,
              //               tovoutmagmag.Value,tovoutmagclient.Value);

                dm.deleteOut( ClientDataSet.FieldValues['id'],
                              ClientDataSet.FieldValues['remontid'],
                              ClientDataSet.FieldValues['mag'],
                              ClientDataSet.FieldValues['client']);

               ds.DataSet:=tovoutmag;
                   CreateCds;

              end;
             //---------------------------------------------------------
                //----------------------------------------------------------------
                if dsName='tovoutQuery'
                 then
             begin


                dm.deleteOut( ClientDataSet.FieldValues['id'],
                              ClientDataSet.FieldValues['remontid'],
                              ClientDataSet.FieldValues['mag'],
                              ClientDataSet.FieldValues['client']);

               ds.DataSet:=tovoutmag;
                   CreateCds;

              end;
             //---------------------------------------------------------


            if (dsName='allvozvratQ')
            then
             begin
               dm.deletevozvrat(ClientDataSet.FieldValues['servisid'],
                                  ClientDataSet.FieldValues['remontid'],
                                  ClientDataSet.FieldValues['tovarid'],
                                  ClientDataSet.FieldValues['magid'],
                                  ClientDataSet.FieldValues['scname'],
                                  ClientDataSet.FieldValues['id']);

                   ds.DataSet:=allvozvratQ;
                   CreateCds;
              end;

            //-------------------------------------------------------------------

              //----------------------------------------------------------
            if dsname='servQuery'
             then  begin
                 dm.deleteServis(ClientDataSet.FieldValues['id'],
                                 ClientDataSet.FieldValues['remontid'],
                                 ClientDataSet.FieldValues['tovarid'],
                                 ClientDataSet.FieldValues['magid'],
                                 ClientDataSet.FieldValues['mag']);
              // dm.deleteServis(servmagid.Value,servmagremontid.Value,
              //                servmagtovarid.Value,servmagmagid.Value,servmagmag.Value);
                   ds.DataSet:=servQuery;
                   CreateCds;

                   end;

              if (dsname='zjurn') and ((Trim(AnsiUpperCase(username))=
            trim(AnsiUpperCase( ClientDataSet.FieldByName('user').AsString)))
            or (userprof=1) )
              then begin
                     dm.deleteZayavka(ClientDataSet.fieldbyname('id').AsInteger);
                     ds.DataSet:=zjurn;
                     CreateCds;
                   end;

             tform(self).OnActivate(tform(self));

            end;

   end;
end;

procedure TjurnForm.printbClick(Sender: TObject);
begin
if (dsname ='servmag') and (ds.DataSet.RecordCount>0) then
     begin
     carsq.Open;
     vodq.Open;
     allservis.Open;
     servbox.KeyValue:=6;
     dm.peremPrintQ.Close;
     dm.peremslave.Close;
     //dm.peremPrintQ.ParamByName('magid').Value:=magid;

     //dm.peremslave.ParamByName('mag').Value:=magid;
     dtp.Date:=date;
   //  dm.peremslave.ParamByName('scenter').AsInteger:=servmagsid.AsInteger;
    printform.Caption:='перемещение в СЦ';
    printform.ShowModal;
   exit;
   end;
if (dsname ='servQuery'{'allvozvratQ'}) and (ds.DataSet.RecordCount>0) then
    begin
      carsq.Open;
     vodq.Open;
     allservis.Open;
     allmag.Open;
     servbox.KeyValue:=10;
     magbox.KeyValue:=2;

     dtp.Date:=date;
     printform.Caption:='возврат из СЦ';
    printform.ShowModal;


    end;


 end;


 //--------------------------------------------------------------------
procedure TjurnForm.Button3Click(Sender: TObject);

var temp:Thistform;

begin
 if ds.DataSet.FieldByName('tovarid').AsString='' then exit;
tovarquery.Close;
tovarquery.ParamByName('id').AsInteger:=ds.DataSet.FieldByName('tovarid').AsInteger;
tovarquery.Open;

temp:=Thistform.Create(tform(self),mybar);
temp.histQuery.ParamByName('remontid').AsInteger:=ds.DataSet.FieldByName('tovarid').AsInteger;
temp.histQuery.ParamByName('tovarid').AsInteger:=ds.DataSet.FieldByName('tovarid').AsInteger;

temp.histQuery.Open;
temp.DataSource1.DataSet:=temp.histQuery;
temp.Caption:='История по  '+tovarQuery.fieldbyname('name').AsString;
temp.tovarid:=ds.DataSet.FieldByName('tovarid').AsInteger;
temp.Panel2.Visible:=true;
temp.userid:=userid;
temp.magid:=magid;
temp.remontid:=ds.DataSet.FieldByName('remontid').AsInteger;
temp.Show;
temp.OnActivate(temp);

end;

procedure tjurnform.CreateCds;
   var provider:TProvider;
    i:integer;
   begin
   DBGrid.Visible:=false;
   if mydataset=nil then mydataset:=ds.DataSet
   else ds.DataSet:=mydataset;
   provider:=TProvider.Create(nil);
   provider.DataSet:=ds.DataSet;
   dsname:=ds.DataSet.Name;
   ClientDataSet.Data:=provider.Data;

  // provider.Free;
   ClientDataSet.Open;

   for i:= 0 to ds.DataSet.FieldCount-1
   do begin

        ClientDataSet.Fields[i].Visible:=ds.DataSet.Fields[i].Visible;

        ClientDataSet.Fields[i].DisplayLabel:=ds.DataSet.Fields[i].DisplayLabel;

       end;
    ds.DataSet.Close;
   ds.DataSet:=ClientDataSet;
   provider.Free;
   for i:=1 to DBGrid.Columns.Count-1 do
     DBGrid.Columns[i].Visible:=(pos('id',DBGrid.Columns[i].Title.Caption)=0)
                                 and (DBGrid.Columns[i].Visible);


   DBGrid.Visible:=true;
   end;

procedure TjurnForm.ClientDataSetAfterOpen(DataSet: TDataSet);
var i:integer;
begin
dbgrid.Columns.Clear;
dbgrid.Columns.AddAllColumns(true);

 for i:=0 to  dbgrid.columns.Count-1 do
         begin
          dbgrid.columns[i].Title.TitleButton:=true;
          if dbgrid.DataSource.DataSet.Fields.Count>0 then
          begin
          dbgrid.columns[i].Visible:=dbgrid.DataSource.DataSet.Fields[i].Visible;
           //dbgrid.columns[i].Title.Caption:=
          end;
         if ((dsname='tovvremonte') or (dsname='allrem'))  and  (DBGrid.Columns[i].FieldName='perem')
         then
          begin

          dbgrid.columns[i].ImageList:=ynImage;
          dbgrid.columns[i].KeyList.Add('1');
          dbgrid.columns[i].KeyList.Add('0');


          end;

          if (dsname='tovvremonte') and  (DBGrid.Columns[i].FieldName='servis')
         then
          begin

          dbgrid.columns[i].ImageList:=remImage;
          dbgrid.columns[i].KeyList.Add('0');
          dbgrid.columns[i].KeyList.Add('1');


          end;
         if ((dsname='tovvremonte') or (dsname='allrem'))  and  (DBGrid.Columns[i].FieldName='dostavka')
         then
          begin

          dbgrid.columns[i].ImageList:=dostimage;
          dbgrid.columns[i].KeyList.Add('1');
          //dbgrid.columns[i].KeyList.Add('0');


          end;






         end;







end;

procedure TjurnForm.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if dsName='allrem' then
       begin
          if ds.DataSet.FieldByName('close').AsInteger=0 then
          DBGrid.Canvas.Brush.Color:=redColor;
          if (ds.DataSet.FieldByName('close').AsInteger=1)
          and ( ds.DataSet.FieldByName('inuse').AsInteger=0)
          then  DBGrid.Canvas.Brush.Color:=Fromcolor;
          if (ds.DataSet.FieldByName('close').AsInteger=1)
          and ( ds.DataSet.FieldByName('inuse').AsInteger=1)
          then  DBGrid.Canvas.Brush.Color:=Tocolor;


       end;
if dsName='tovvremonte' then
       begin
         if ds.DataSet.FieldByName('warn').AsInteger=1 then
          DBGrid.Canvas.Brush.Color:=$00cfcff7 else
          begin

            if  DaysBetween(Date,ds.DataSet.FieldByName('data').AsDateTime)>30
              then  DBGrid.Canvas.Brush.Color:=$00f4cad0;
            if  DaysBetween(Date,ds.DataSet.FieldByName('data').AsDateTime)>90
              then  DBGrid.Canvas.Brush.Color:=clSkyBlue;


          end;
       end;

IF  gdSelected   IN State
        Then Begin
                TDBGrideh(Sender).Canvas.Brush.Color:= clHighLight;
            //    TDBGrideh(Sender).Canvas.Font.Color := clHighLightText;
          end;
    TDBGrideh(Sender).Canvas.Brush.Color:=TDBGrideh(Sender).Canvas.Brush.Color;
    TDBGrideh(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TjurnForm.BitBtn1Click(Sender: TObject);
var i:integer;
  temp:TvozvForm;
begin
          if dsname ='servmag' then
          begin
            dm.peremPrintQ.Close;
           dm.peremslave.Close;

           dm.peremPrintQ.ParamByName('data').AsDate:=dtp.Date; //date;
            dm.peremPrintQ.ParamByName('servis').AsInteger:=servbox.KeyValue; //date;
            dm.peremslave.ParamByName('scenter').AsInteger:=servbox.KeyValue;;
            dm.peremslave.ParamByName('data').AsDate:=dtp.Date ;//date;
            //dm.peremPrintQ.ParamByName('magid').Value:=magid;
            //dm.peremslave.ParamByName('mag').Value:=magid;
           dm.gosnomer:=carsbox.Text;
            dm.voditel:=vodbox.Text;
          // dm.setreport(dm.peremPrintQ,dm.peremslave,nil,nil,'\nakl.frf');
            dm.setreport4(dm.peremPrintQ,dm.peremslave,nil,nil,'\nakl.fr3');

           dm.peremPrintQ.Close;
           dm.peremslave.Close;
        end;
     {  if dsname ='allvozvratQ' then
       begin
        dm.servprint.Close;
        dm.servprint.ParamByName('data').AsDate:=dtp.Date;
        dm.servprint.ParamByName('sc').AsInteger:=servbox.KeyValue;
        dm.servprint.ParamByName('mag').AsInteger:=magbox.KeyValue;
         dm.gosnomer:=carsbox.Text;
          dm.voditel:=vodbox.Text;
           dm.setreport(dm.servprint,nil,nil,nil,'\vozv.frf');
          dm.servprint.Close;     }
       //       end;

    if dsname ='servQuery' then
     begin
        // i:=0;
 ClientDataSet.First;
     if dbgrid.SelectedRows.Count>0 then  while not ClientDataSet.Eof do
             begin
            //if dbgrid.SelectedRows.CurrentRowSelected then inc(i);
            dbgrid.SelectedRows.CurrentRowSelected:=not dbgrid.SelectedRows.CurrentRowSelected;
              ClientDataSet.Next;
          end;





         if  (dbgrid.SelectedRows.Count>0)
         then begin
               with ClientDataSet do
                 for i:=0 to dbgrid.SelectedRows.Count-1 do
                begin
                GotoBookmark(pointer(dbgrid.SelectedRows.Items[i]));
                  Delete;


                end;



          dm.gosnomer:=carsbox.Text;
          dm.voditel:=vodbox.Text;
          dm.magaz:=allmag.fieldbyname('name').AsString+' '+allmag.fieldbyname('adres').AsString;
          dm.serv:=servbox.Text;
         // dm.setreport(ClientDataSet,nil,nil,nil,'\vozv.frf');
          dm.setreport4(ClientDataSet,nil,nil,nil,'\vozv.fr3');
            temp:=TvozvForm.Create(tform(self),mybar);
            temp.username:=username;
            temp.userid:=userid;
            temp.userprof:=userprof;
            temp.extern:=true;
            temp. magname:=allmag.fieldbyname('name').AsString;
           temp.magid:=allmag.fieldbyname('id').AsInteger;
           temp.servbox.Value:=allservis.fieldbyname('id').AsInteger;
           temp.servboxChange(temp.servbox);
          
           //temp.loadDataset(magid);
            temp.Show;
           ClientDataSet.First;
           while not ClientDataSet.Eof do
           begin
           if temp.ClientDS.Locate('remontid',ClientDataSet.fieldbyname('remontid').AsInteger,[])
           then temp.DBGrid.SelectedRows.CurrentRowSelected:=true;

           ClientDataSet.Next;
           end;
            temp.ClientDS.First;
             if temp.DBGrid.SelectedRows.Count>0 then
             begin
               while not temp.ClientDS.Eof do
                begin
                 temp.DBGrid.SelectedRows.CurrentRowSelected:=not temp.DBGrid.SelectedRows.CurrentRowSelected;
                 temp.ClientDS.Next;
                end;
             
                 with temp.ClientDS do
                  for i:=0 to temp.dbgrid.SelectedRows.Count-1 do
                   begin
                   GotoBookmark(pointer(temp.dbgrid.SelectedRows.Items[i]));
                    Delete;


                  end;




             end else  temp.Close;












           ClientDataSet.Close;
           ds.DataSet:=servQuery;
           CreateCds;
           printform.Close;

       end;
     end;
end;

procedure TjurnForm.printformClose(Sender: TObject;
  var Action: TCloseAction);
begin
     carsq.close;
     vodq.close;
     allservis.close;
     allmag.close;
end;

procedure TjurnForm.DBGridMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if button=mbRight then
   begin
   dbgrid.SelectedRows.CurrentRowSelected:=not dbgrid.SelectedRows.CurrentRowSelected;
  end;
end;

procedure TjurnForm.N1Click(Sender: TObject);
var tid,i:integer;
    temps:string;
begin
  if MessageDlg('Изменить  документ ?',
           mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
             temps:=ClientDataSet.FieldValues['perem'];
             if dsname='tovvremonte' then
             begin
             if temps='0' then i:=1 else i:=0;
             end else if temps='0' then i:=0 else i:=1;

                if   dm.ExecQuery('update garant.remont set perem='+inttostr(I)
                            +' where id='+ClientDataSet.fieldbyname('id').AsString)
                then dm.newEvent(ClientDataSet.fieldbyname('tovar').AsInteger,
                                    magid,userid,date+30,'изменён статус перемещения');

               tid:=ds.DataSet.FieldValues['id'];

            if dsname='tovvremonte' then ds.DataSet:=tovvremonte;
            if dsname='allrem' then ds.DataSet:=allrem;

              CreateCds;
             ClientDataSet.Filtered:=false;
            ds.DataSet.Locate('id',tid,[]);
            end;

end;

procedure TjurnForm.PopupMenu1Popup(Sender: TObject);
begin
if ((dsname<>'allrem') and (dsname<>'tovvremonte')) or (userprof<>1) then
 begin n1.Enabled:=false;exit;end;
 if (ClientDataSet.FieldByName('perem').Value<>null) and
 (ClientDataSet.FieldByName('perem').AsInteger in [0,1])   then n1.Enabled:=true
 else n1.Enabled:=false;


end;

procedure TjurnForm.Button2Click(Sender: TObject);
begin
CreateCds;
end;

end.
