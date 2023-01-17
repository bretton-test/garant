unit zunit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,sunit, StdCtrls, Mask, DBCtrlsEh, GridsEh, DBGridEh, DB,
  mySQLDbTables, Buttons, DBLookupEh;

type
  Tzform = class(TSForm)
    Label3: TLabel;
    clientname: TDBEditEh;
    clientadr: TDBEditEh;
    clienttel: TDBEditEh;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    primedit: TDBEditEh;
    Label12: TLabel;
    ClientQ: TmySQLQuery;
    DataSource3: TDataSource;
    clientgrid: TDBGridEh;
    findclQ: TmySQLQuery;
    newclQ: TmySQLQuery;
    saveB: TBitBtn;
    insertZ: TmySQLQuery;
    tipTable: TmySQLTable;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    vodq: TmySQLQuery;
    DataSource2: TDataSource;
    vodbox: TDBLookupComboboxEh;
    Label7: TLabel;
    Label8: TLabel;
    podmena: TDBEditEh;
    podmenasn: TDBEditEh;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure clientnameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure clientgridDblClick(Sender: TObject);
    procedure clientgridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure saveBClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure clientadrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure clienttelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure primeditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure vodboxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure podmenaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure podmenasnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
   prich:string;
   function FindorCreateClient(const cname,adr,tel:string):integer;

  public
    { Public declarations }
   username:string;
   userid:integer;
   spravid:integer;
   magname:string;
   magid:integer;
   clientid:integer;
   saved:boolean;

  end;

var
  zform: Tzform;

implementation

uses dmunit, Math;

{$R *.dfm}

procedure Tzform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure Tzform.clientnameKeyDown(Sender: TObject; var Key: Word;
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
        if  clientgrid.Visible then clientgrid.SetFocus else
                                clientadr.SetFocus;
     end;
end;

procedure Tzform.clientgridDblClick(Sender: TObject);
begin
clientname.text:=ClientQ.fieldbyname('name').AsString;
clientadr.text:=ClientQ.fieldbyname('adres').AsString;
clienttel.text:=ClientQ.fieldbyname('tel').AsString;
clientgrid.Visible:=false;
if  clienttel.Value='' then
 clienttel.SetFocus else primedit.SetFocus;
end;

procedure Tzform.clientgridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then clientgridDblClick(nil);
end;
//-------------------------------------------------------------------------------

 function Tzform.FindorCreateClient(const cname,adr,tel:string):integer;
  begin
     result:=0;
     With findclq do
    begin
      Close;
      ParamByName('name').AsString:=AnsiLowerCase(trim(cname));
      ParamByName('adr').AsString:=AnsiLowerCase(trim(adr));
      open;
     end;
   if (findclq.RecordCount>=1) and (Length(tel)>5) then begin
                                   result:=findclq.FieldValues['id'];
                                   dm.ExecQuery('update garant.customer set tel='+chr(39)+tel+chr(39)+' where id='+inttostr(Result));

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





procedure Tzform.saveBClick(Sender: TObject);
begin
if not saved then
begin
if length(clientname.Text)<7 then begin
                             clientname.SetFocus;
                             exit;
                           end;
 if length(clientadr.Text)<7 then begin
                             clientadr.SetFocus;
                             exit;
                           end;

if length(clienttel.Text)<6 then begin
                             clienttel.SetFocus;
                             exit;
                           end;
if length(primedit.Text)<10 then begin
                             primedit.SetFocus;
                             exit;
                           end;
if vodbox.KeyValue=null then begin
                             vodbox.SetFocus;
                             exit;

                             end;


 if podmena.Text='' then podmena.Text:='-';
 if podmenasn.Text='' then podmenasn.Text:='-';


  clientid:=FindorCreateClient(clientname.Value,clientadr.Value,clienttel.Value);
  if clientid=0 then begin
                     ShowMessage('ошибка записи клиента');
                     exit;
                     end;

   with insertZ do
    begin
       ParamByName('magid').AsInteger:=magid;
       ParamByName('userid').AsInteger:=userid;
       ParamByName('clientid').AsInteger:=clientid;
       ParamByName('data').AsDateTime:=now;
       ParamByName('comment').AsString:=AnsiUpperCase(trim(primedit.Text));
       ParamByName('tip').AsInteger:=10;//;tipBox.KeyValue;
       ParamByName('driver').AsInteger:=vodbox.KeyValue;
       ParamByName('podmena').AsString:=trim(podmena.Text);
       ParamByName('podmsn').AsString:=trim(podmenasn.Text);
       ExecSQL;


    end;
     dm.newEvent(0,magid,userid,now,'заявление на диагностику от '+clientname.Text+'.Водитель '+vodbox.Text);
     saved:=true;
end;//saved

    dm.printzayvka(now,clientid);
   TForm(self).Close;

end;

procedure Tzform.FormCreate(Sender: TObject);
begin
//tipTable.Open;
//tipBox.KeyValue:=10;
vodq.Open;

saved:=false;
end;

procedure Tzform.clientadrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then clienttel.SetFocus;
end;

procedure Tzform.clienttelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then primedit.SetFocus;
end;

procedure Tzform.primeditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
prich:=primedit.Text;


if key=13 then begin

            RadioButton1.SetFocus;

            end;
end;

procedure Tzform.vodboxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then podmena.SetFocus;
end;

procedure Tzform.podmenaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then podmenasn.SetFocus;
end;

procedure Tzform.podmenasnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then saveB.SetFocus;
end;

procedure Tzform.RadioButton1Click(Sender: TObject);
begin
If TRadioButton(sender).Checked then primedit.Text:=TRadioButton(sender).Caption+' '+prich;

end;

procedure Tzform.RadioButton3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                RadioButton1Click(sender);
                 vodbox.SetFocus;

               end;
end;

end.
