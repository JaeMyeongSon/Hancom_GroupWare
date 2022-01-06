unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw, MSHTML,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    WebBrowser1: TWebBrowser;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    Timer2: TTimer;
    WebBrowser2: TWebBrowser;
    Timer3: TTimer;
    Timer4: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);

    procedure WebBrowser1DocumentComplete(ASender: TObject;
    const pDisp: IDispatch; const URL: OleVariant);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure WebBrowser2DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
WebBrowser1.Navigate('https://gw.hancom.com/ekp/view/login/userLogin');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
WebBrowser2.Navigate('https://gw.hancom.com/ekp/view/login/userLogin');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
WebBrowser1.Silent := True;
WebBrowser2.Silent := True;
end;


procedure TForm1.Timer1Timer(Sender: TObject);
var
  Buttons: OleVariant;
  Button: OleVariant;
  I: Integer;
begin
  Buttons := WebBrowser1.OleObject.Document.getElementsByTagName('button');
  for I := 0 to Buttons.Length - 1 do
  begin
    Button := Buttons.item(I);
    if Button.innerText = '로그인' then
    begin
      Button.click();
      timer2.Enabled :=true;
      timer1.Enabled := false;
      Break;
    end;
  end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
  Buttons: OleVariant;
  Button: OleVariant;
  I: Integer;
begin
  Buttons := WebBrowser1.OleObject.Document.getElementsByTagName('button');
  for I := 0 to Buttons.Length - 1 do
  begin
    Button := Buttons.item(I);
    if Button.innerText = '출근' then
    begin
      Button.click();
      label2.caption := '출근';
      timer2.Enabled := false;

      Break;

    end;
  end;
end;



procedure TForm1.Timer3Timer(Sender: TObject);
var
  Buttons: OleVariant;
  Button: OleVariant;
  I: Integer;
begin
  Buttons := WebBrowser1.OleObject.Document.getElementsByTagName('button');
  for I := 0 to Buttons.Length - 1 do
  begin
    Button := Buttons.item(I);
    if Button.innerText = '로그인' then
    begin
      Button.click();
      timer4.Enabled :=true;
       timer3.Enabled := false;
      Break;

    end;
  end;
end;


procedure TForm1.Timer4Timer(Sender: TObject);
var
  Buttons: OleVariant;
  Button: OleVariant;
  I: Integer;
begin
  Buttons := WebBrowser1.OleObject.Document.getElementsByTagName('button');
  for I := 0 to Buttons.Length - 1 do
  begin
    Button := Buttons.item(I);
    if Button.innerText = '퇴근' then
    begin
      Button.click();
      label2.caption := '퇴근';
       timer4.Enabled := false;
      Break;
    end;
  end;
end;

procedure TForm1.WebBrowser1DocumentComplete(ASender: TObject;
    const pDisp: IDispatch; const URL: OleVariant);
var
    doc3 : IHTMLDocument3;
    eleColl : IHTMLElementCollection;
    I: Integer;

    Buttons: OleVariant;
  Button: OleVariant;
begin

  Buttons := WebBrowser1.OleObject.Document.getElementsByTagName('button');
  for I := 0 to Buttons.Length - 1 do
  begin
    Button := Buttons.item(I);
    if Button.innerText = '로그인' then
    begin

    doc3 := (pDisp as IWebBrowser2).Document as IHTMLDocument3;

    doc3.getElementById('userId').setAttribute('value', 'jmson.fro', 0 );
    doc3.getElementById('password').setAttribute('value', 'epahseheh3A!', 0 );

    timer1.Enabled := true;

    end;
  end;
end;

procedure TForm1.WebBrowser2DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
var
    doc3 : IHTMLDocument3;
    eleColl : IHTMLElementCollection;
    I: Integer;

    Buttons: OleVariant;
  Button: OleVariant;
begin

  Buttons := WebBrowser2.OleObject.Document.getElementsByTagName('button');
  for I := 0 to Buttons.Length - 1 do
  begin
    Button := Buttons.item(I);
    if Button.innerText = '로그인' then
    begin

    doc3 := (pDisp as IWebBrowser2).Document as IHTMLDocument3;

    doc3.getElementById('userId').setAttribute('value', 'jmson.fro', 0 );
    doc3.getElementById('password').setAttribute('value', 'epahseheh3A!', 0 );

    //timer1.Enabled := true;

    end;
  end;
end;


end.
