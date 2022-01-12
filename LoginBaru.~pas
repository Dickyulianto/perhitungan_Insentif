unit LoginBaru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses UnitsetellahLogin;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
If (Edit1.Text = 'Admin') And (Edit2.Text = 'Admin')
    then
      begin
        Form2.show;
          end
          else
            ShowMessage('Username Atau Password Anda Salah');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.clear;
Edit2.clear;
end;

end.
