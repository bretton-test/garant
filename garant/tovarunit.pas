unit tovarunit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,sunit, Controls, Forms,
  Dialogs, Grids, DBGridEh, DB, mySQLDbTables, StdCtrls, Mask, DBCtrlsEh,
  SpeedForm, ExtCtrls, DBLookupEh, ComCtrls, ImgList, GridsEh;

type
  Ttovarform = class(TSForm)
    ds: TDataSource;
    newform: TSpeedForm;
    nameedit: TDBEditEh;
    numedit: TDBEditEh;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    Label5: TLabel;
    tovarQuery: TmySQLQuery;
    tovarQueryid: TAutoIncField;
    tovarQueryname: TStringField;
    tovarQueryserialnum: TStringField;
    tovarQueryinuse: TWordField;
    tovarQueryclient: TWordField;
    instovar: TmySQLQuery;
    updtovar: TmySQLQuery;
    tovarQuerymesto: TStringField;
    Panel1: TPanel;
    DBGrid: TDBGridEh;
    tovarQuerytiptovara: TStringField;
    tipquery: TmySQLQuery;
    tipedit: TDBLookupComboboxEh;
    tipds: TDataSource;
    tovarQuerytip: TIntegerField;
    Tree: TTreeView;
    tipqueryid: TAutoIncField;
    tipqueryname: TStringField;
    ImageList1: TImageList;
    Panel2: TPanel;
    newbutton: TButton;
    edbutton: TButton;
    Label1: TLabel;
    Label2: TLabel;
    nedit: TEdit;
    sedit: TEdit;
    Label3: TLabel;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure newbuttonClick(Sender: TObject);
    procedure edbuttonClick(Sender: TObject);
    procedure neditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridDblClick(Sender: TObject);
    procedure nameeditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure numeditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure TreeChange(Sender: TObject; Node: TTreeNode);
    procedure TreeDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  Procedure ExpandLevel( Node : TTreeNode);

  public
    { Public declarations }
   userid:integer;
   magid:integer;
   procedure RebuildTree;
  end;

var
  tovarform: Ttovarform;

implementation

uses dmunit, Math, histunit;

{$R *.dfm}

procedure Ttovarform.FormClose(Sender: TObject; var Action: TCloseAction);
begin

action:=cafree;
end;

procedure Ttovarform.newbuttonClick(Sender: TObject);
var temp:word;
   s:TShiftState;
begin
newform.Caption:='новый товар';
nameedit.Text:='';
numedit.Text:='';
tipedit.KeyValue:=0;
if newform.ShowModal=mrOk
then
   begin
      if length(trim(nameedit.Text))<5 then begin
                                 ShowMessage('пустое название товара');
                                 exit;
                                end;
       if length(trim(numedit.Text))<5 then begin
                                 ShowMessage('пустой s/n');
                                 exit;
                                end;
       instovar.ParamByName('name').AsString:=AnsiUpperCase(nameedit.Text);
       instovar.ParamByName('sn').AsString:=AnsiUpperCase(numedit.Text);
       instovar.ParamByName('tip').AsInteger:=tipedit.Value;
       instovar.ExecSQL;
       nedit.Text:=nameedit.Text;
       sedit.Text:=numedit.Text;
      temp:=13;
      s:=[];
       neditKeyDown(tedit(nedit),temp,s);
       //seditKeyDown(tedit(sedit),temp,s);
   end;
end;

procedure Ttovarform.edbuttonClick(Sender: TObject);
var temp:word;
   s:TShiftState;
begin
if not tovarQuery.Active then exit;
if tovarQueryid.AsInteger=0 then exit;
if tovarQuery.RecordCount=0 then exit;
 newform.Caption:='редактируем товар';
  nameedit.Text:=tovarQueryname.AsString;
  numedit.Text:=tovarQueryserialnum.AsString;
  tipedit.KeyValue:=tovarQuerytip.AsInteger;
  if newform.ShowModal=mrOk
then
   begin
        if nameedit.Text='' then begin
                                 ShowMessage('пустое название товара');
                                 exit;
                                end;
       if numedit.Text='' then begin
                                 ShowMessage('пустой s/n');
                                 exit;
                                end;

        updtovar.ParamByName('name').AsString:=AnsiUpperCase(nameedit.Text);
        updtovar.ParamByName('sn').AsString:=AnsiUpperCase(numedit.Text);
        updtovar.ParamByName('id').Value:=tovarQueryid.AsInteger;
        updtovar.ParamByName('tip').AsInteger:=tipedit.Value;
        updtovar.ExecSQL;
          nedit.Text:=nameedit.Text;
       sedit.Text:=numedit.Text;

      temp:=13;
      s:=[];
       neditKeyDown(tedit(nedit),temp,s);
       //seditKeyDown(tedit(sedit),temp,s);


   end;
