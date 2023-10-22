// Type in your examination number here

unit Question3_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TfrmQuestion3 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    btnTerminal1: TBitBtn;
    btnTerminal2: TBitBtn;
    btnTerminal3: TBitBtn;
    GroupBox2: TGroupBox;
    btnNorth: TBitBtn;
    btnEast: TBitBtn;
    btnSouth: TBitBtn;
    btnWest: TBitBtn;
    GroupBox3: TGroupBox;
    btnQues31: TButton;
    btnQues32: TButton;
    btnQues33: TButton;
    btnQues34: TButton;
    redQ3: TRichEdit;
    cmbQues3: TComboBox;
    GroupBox4: TGroupBox;
    procedure btnQues31Click(Sender: TObject);
    procedure btnQues32Click(Sender: TObject);
    procedure btnTerminal1Click(Sender: TObject);
    procedure btnTerminal2Click(Sender: TObject);
    procedure btnTerminal3Click(Sender: TObject);
    procedure btnNorthClick(Sender: TObject);
    procedure btnSouthClick(Sender: TObject);
    procedure btnEastClick(Sender: TObject);
    procedure btnWestClick(Sender: TObject);
    procedure btnQues33Click(Sender: TObject);
    procedure btnQues34Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


  // Given code

var
  frmQuestion3: TfrmQuestion3;
  arrCodes: array [1 .. 10] of char = (
    'W',
    'A',
    'S',
    'R',
    'X',
    'D',
    'H',
    'P',
    'T',
    'L'
  );
  arrActivities: array [1 .. 10] of String = (
    'Water park',
    'Aquarium',
    'Sea',
    'Restaurants',
    'Shopping',
    'Diving',
    'Help desk',
    'Penguin park',
    'Shark tank',
    'Dolphin shows'
  );

  arrActCodes: array [1 .. 3, 1 .. 4] of String = (('DXWAT', 'HRDST', 'STWLP',
      'RDT'), ('SWA', 'SRXD', 'LWXH', 'SHA'), ('WLSR', 'AT', 'DATX', 'HW'));

  iTerminal: integer = 1;
  iDirection: integer = 1;

implementation

{$R *.dfm}

procedure TfrmQuestion3.btnTerminal1Click(Sender: TObject);
begin
  iTerminal := 1;
end;

procedure TfrmQuestion3.btnTerminal2Click(Sender: TObject);
begin
  iTerminal := 2;
end;

procedure TfrmQuestion3.btnTerminal3Click(Sender: TObject);
begin
  iTerminal := 3;
end;

procedure TfrmQuestion3.btnNorthClick(Sender: TObject);
begin
  iDirection := 1;
end;

procedure TfrmQuestion3.btnSouthClick(Sender: TObject);
begin
  iDirection := 2;
end;

procedure TfrmQuestion3.btnEastClick(Sender: TObject);
begin
  iDirection := 3;
end;

procedure TfrmQuestion3.btnWestClick(Sender: TObject);
begin
  iDirection := 4;
end;

procedure TfrmQuestion3.btnQues31Click(Sender: TObject);
var
  row, col: integer;
  sSTring: string;
begin
  // Quetion 3.1
  redQ3.Paragraph.TabCount := 4;
  redQ3.Paragraph.Tab[0] := 80;
  redQ3.Paragraph.Tab[1] := 130;
  redQ3.Paragraph.Tab[2] := 180;
  redQ3.Paragraph.Tab[3] := 230;
  redQ3.Lines.Add(#9 + 'North' + #9 + 'South' + #9 + 'East' + #9 + 'west');
  // redQ3.Lines.Add('Terminal 1' + #13 + 'terminal 2' + #13 + 'termianl 3' + #13);

  for row := 1 to 3 do
  begin

    sSTring := 'ter
    minal' + inttostr(row) + #9;
    for col := 1 to 4 do
    begin
      sSTring := sSTring + (arrActCodes[row, col] + #9);
    end;
    redQ3.Lines.Add(sSTring)
  end;
end;

procedure TfrmQuestion3.btnQues32Click(Sender: TObject);
var
  row, col, i, j: integer;
  s, selection: string;

begin

  // Quetion 3.2
  for row := 1 to 3 do
  begin
    s := '';
    for col := 1 to 4 do
    begin
      if arrActCodes[row, col] = arrActCodes[iTerminal, iDirection] then
      begin
        s := arrActCodes[row, col];
      end;
      // sSTring := sSTring + (arrActCodes[row, col] + #9);
    end;
    redQ3.Lines.Add(s);
  end;

  for i := 1 to length(s) do

  begin
    for j := 1 to 10 do

    begin
      if arrCodes[j] = s[i] then
        showmessage(arrCodes[j])
      else
        showmessage('didnt find');

    end;

  end;

end;

procedure TfrmQuestion3.btnQues33Click(Sender: TObject);
var
  sact, a: string;
  j, row, col: integer;
  sSTring: string;
begin
//   Question 3.3//
sact := cmbQues3.Text;
   redQ3.Lines.Add('Acces routes to ' + sact);

   for j := 1 to 10 do
   begin
   if sact = arrActivities[j] then
   begin
   a := arrCodes[j];
   end;

   end;

   redQ3.Lines.Add(a);
 //  starting 2D array

  for row := 1 to 3 do
  begin
    sSTring := '';

    for col := 1 to 4 do

    begin
      sSTring := sSTring + arrActCodes[row, col];
      for j := 1 to length(arrActcodes[row,col]) do
        begin
         // showmessage(sact);
       // showmessage(arrActCodes[row,col][j]);
          if arrActCodes[row,col][j]= a then
          begin
            redQ3.Lines.Add('terminal' + inttostr(row) +#9+ inttostr(col));
          end;

        end;

    end;
  //  redQ3.Lines.Add(sSTring);
  end;






end;

procedure TfrmQuestion3.btnQues34Click(Sender: TObject);
begin
  // Question 3.4
end;

end.
