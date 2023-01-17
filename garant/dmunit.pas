unit dmunit;

interface

uses
  SysUtils, Classes, DB,INIFiles, mySQLDbTables,forms,dialogs,
  frxExportXLS, frxDesgn, frxClass, frxDBSet, frxExportImage,
  frxExportMail, variants;

type
  Tdm = class(TDataModule)
    myBase: TmySQLDatabase;
    delpict: TmySQLQuery;
    delpodmena: TmySQLQuery;
    updTovar: TmySQLQuery;
    delremont: TmySQLQuery;
    servQuery: TmySQLQuery;
    updRemont: TmySQLQuery;
    updMesto: TmySQLQuery;
    delserv: TmySQLQuery;
    updrem1: TmySQLQuery;
    updservis: TmySQLQuery;
    delvozvratQ: TmySQLQuery;
    allvozvQ: TmySQLQuery;
    allvozvQid: TAutoIncField;
    allvozvQdata: TDateTimeField;
    selremQ: TmySQLQuery;
    selremQid: TAutoIncField;
    selremQtovar: TIntegerField;
    selremQmagid: TIntegerField;
    selremQuserid: TIntegerField;
    selremQclientid: TIntegerField;
    selremQdata: TDateField;
    selremQpodmena: TIntegerField;
    selremQclose: TSmallintField;
    selremQcomment: TStringField;
    selremQskladid: TIntegerField;
    selremQscenter: TIntegerField;
    updPodmena: TmySQLQuery;
    delout: TmySQLQuery;
    updUse: TmySQLQuery;
    remontprint: TmySQLQuery;
    peremPrintQ: TmySQLQuery;
    peremslave: TmySQLQuery;
    testtable: TmySQLTable;
    updRemont2: TmySQLQuery;
    InsEventQ: TmySQLQuery;
    servprint: TmySQLQuery;
    vozvRemont: TmySQLQuery;
    vozvtovar: TmySQLQuery;
    printZ: TmySQLQuery;
    frxReport1: TfrxReport;
    frxMailExport1: TfrxMailExport;
    frxJPEGExport1: TfrxJPEGExport;
    ds41: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    DS42: TfrxDBDataset;
    ds43: TfrxDBDataset;
    ds44: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    tipQuery: TmySQLQuery;
    markaQuery: TmySQLQuery;
    vozvQ: TmySQLQuery;
    updWarn: TmySQLQuery;
    warnQ: TmySQLQuery;
    warnds: TDataSource;
    warnEQ: TmySQLQuery;
    tovvremonte: TmySQLQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure frReportGetValue(const ParName: String;
      var ParValue: Variant);
    procedure peremPrintQAfterScroll(DataSet: TDataSet);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure tipQueryAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  connect:boolean;
  selldata:TDateTime;
  editreport:boolean;
  gosnomer,voditel,magaz,serv:string;
  dmuserid,dmmagid:integer;

    procedure printzayvka(const data:tdatetime;const clientid:integer);


    procedure newEvent(const remont,mag,user:integer;
                        const dataActiv:TDateTime;
                        const memo:string;
                        const warn:boolean=false;
                        const remontid:integer=0);


    function ExecQuery(const msql:string):boolean;

     function test:boolean;
     procedure deleteRemont(const remid:integer;const tovid:integer;const podmena:integer);
     procedure deleteServis(const servid:integer;const remid:integer;
                            const tovarid:integer;const magid:integer;
                            const magname:string);

     procedure deletevozvrat(const servid:integer;const remid:integer;
                            const tovarid:integer;const magid:integer;
                            const magname:string;const vozvratid:integer);

     procedure deleteOut(const tovoutid:integer;const remid:integer;
                          const magname:string;const clientname:string);


     procedure vozvratTovara(const remontid, tovarid:integer;const cname:string);
     procedure deleteZayavka(const id:integer);
       procedure  setreport4(const ds1 :Tdataset;
                                const ds2 :Tdataset;
                                const ds3 :Tdataset;
                                const ds4 :Tdataset;
                                const filerep:string);

  end;

var
  dm: Tdm;

implementation

uses jurnunit;

{$R *.dfm}
//---------------------------------------------------------------------------
  procedure tdm.deleteZayavka(const id:integer);
    begin
     ExecQuery('delete from garant.zayavka where id='+inttostr(id));

     end;
//=-------------------------------------------------------------------------

  procedure tDM.printzayvka(const data:tdatetime;const clientid:integer);
     begin
    {  with printZ do
      begin
         close;
         ParamByName('clientid').AsInteger:=clientid;
         ParamByName('data').AsDate:=data;


      end;
      setreport(printz,nil,nil,nil,'\zayavka.frf');   }


    end;
//------------------------------------------------------------------------
procedure tdm.vozvratTovara(const remontid,tovarid:integer;const cname:string);
begin
vozvRemont.ParamByName('id').AsInteger:=remontid;
vozvRemont.ExecSQL;
vozvtovar.ParamByName('id').AsInteger:=tovarid;
vozvtovar.ExecSQL;

