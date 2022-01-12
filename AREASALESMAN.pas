unit AREASALESMAN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses DATASALESMAN, LoginBaru, UnitsetellahLogin;

{$R *.dfm}

procedure TForm4.Button4Click(Sender: TObject);
begin
  Form4.Close;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
ADOTable1.Append;
ADOTable1.FieldByName('Nama').AsString := Edit1.Text;
ADOTable1.FieldByName('Area').AsString := Edit2.Text;
ADOTable1.Post;
Edit1.Text := '';
Edit2.Text := '';
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  if Button2.Caption = 'EDIT' then
    begin
      Edit1.Text := ADOTable1.fieldByName('Nama').AsString;
      Edit2.Text := ADOTable1.fieldByName('Area').AsString;
      Button2.Caption := 'SAVE';
    end
  else if Button2.Caption = 'SAVE' then
    begin

      MessageDlg('Simpan Ya',mtInformation,[mbOK],0);
    end;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  if Dialogs.MessageDlg('Yakin Akan menghapus data?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    ADOTable1.Delete;
    ADOTable1.Refresh;
  end;
end;

end.
