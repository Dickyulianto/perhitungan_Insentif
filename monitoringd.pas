unit monitoringd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses monitoringa;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
var
target, pencapaian, index : real;
begin
  target := StrToFloat(Edit2.Text);
  pencapaian := StrToFloat(Edit3.Text);

  index := ((pencapaian/target)*100);

  Edit4.Text := FloatToStr(index);
  Edit4.Text:=(FormatFloat('#.##', index));

end;

procedure TForm7.Button2Click(Sender: TObject);
begin
if Button2.Caption = 'EDIT' then
    begin
      DateTimePicker1.DateTime := ADOTable1.FieldByName('Tanggal').AsDateTime;
      Edit1.Text := ADOTable1.FieldByName('Nama').AsString;
      Edit2.Text := ADOTable1.FieldByName('Target').AsString;
      Edit3.Text := ADOTable1.FieldByName('Pencapaian').AsString;
      Edit4.Text := ADOTable1.FieldByName('Index').AsString;
      Button2.Caption := 'SAVE';
      end
else if Button2.Caption = 'SAVE' then
    begin
      MessageDlg('Simpan ya',mtInformation,[mbOK],0);
    end;
end;


procedure TForm7.Button3Click(Sender: TObject);
begin
if Dialogs.MessageDlg('Yakin Akan menghapus data?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    ADOTable1.Delete;
    ADOTable1.Refresh;
end;
end;
procedure TForm7.Button4Click(Sender: TObject);
begin
 form7.Close;
end;

procedure TForm7.Button5Click(Sender: TObject);
begin
ADOTable1.Append;
ADOTable1.FieldByName('Tanggal').AsDateTime := DateTimePicker1.DateTime;
ADOTable1.FieldByName('Nama').AsString := Edit1.Text;
ADOTable1.FieldByName('Target').AsString := Edit2.Text;
ADOTable1.FieldByName('pencapaian').AsString := Edit3.Text;
ADOTable1.FieldByName('Index%').AsString := Edit4.Text;
ADOTable1.Post;
Edit1.Text := '';
Edit2.Text := '';
Edit3.Text := '';
Edit4.Text := '';
end;

end.