newEvent(tovarid,dmmagid,dmuserid,date,'возврат товара магазину от '+cname);


end;
//-----------------------------------------------------------------------

procedure tdm.newEvent(const remont,mag,user:integer;
                        const dataActiv:TDateTime;
                        const memo:string;
                        const warn:boolean=false;
                        const remontid:integer=0);
   begin
    with InsEventQ do
     begin
        ParamByName('remont').AsInteger:=remont;
        ParamByName('mag').AsInteger:=mag;
        ParamByName('user').AsInteger:=user;
        ParamByName('data').AsDateTime:=now;
        ParamByName('sysevent').AsDate:=dataActiv;
        ParamByName('memo').AsString:=copy(trim(AnsiUpperCase(memo)),1,100);
        if warn then ParamByName('warn').AsInteger:=1 else
                     ParamByName('warn').AsInteger:=0;
        ExecSQL;


     end;
      if (warn) and (remontid>0) then begin
                    updWarn.ParamByName('remontid').AsInteger:=remontid;
                    updWarn.ParamByName('warn').AsInteger:=1;
                    updWarn.ExecSQL;

                   end;
   end;
//------------------------------------------------------------------------------
function tdm.ExecQuery(const msql:string):boolean;
 var myQuery:TmySQLQuery;
 begin
 result:=false;

  myQuery:=TmySQLQuery.Create(nil);
  myQuery.Database:=myBase;
  myQuery.SQL.Text:=msql;
  myQuery.ExecSQL;
  result:=true;


 end;
//--------------------------------------------------------------------------
procedure Tdm.DataModuleCreate(Sender: TObject);
var FINIFile: TINIFile;
    temp:string;
    i:integer;
begin
 dm.connect:=false;
 try
  FINIFile := TINIFile.Create(ExtractFilePath(Application.ExeName)+'Project1.ini');
    DM.myBase.Host:= FINIFile.readString('SQL', 'ip', '') ;
 finally
   FreeAndNil(FINIFile);
 end;
    i:=174;
 if myBase.Host<>'' then
    begin
      with mybase do
      begin

      DatabaseName:=chr(201 xor i)+chr(207 xor i)+chr(220 xor i)+chr(207 xor i)+
      chr(192 xor i)+chr(218 xor i);
       UserPassword:=chr(155 xor i)+chr(218 xor i)+chr(201 xor i)+chr(204 xor i);
       UserName:=DatabaseName;

      Open;
      end;
    dm.connect:=true;
    end;
 editreport:=false;
 frxReport1.IniFile:=ExtractFilePath(Application.ExeName)+'\fr4.ini';


end;

 procedure Tdm.deleteRemont(const remid:integer;
                                  const tovid:integer;
                                  const podmena:integer);
   begin
     dm.servQuery.Close;
     dm.servQuery.ParamByName('id').Value:=remid;
     dm.servQuery.Open;
     if dm.servQuery.RecordCount>0 then
     begin
     dm.servQuery.Close;
     showmessage('у товара есть перемещения');
     exit;
     end;
     dm.servQuery.Close;
     delpict.ParamByName('id').Value:=remid;
     delpict.ExecSQL;
     delpodmena.ParamByName('id').Value:=remid;
     delpodmena.ExecSQL;
     delremont.ParamByName('id').Value:=remid;
     delremont.ExecSQL;
     updTovar.ParamByName('id').Value:=tovid;
     updTovar.ExecSQL;
     updTovar.ParamByName('id').Value:=podmena;
     updTovar.ExecSQL;
     newEvent(tovid,dmmagid,dmuserid,date,'удаление документа "поступление в ремонт"');


   end;
 //-----------------------------------------------------------------------------
      procedure tdm.deleteServis(const servid:integer;const remid:integer;
                            const tovarid:integer;const magid:integer;
                            const magname:string);
    begin
     delserv.ParamByName('id').Value:=servid;
     delserv.ExecSQL;
     updRemont.ParamByName('skladid').Value:=magid;
     updRemont.ParamByName('remontid').Value:=remid;
     updRemont.ExecSQL;
     updMesto.ParamByName('tovarid').Value:=tovarid;
     updMesto.ParamByName('mesto').Value:=magname;
     updmesto.ExecSQL;
     newEvent(tovarid,dmmagid,dmuserid,date,'удаление документа "перемещение в СЦ"');

    end;

 //-----------------------------------------------------------------------------

  //-----------------------------------------------------------------------------
      procedure tdm.deletevozvrat(const servid:integer;const remid:integer;
                            const tovarid:integer;const magid:integer;
                            const magname:string;const vozvratid:integer);
    begin
      allvozvQ.Close;
      allvozvq.ParamByName('remontid').AsInteger:=remid;
      allvozvQ.Open;
      allvozvQ.Last;
      if allvozvQid.Value<>vozvratid then
                         begin
                          allvozvQ.Close;
                          ShowMessage('этот возврат не последний');
                          exit;
                          end;
      allvozvQ.Close;
      updrem1.ParamByName('skladid').Value:=magid;
      updrem1.ParamByName('close').Value:=0;
      updrem1.ParamByName('remontid').Value:=remid;
      updrem1.ExecSQL;

     updMesto.ParamByName('tovarid').Value:=tovarid;
     updMesto.ParamByName('mesto').Value:=magname;
     updmesto.ExecSQL;

      updservis.ParamByName('vozvratid').AsInteger:=0;
      updservis.ParamByName('servid').AsInteger:=servid;
      updservis.ExecSQL;

      delvozvratQ.ParamByName('id').Value:=vozvratid;
      delvozvratQ.ExecSQL;
      newEvent(tovarid,dmmagid,dmuserid,date,'удаление документа "возврат из СЦ"');


    end;
 //----------------------------------------------------------------------------

   procedure tdm.deleteOut(const tovoutid:integer;const remid:integer;
                             const magname:string;const clientname:string);
    begin
    selremq.Close;
    selremq.ParamByName('remid').Value:=remid;
    selremq.Open;
    if selremq.RecordCount>0
    then begin
        updMesto.ParamByName('tovarid').Value:=selremQtovar.Value;
        updMesto.ParamByName('mesto').Value:=magname;
        updmesto.ExecSQL;
        updMesto.ParamByName('tovarid').Value:=selremQpodmena.Value;
        updMesto.ParamByName('mesto').Value:=clientname;
        updmesto.ExecSQL;
        upduse.ParamByName('id').Value:=selremQtovar.AsInteger;
        upduse.ExecSQL;

        updPodmena.ParamByName('remid').Value:=remid;
        updPodmena.ExecSQL;
        updRemont2.ParamByName('id').Value:=remid;
        updRemont2.ExecSQL;


         delout.ParamByName('id').AsInteger:=tovoutid;
        delout.ExecSQL;

         newEvent(selremQtovar.AsInteger,dmmagid,dmuserid,date,'удаление документа "возврат клиенту"');



        end;
   selremq.Close;

   end;




 procedure Tdm.frReportGetValue(const ParName: String;
  var ParValue: Variant);
