unit histunit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,sunit, Grids, DBGridEh, DB, mySQLDbTables, StdCtrls, Mask,
  DBCtrlsEh, ExtCtrls, Buttons, GridsEh;

type
  Thistform = class(TSForm)
    histQuery1: TmySQLQuery;
    DataSource1: TDataSource;
    userhist1: TmySQLQuery;
    histQuery: TmySQLQuery;
    userhist: TmySQLQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    newmemo: TDBEditEh;
    Label1: TLabel;
    dateevent: TDBDateTimeEditEh;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    warnbox: TCheckBox;
    histQuerydata: TDateField;
    histQuerymemo: TStringField;
    histQueryuser: TStringField;
    histQuerymag: TStringField;
    histQuerywarn: TWordField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  tovarid:integer;
  userid:integer;
  magid:integer;
  remontid:integer;
  end;

var
  histform: Thistform;

implementation

uses dmunit;

{$R *.dfm}

procedure Thistform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=caFree;

end;

procedure Thistform.FormCreate(Sender: TObject);
begin
dateevent.Value:=Date;
end;

procedure Thistform.BitBtn1Click(Sender: TObject);
begin
//
if not dm.test then exit;
if length(newmemo.Text)<5 then
            begin
              newmemo.Text:='';
              newmemo.SetFocus;
              exit;
            end;
if dateevent.Value<Date then
                begin
                  ShowMessage('дата меньше текущей');
                  exit;
                end;

 if (Trunc(dateevent.Value)-date)>30 then
                    begin
                      ShowMessage('дата больше текущей на 30 дней');
                      exit;

                    end;
 dm.newEvent(tovarid,magid,userid,dateevent.Value,AnsiUpperCase(trim(newmemo.Text)),warnbox.Checked,remontid);
 newmemo.Clear;
 histQuery.Refresh;

end;

procedure Thistform.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if (DataSource1.DataSet=histQuery) and (histQuery.Active) then
 begin
  if histQuerywarn.AsInteger=1 then TDBGrideh(Sender).Canvas.Brush.Color:=$00afbfeb;


 end;
IF  gdSelected   IN State
        Then Begin
                TDBGrideh(Sender).Canvas.Brush.Color:= clHighLight;
            //    TDBGrideh(Sender).Canvas.Font.Color := clHighLightText;
          end;
    TDBGrideh(Sender).Canvas.Brush.Color:=TDBGrideh(Sender).Canvas.Brush.Color;
    TDBGrideh(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

end.
