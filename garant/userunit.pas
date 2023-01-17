unit userunit;

interface

uses
  Windows, Messages, SysUtils,sunit, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, mySQLDbTables, Grids, DBGridEh, SpeedForm,
  Mask, DBCtrlsEh, DBLookupEh, GridsEh;

type
  Tuserform = class(TSForm)
    DataSource1: TDataSource;
    DBGrid: TDBGridEh;
    userquery: TmySQLQuery;
    userqueryname: TStringField;
    userqueryprof: TStringField;
    userqueryid: TAutoIncField;
    insQuery: TmySQLQuery;
    delQuery: TmySQLQuery;
    updQuery: TmySQLQuery;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SpeedForm1: TSpeedForm;
    proftable: TmySQLTable;
    proftableid: TAutoIncField;
    proftablename: TStringField;
    profbox: TDBLookupComboboxEh;
    DataSource2: TDataSource;
    nameEdit: TEdit;
    Button1: TButton;
    Button2: TButton;
    userqueryprof2: TIntegerField;
    Button3: TButton;
    userqueryvisible: TSmallintField;
    visChek: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  userform: Tuserform;

implementation

uses dmunit, Math, histunit;

{$R *.dfm}

procedure Tuserform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure Tuserform.BitBtn3Click(Sender: TObject);
begin
 if MessageDlg('Удалить пользователя '+userqueryname.Value+ ' ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
      delQuery.ParamByName('id').AsInteger:=userqueryid.Value;
      delQuery.ExecSQL;
      userquery.Refresh;
   end;

end;

procedure Tuserform.BitBtn1Click(Sender: TObject);
begin
proftable.Open;
nameEdit.Text:='';
If SpeedForm1.ShowModal=mrOk
  then begin
         if (nameEdit.Text<>'') and (profbox.Value<>null)
           then
             begin
               insQuery.ParamByName('name').AsString:=nameEdit.Text;
               insQuery.ParamByName('prof').AsInteger:=profbox.KeyValue;
                insQuery.ExecSQL;
                userquery.Refresh;
             end;
       end;
end;

procedure Tuserform.BitBtn2Click(Sender: TObject);
begin
 proftable.Open;
nameEdit.Text:=userqueryname.Value;
profbox.Value:=userqueryprof2.Value;
visChek.Checked:=userqueryvisible.AsInteger=0;
If SpeedForm1.ShowModal=mrOk
  then begin
         if (nameEdit.Text<>'') and (profbox.Value<>null)
           then
             begin
                updQuery.ParamByName('id').Value:=userqueryid.Value;
                updQuery.ParamByName('name').AsString:=nameEdit.Text;
                updQuery.ParamByName('prof').AsInteger:=profbox.KeyValue;
                if visChek.Checked then updQuery.ParamByName('vis').AsInteger:=0
                                   else updQuery.ParamByName('vis').AsInteger:=1;
                 updQuery.ExecSQL;
                userquery.Refresh;
             end;
       end;


end;

procedure Tuserform.FormCreate(Sender: TObject);
begin
userquery.Open;
end;

procedure Tuserform.Button3Click(Sender: TObject);
var temp:Thistform;
begin
if (not userQuery.Active) or (userQuery.RecordCount=0) then exit;


temp:=Thistform.Create(tform(self),mybar);
temp.userhist.ParamByName('user').AsInteger:=userquery.FieldValues['id'];
temp.userhist.Open;
temp.Caption:='История по  '+userquery.fieldbyname('name').AsString;
temp.DataSource1.DataSet:=temp.userhist;
temp.Show;
temp.OnActivate(temp);

end;

end.
