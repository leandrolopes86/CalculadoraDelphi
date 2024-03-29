unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TForm1 = class(TForm)
    btn_decimal: TButton;
    btn_0: TButton;
    btn_igual: TButton;
    btn_divisao: TButton;
    btn_7: TButton;
    btn_8: TButton;
    btn_9: TButton;
    btn_multiplicacao: TButton;
    btn_4: TButton;
    btn_5: TButton;
    btn_6: TButton;
    btn_soma: TButton;
    btn_1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_subtracao: TButton;
    caixa_botoes: TLayout;
    caixa_topo: TLayout;
    lb_operador: TLabel;
    lb_num1: TLabel;
    lb_num2: TLabel;
    btn_apagar: TButton;
    btn_ce: TButton;
    btn_c: TButton;
    procedure btn_subtracaoClick(Sender: TObject);
    procedure btn_somaClick(Sender: TObject);
    procedure btn_multiplicacaoClick(Sender: TObject);
    procedure btn_divisaoClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_apagarClick(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_0Click(Sender: TObject);
    procedure btn_decimalClick(Sender: TObject);
    procedure btn_ceClick(Sender: TObject);
    procedure btn_cClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn_0Click(Sender: TObject);
begin
if lb_operador.Text = '.' then
  begin
    lb_num1.Text := lb_num1.Text + '0';
  end
  else
  begin
    lb_num2.Text := lb_num2.text + '0';
  end;
end;

procedure TForm1.btn_1Click(Sender: TObject);
begin
if lb_operador.Text = '.' then
  begin
    lb_num1.Text := lb_num1.Text + '1';
  end
  else
  begin
    lb_num2.Text := lb_num2.text + '1';
  end;
end;

procedure TForm1.btn_2Click(Sender: TObject);
begin
if lb_operador.Text = '.' then
  begin
    lb_num1.Text := lb_num1.Text + '2';
  end
  else
  begin
    lb_num2.Text := lb_num2.text + '2';
  end;
end;

procedure TForm1.btn_3Click(Sender: TObject);
begin
if lb_operador.Text = '.' then
  begin
    lb_num1.Text := lb_num1.Text + '3';
  end
  else
  begin
    lb_num2.Text := lb_num2.text + '3';
  end;
end;

procedure TForm1.btn_4Click(Sender: TObject);
begin
if lb_operador.Text = '.' then
  begin
    lb_num1.Text := lb_num1.Text + '4';
  end
  else
  begin
    lb_num2.Text := lb_num2.text + '4';
  end;
end;

procedure TForm1.btn_5Click(Sender: TObject);
begin
if lb_operador.Text = '.' then
  begin
    lb_num1.Text := lb_num1.Text + '5';
  end
  else
  begin
    lb_num2.Text := lb_num2.text + '5';
  end;
end;

procedure TForm1.btn_6Click(Sender: TObject);
begin
if lb_operador.Text = '.' then
  begin
    lb_num1.Text := lb_num1.Text + '6';
  end
  else
  begin
    lb_num2.Text := lb_num2.text + '6';
  end;
end;

procedure TForm1.btn_7Click(Sender: TObject);
begin
if lb_operador.Text = '.' then
  begin
    lb_num1.Text := lb_num1.Text + '7';
  end
  else
  begin
    lb_num2.Text := lb_num2.text + '7';
  end;
end;

procedure TForm1.btn_8Click(Sender: TObject);
begin
if lb_operador.Text = '.' then
  begin
    lb_num1.Text := lb_num1.Text + '8';
  end
  else
  begin
    lb_num2.Text := lb_num2.text + '8';
  end;
end;

procedure TForm1.btn_9Click(Sender: TObject);
begin
if lb_operador.Text = '.' then
  begin
    lb_num1.Text := lb_num1.Text + '9';
  end
  else
  begin
    lb_num2.Text := lb_num2.text + '9';
  end;
end;

procedure TForm1.btn_apagarClick(Sender: TObject);
begin
  if (lb_operador.Text = '.') then
    begin
      lb_num1.text := copy(lb_num1.text, 0, length(lb_num1.text) - 1);
    end
    else
    begin
      lb_num2.text := copy(lb_num2.text, 0, length(lb_num2.text) - 1);
    end;
end;

procedure TForm1.btn_cClick(Sender: TObject);
begin
if lb_operador.Text = '.' then
  begin
    lb_num1.Text := '';
  end
  else
  begin
    lb_num2.Text := '';
  end;
end;

procedure TForm1.btn_ceClick(Sender: TObject);
begin
  lb_operador.text := '.';
  lb_num1.text := '';
  lb_num2.text := '';

  btn_multiplicacao.Enabled := true;
  btn_soma.Enabled := true;
  btn_subtracao.Enabled := true;
  btn_divisao.Enabled := true;
end;

procedure TForm1.btn_decimalClick(Sender: TObject);
begin
if lb_operador.Text = '.' then
  begin
    lb_num1.Text := lb_num1.Text + ',';
  end
  else
  begin
    lb_num2.Text := lb_num2.text + ',';
  end;
end;

procedure TForm1.btn_divisaoClick(Sender: TObject);
begin
  lb_operador.text := '/';
  btn_multiplicacao.Enabled := true;
  btn_soma.Enabled := true;
  btn_subtracao.Enabled := true;
  btn_divisao.Enabled := false;
end;

procedure TForm1.btn_igualClick(Sender: TObject);
var n1, n2 : double;
var x : char;
begin
  n1 := strToFloat(lb_num1.text);
  n2 := strToFloat(lb_num2.text);
  //realizando as opera��es com IF
  //adi��o
  {
  if (lb_operador.Text = '+') then
  begin
    showmessage(FloatToStr(n1 + n2));
  end;
  //subtra��o
  if (lb_operador.Text = '-') then
  begin
    showmessage(FloatToStr(n1 - n2));
  end;
  //multipli��o
  if (lb_operador.Text = 'x') then
  begin
    showmessage(FloatToStr(n1 * n2));
  end;
  //divis�o
  if (lb_operador.Text = '/') then
  begin
    showmessage(FloatToStr(n1 / n2));
  end;                              }

  //calculo das opera��es com switch
  x := lb_operador.Text[1];
  case x of
    '+':
      begin
        showmessage(FloatToStr(n1 + n2));
      end;
    '-':
      begin
        showmessage(FloatToStr(n1 - n2));
      end;
    'x':
      begin
        showmessage(FloatToStr(n1 * n2));
      end;
    '/':
      begin
        showmessage(FloatToStr(n1 / n2));
      end;
  end;
lb_operador.text := '.';
lb_num1.text := '';
lb_num2.text := '';

btn_multiplicacao.Enabled := true;
btn_soma.Enabled := true;
btn_subtracao.Enabled := true;
btn_divisao.Enabled := true;
end;

procedure TForm1.btn_multiplicacaoClick(Sender: TObject);
begin
  lb_operador.text := 'x';
  btn_multiplicacao.Enabled := false;
  btn_soma.Enabled := true;
  btn_subtracao.Enabled := true;
  btn_divisao.Enabled := true;
end;

procedure TForm1.btn_somaClick(Sender: TObject);
begin
  lb_operador.text := '+';
  btn_multiplicacao.Enabled := true;
  btn_soma.Enabled := false;
  btn_subtracao.Enabled := true;
  btn_divisao.Enabled := true;
end;

procedure TForm1.btn_subtracaoClick(Sender: TObject);
begin
  lb_operador.text := '-';
  btn_multiplicacao.Enabled := true;
  btn_soma.Enabled := true;
  btn_subtracao.Enabled := false;
  btn_divisao.Enabled := true;
end;

end.
