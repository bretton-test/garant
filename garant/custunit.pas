unit custunit;

interface

uses
  Windows, Messages,sunit, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, mySQLDbTables, Grids, DBGridEh, ExtCtrls, StdCtrls, Mask,
  DBCtrlsEh, SpeedForm, GridsEh;

type
  Tcustform = class(TSForm)
    Panel1: TPanel;
    DBGrid: TDBGridEh;
    DataSource1: TDataSource;
    newbutton: TButton;
    edbutton: TButton;
    SpeedForm1: TSpeedForm;
    nameedit: TDBEditEh;
    adredit: TDBEditEh;
    teledit: TDBEditEh;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    namef: TEdit;
    Label4: TLabel;
    custQuery: TmySQLQuery;
    custQueryid: TAutoIncField;
    custQueryname: TStringField;
    custQueryadres: TStringField;
    custQuerytel: TStringField;
    inscustom: TmySQLQuery;
    updCust: TmySQLQuery;
    Label5: TLabel;
    adrfind: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridDblClick(Sender: TObject);
    procedure nameeditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure adreditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure teleditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure newbuttonClick(Sender: TObject);
    procedure edbuttonClick(Sender: TObject);
    procedure namefKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  custform: Tcustform;

implementation

uses dmunit;

{$R *.dfm}

procedure Tcustform.FormClose(Sender: TObject; var Action: TCloseAction);
begin

action:=caFree;
end;

procedure Tcustform.DBGridDblClick(Sender: TObject);
begin
tform(self).ModalResult:=200+custQueryid.Value;
end;

procedure Tcustform.nameeditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then adredit.SetFocus;
end;

procedure Tcustform.adreditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then teledit.SetFocus;
end;

procedure Tcustform.teleditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then Button1.SetFocus;
end;

procedure Tcustform.newbuttonClick(Sender: TObject);
var temp:word;
begin
SpeedForm1.Caption:='У нас новый клиент?';
nameedit.Text:='';
adredit.Text:='';
teledit.Text:='';
if SpeedForm1.ShowModal=mrok
then begin
         if nameedit.Text='' then
                              begin
                                ShowMessage('пустое имя');
                                exit;
                              end;

        inscustom.ParamByName('name').AsString:=AnsiUpperCase(trim(nameedit.Text));
        inscustom.ParamByName('adres').AsString:=AnsiUpperCase( trim(adredit.Text));
        inscustom.ParamByName('tel').AsString:=AnsiUpperCase( trim(teledit.Text));
        inscustom.ExecSQL;
        temp:=13;
        namef.Text:=nameedit.Text;
        namefKeyDown(namef,temp,[]);

     end;
end;

procedure Tcustform.edbuttonClick(Sender: TObject);
var temp:word;
begin

   SpeedForm1.Caption:='Редактируем';
if not custQuery.Active then exit;
if custQuery.RecordCount=0 then exit;
if custQueryid.AsInteger=0 then exit;

nameedit.Text:=custQueryname.Value;
adredit.Text:=custQueryadres.Value;
teledit.Text:=custQuerytel.Value;
if SpeedForm1.ShowModal=mrok
then begin
         if nameedit.Text='' then
                              begin
                                ShowMessage('пустое имя');
                                exit;
                              end;
         updCust.ParamByName('id').Value:=custQueryid.AsInteger;
         updCust.ParamByName('name').AsString:=AnsiUpperCase(trim(nameedit.Text));
         updCust.ParamByName('adres').AsString:=AnsiUpperCase( trim(adredit.Text));
         updCust.ParamByName('tel').AsString:=AnsiUpperCase( trim(teledit.Text));
          updCust.ExecSQL;
        temp:=13;
        namef.Text:=nameedit.Text;
        namefKeyDown(namef,temp,[]);

     end;




end;

procedure Tcustform.namefKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13
 then begin
       custQuery.Close;
       custQuery.ParamByName('name').AsString:= trim(AnsiUpperCase(namef.Text+'%'));
       custQuery.ParamByName('adr').AsString:= trim(AnsiUpperCase(adrfind.Text+'%'));


       custQuery.Open;



      end;
end;

procedure Tcustform.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tform(self).ModalResult:=200+custQueryid.Value;
end;

end.
