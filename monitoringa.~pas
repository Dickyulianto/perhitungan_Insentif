unit monitoringa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, DB, ADODB;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
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
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
var
target, pencapaian, index, insentif : real;
begin
  target := StrToFloat(Edit2.Text);
  pencapaian := StrToFloat(Edit3.Text);

  index := ((pencapaian/target)*100);

  if index > 99 then
 begin
 insentif := 1000000;
 end
 else if (index <100) and (index > 89) then
 begin
 insentif := 750000;
 end
 else
 begin
 insentif := 0;
 end;

 Edit4.Text := FloatToStr(index);
 Edit4.Text:=(FormatFloat('#.##', index));
 Edit5.Text:= FloatToStr(insentif);

end;

procedure TForm6.Button2Click(Sender: TObject);
begin
if Button2.Caption = 'EDIT' then
    begin
      DateTimePicker1.DateTime := ADOTable1.FieldByName('Tanggal').AsDateTime;
      Edit1.Text := ADOTable1.FieldByName('Nama_Salesman').AsString;
      Edit2.Text := ADOTable1.FieldByName('Target_Value').AsString;
      Edit3.Text := ADOTable1.FieldByName('Pencapaian').AsString;
      Edit4.Text := ADOTable1.FieldByName('Index').AsString;
      Edit5.Text := ADOTable1.FieldByName('Insentif').AsString;
      Button2.Caption := 'SAVE';
      end
       else if Button2.Caption = 'SAVE' then
    begin
    //do something magic for save record

      MessageDlg('Simpan ya',mtInformation,[mbOK],0);
  end;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
if Dialogs.MessageDlg('Yakin Akan menghapus data?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    ADOTable1.Delete;
    ADOTable1.Refresh;
    end;
end;


procedure TForm6.Button4Click(Sender: TObject);
begin
  form6.Close;
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
ADOTable1.Append;
ADOTable1.FieldByName('Nama_Salesman').AsString := Edit1.Text;
ADOTable1.FieldByName('Target').AsString := Edit2.Text;
ADOTable1.FieldByName('Pencapaian').AsString := Edit3.Text;
ADOTable1.FieldByName('Index%').AsString := Edit4.Text;
ADOTable1.FieldByName('Insentif').AsString := Edit5.Text;
ADOTable1.FieldByName('Tanggal').AsDateTime := DateTimePicker1.DateTime;
ADOTable1.Post;
Edit1.Text := '';
Edit2.Text := '';
Edit3.Text := '';
Edit4.Text := '';
Edit5.Text := '';
end;

end.


