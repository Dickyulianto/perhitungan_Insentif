unit DATASALESMAN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses UnitsetellahLogin;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
ADOTable1.Append;
ADOTable1.FieldByName('Nama Salesman').AsString := Edit1.Text;
ADOTable1.FieldByName('ID Salesman').AsString := Edit2.Text;
ADOTable1.FieldByName('Alamat').AsString := Edit3.Text;
ADOTable1.FieldByName('Tahun Masuk').AsString := Edit4.Text;
ADOTable1.Post;
Edit1.Text := '';
Edit2.Text := '';
Edit3.Text := '';
Edit4.Text := '';
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  if Button2.Caption = 'EDIT' then
    begin
      Edit1.Text := ADOTable1.FieldByName('Nama Salesman').AsString;
      Edit2.Text := ADOTable1.FieldByName('ID Salesman').AsString;
      Edit3.Text := ADOTable1.FieldByName('Alamat').AsString;
      Edit4.Text := ADOTable1.FieldByName ('Tahun Masuk').AsString;
      Button2.Caption := 'SAVE';
      end
  else if Button2.Caption = 'SAVE' then
    begin
    //do something magic for save record
    
      MessageDlg('Simpan ya',mtInformation,[mbOK],0);
    end;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
if Dialogs.MessageDlg('Yakin Akan menghapus data?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    ADOTable1.Delete;
    ADOTable1.Refresh;
    end;

    end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  Form3.Close;
end;

end.
