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
    procedure Button1Click(Sender: TObject);

    procedure WebBrowser1DocumentComplete(ASender: TObject;
    const pDisp: IDispatch; const URL: OleVariant);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);


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
 //   WebBrowser1.Navigate('https://gw.hancom.com/ekp/view/login/userLogin');

end;

procedure TForm1.Button2Click(Sender: TObject);
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
      Break;
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 WebBrowser1.Navigate('https://gw.hancom.com/ekp/view/login/userLogin');
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

//웹페이지의 로딩완료 이벤트에서 작업을 진행합니다.



    doc3 := (pDisp as IWebBrowser2).Document as IHTMLDocument3;

//Element를 찾기위해 Document를 IHTMLDocument3에 맞춰 가져옵


    doc3.getElementById('userId').setAttribute('value', 'jmson.fro', 0 );
    doc3.getElementById('password').setAttribute('value', 'epahseheh3A!', 0 );

//가져온 Document에서 아이디, 비밀번호 입력창의 위치를 id로 찾아와 값을 넣어줍니다.

 timer1.Enabled := true;
end;


   { eleColl := doc3.getElementsByTagName('button');

    for I := 0 to eleColl.length - 1 do
    begin
    if (eleColl.item(I, 0) as IHTMLInputElement).type_ = 'submit' then
    (eleColl.item(I, 0) as IHTMLInputElement).form.submit;
     end; }




//Collection에서 로그인 버튼에 해당하는 Element를 찾아와 Submit을 실행시켜줍니다.


end.
