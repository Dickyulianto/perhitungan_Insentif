unit moniyoringw;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label8: TLabel;
    Edit7: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DataSource2: TDataSource;
    ADOConnection2: TADOConnection;
    ADOTable2: TADOTable;
    ADOConnection3: TADOConnection;
    ADOTable3: TADOTable;
    DataSource3: TDataSource;
    Label9: TLabel;
    Edit8: TEdit;
    Label10: TLabel;
    Edit9: TEdit;
    Button8: TButton;
    DBGrid4: TDBGrid;
    ADOConnection4: TADOConnection;
    ADOTable4: TADOTable;
    DataSource4: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
var
InValue, InToko, Tinsentif1, ToInsentif1 : integer;
begin
  InValue := StrToInt(Edit1.Text);
  InToko  := StrToInt(Edit2.Text);

  Tinsentif1 := InValue+InToko;
  ToInsentif1 := InValue+InToko;

  Edit3.Text := IntToStr(Tinsentif1);
  Edit5.Text := IntToStr(ToInsentif1);

end;

procedure TForm8.Button3Click(Sender: TObject);
var
Toinsentif1, Poprogres, Total : real;
begin
  Toinsentif1 := StrToFloat(Edit5.Text);
  Poprogres    := StrToFloat(Edit7.Text);

  Total  := Toinsentif1*Poprogres;

  Edit8.Text  := FloatToStr(Total);

end;

procedure TForm8.DBGrid1CellClick(Column: TColumn);
var
  S : String;
begin
  S := DBGrid1.SelectedField.AsString;
  Caption := S;
  Edit1.Text := S;
end;

procedure TForm8.DBGrid2CellClick(Column: TColumn);
var
  S : String;
begin
  S := DBGrid2.SelectedField.AsString;
  Caption := S;
  Edit6.Text := S;

end;

procedure TForm8.DBGrid3CellClick(Column: TColumn);
var
  S : String;
begin
  S := DBGrid3.SelectedField.AsString;
  Caption := S;
  Edit2.Text := S;

end;

procedure TForm8.Button6Click(Sender: TObject);
begin
 form8.Close;
end;
procedure TForm8.Button8Click(Sender: TObject);
var
ToInsentif1, Total, InsDiterima : integer;
begin
 ToInsentif1 := StrToInt(Edit5.Text);
 Total       := StrToInt(Edit8.Text);

 InsDiterima := ToInsentif1 + Total;

 Edit9.Text := IntToStr(InsDiterima);
end;

procedure TForm8.Button4Click(Sender: TObject);
begin
if Button2.Caption = 'EDIT' then
    begin
      Edit4.Text := ADOTable4.FieldByName('NAMA').AsString;
      Button2.Caption := 'SAVE';
      end
else if Button2.Caption = 'SAVE' then
    begin
      MessageDlg('Simpan ya',mtInformation,[mbOK],0);
    end;
end;

procedure TForm8.Button5Click(Sender: TObject);
begin
if Dialogs.MessageDlg('Yakin Akan menghapus data?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    ADOTable4.Delete;
    ADOTable4.Refresh;
end;
end;
procedure TForm8.Button7Click(Sender: TObject);
begin
ADOTable4.Append;
ADOTable4.FieldByName('Nama_Salesman').AsString := Edit4.Text;
ADOTable4.FieldByName('Insentif_Yang_Di_Terima').AsString := Edit9.Text;
ADOTable4.Post;
Edit4.Text := '';
Edit9.Text := '';
end;

end.