begin
if parname='dataprod' then begin
                             if selldata<>0
                             then parvalue:=selldata
                             else parvalue:=' ';

                            end;

 if parname='driver' then parvalue:=dm.voditel;
 if parname='gosnomer' then parvalue:=dm.gosnomer;
 if parname='magaz' then parvalue:=dm.magaz;



end;
  procedure  TDM.setreport4(const ds1 :Tdataset;
                                const ds2 :Tdataset;
                                const ds3 :Tdataset;
                                const ds4 :Tdataset;
                                const filerep:string);

begin
dm.ds41.DataSet:=ds1;
ds1.Open;

If ds1.RecordCount=0  then begin

 //dm.addmemo('нет данных');
  exit;
end;
  If (ds1.RecordCount=0) {and (not dmunit.repedit)}  then exit;
If ds2<>nil   then
               begin
               dm.DS42.DataSet:=ds2;
                ds2.Open;
               end;

 If ds3<>nil   then
               begin
                dm.DS43.DataSet:=ds3;
                ds3.Open;
               end;
  If ds4<>nil   then
               begin
                dm.DS44.DataSet:=ds4;
                ds4.Open;
               end;




 If filerep<>''  then frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+filerep);

If dm.editreport  then frxReport1.DesignReport else
frxReport1.ShowReport;

if (ds1<>nil) and (ds1.Name<>'ClientDataSet') then ds1.Close;
if ds2<>nil then ds2.Close;
if ds3<>nil then ds3.Close;
if ds4<>nil then ds4.Close;
//if OpExcel.Connected then OpExcel.Connected:=false;
end;
//--------------------------------------------------------------------------------









 //---------------------------------------------------------------------------


//--------------------------------------------------------------------------------





procedure Tdm.peremPrintQAfterScroll(DataSet: TDataSet);
begin
//peremslave.Close;
//peremslave.ParamByName('scenter').AsInteger:=peremPrintQ.FieldValues['scid']; //scenter_1.Value;
//peremslave.ParamByName('data').AsDate:=peremPrintQ.FieldValues['sdata']; //scenter_1.Value;

//peremslave.Open;

end;
//------------------------------------------------------------------------------
function Tdm.test:boolean;
 begin
    result:=false;
    try
     mybase.Connected:=true;
     testtable.Open;
     testtable.Close;
     result:=true;

    except
      ShowMessage('проблемы со связью');



    end;

 end;

procedure Tdm.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
if varname='driver' then value:=dm.voditel;
 if varname='gosnomer' then value:=dm.gosnomer;

 if varname='magaz' then value:=dm.magaz;

 if varname='dataprod' then begin
                             if selldata<>0
                             then value:=selldata
                             else value:=' ';

                            end;

 end;

procedure Tdm.tipQueryAfterScroll(DataSet: TDataSet);
begin
markaQuery.Close;
markaQuery.ParamByName('tip').AsString:=tipQuery.FieldValues['name'];
markaQuery.Open;

end;

end.