end;
procedure Ttovarform.neditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if key=32 then key:=ord('%');
if key=13
 then begin
       tovarquery.Close;
       tovarQuery.ParamByName('name').AsString:=nedit.Text+'%';
       tovarQuery.ParamByName('tip').AsString:='%';
       tovarQuery.ParamByName('sn').AsString:=sedit.Text+'%';
        tovarquery.Open;

      end;

end;

procedure Ttovarform.DBGridDblClick(Sender: TObject);
begin
if tovarQuery.RecordCount>0

then tform(self).ModalResult:=200+tovarQueryid.Value;
end;

procedure Ttovarform.nameeditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then numedit.SetFocus;
end;

procedure Ttovarform.numeditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then button1.SetFocus;
end;

procedure Ttovarform.TreeExpanding(Sender: TObject; Node: TTreeNode;
  var AllowExpansion: Boolean);
begin
  IF Node = nil Then Exit;

  // Если первая дочерняя ветвь той, которую мы хотим раскрыть, пустая
  // значит это фиктивная ветвь, дерево еще не достраивалось по этой ветви.
  // Удаляем фиктивную ветвь и "разворачиваем" дерево вглубь той ветки,
  // на которой стоим
  IF Node.getFirstChild.Data = nil
  Then Begin
          Node.DeleteChildren;
          ExpandLevel(Node);
       End;

end;


 //-------------------------------------------
Procedure Ttovarform.ExpandLevel( Node : TTreeNode);
Var ID , i   : Integer;
    TreeNode : TTreeNode;
Begin

  IF Node = nil Then ID:=0
    Else ID:=Node.Level+1;
if id=0 then
    begin
    tipquery.Open;
    tipquery.Refresh;
    tipquery.First;

      Tree.Items.BeginUpdate;
      for i:=1 to tipquery.RecordCount do
          begin
           TreeNode:=Tree.Items.AddChildObject(Node ,
                                  tipqueryname.AsString ,
                                  Pointer(tipqueryid.AsInteger));
           treenode.ImageIndex:=0;
            TreeNode.SelectedIndex:=0;
           treenode.ImageIndex:=0;
           // Добавим фиктивную (пустую) дочернюю ветвь только для того,
           // чтобы был отрисован [+] на ветке и ее можно было бы раскрыть

           //Tree.Items.AddChildObject(TreeNode , '' , nil);
           tipquery.Next;
          end;
        end;

   Tree.Items.EndUpdate;

end;

  //-----------------------------------
 procedure Ttovarform.RebuildTree;
 begin
       Tree.Items.Clear;

    // Принудительное раскрытие самого верхнего уровня
    ExpandLevel(nil);
    Tree.Selected:=Tree.Items[0];

 end;


procedure Ttovarform.FormCreate(Sender: TObject);
begin
RebuildTree;
end;

procedure Ttovarform.TreeChange(Sender: TObject; Node: TTreeNode);
Var ID : Integer;
begin
 IF TTreeView(Sender).Selected <> nil Then
   Begin
      id:=TTreeView(Sender).Selected.Level;
      if  (id=1) or (id=0) then
     begin
       tovarquery.Close;
       tovarQuery.ParamByName('name').AsString:='%';
       tovarQuery.ParamByName('sn').AsString:='%';

       tovarQuery.ParamByName('tip').Asinteger:=integer(TTreeView(Sender).Selected.Data);
        tovarquery.Open;
      //dm.settip(integer(TTreeView(Sender).Selected.Data));
      end;

   end;
end;

procedure Ttovarform.TreeDblClick(Sender: TObject);
begin
TreeChange(sender,nil);
end;

procedure Ttovarform.FormActivate(Sender: TObject);
begin
RebuildTree;
end;

procedure Ttovarform.Button3Click(Sender: TObject);
var temp:Thistform;
begin
if (not tovarQuery.Active) or (tovarQuery.RecordCount=0) then exit;
temp:=Thistform.Create(tform(self),mybar);
temp.histQuery.ParamByName('remontid').AsInteger:=tovarQueryid.Value;;
temp.histQuery.ParamByName('tovarid').AsInteger:=tovarQueryid.Value;;


//temp.histQuery.ParamByName('id').AsInteger:=tovarQueryid.Value;
temp.histQuery.Open;
temp.Caption:='История по  '+tovarQueryname.AsString;
temp.tovarid:=tovarQueryid.Value;
temp.DataSource1.DataSet:=temp.histQuery;
temp.Panel2.Visible:=true;
temp.userid:=userid;
temp.magid:=magid;
temp.Show;
temp.OnActivate(temp);

end;

end.
