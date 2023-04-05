unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, DB, ADODB,ADOConED, ExtCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    ListView1: TListView;
    aConn: TADOConnection;
    adoLST: TADOQuery;
    adoTBL: TADOQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Splitter1: TSplitter;
    sb: TStatusBar;
    procedure Button1Click(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ConnDB(lb:integer);
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 aConn.Close;
 aConn.ConnectionString:=edit1.text;
 if not  ADOConED.EditConnectionString(aConn) then exit;
 edit1.Text:=  aConn.ConnectionString;
 connDB(0);
end;

procedure TForm1.ListView1DblClick(Sender: TObject);
begin
 if listview1.Selected=nil then exit;
 adoTbl.Close;
 adoTbl.SQL.Text:='select * from  '+listview1.Selected.Caption;
 adoTbl.Open;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 aConn.Close;
 aConn.ConnectionString:=edit1.text;
 connDB(1);
end;

procedure TForm1.ConnDB(lb:integer);
var lst:tStrings;
    i:integer;
    it:tListitem;
begin
 lst:=tStringlist.Create;
 aConn.Close;
 try
  aConn.Open;
 except
  showmessage('连接失败,提示信息：'+SysErrorMessage(getLasterror));
  exit;
 end;
 aConn.GetTableNames(lst);

 listview1.Clear;
 for i:=0 to lst.Count-1  do
  begin
  it:=listview1.Items.Add;
  it.Caption:=lst.Strings[i];
  adoLst.Close;
  adolst.SQL.Text:='select count(*) as js from '+lst.Strings[i];
  adoLst.Open;
  it.SubItems.Text:=adolst.fieldbyname('js').AsString;
  end;
 sb.Panels[1].Text:=' 共发现 '+inttostr(lst.Count)+' 个表！';
 lst.Destroy;
end;

end.
