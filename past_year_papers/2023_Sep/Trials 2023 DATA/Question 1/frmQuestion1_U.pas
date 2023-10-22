// Name and surname:
// Date:
// IT TRIALS
// Question 1
unit frmQuestion1_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, jpeg, ExtCtrls, Spin, math, Buttons;

type
  TfrmQuestion1 = class(TForm)
    pgcMain: TPageControl;
    tsQ1_1: TTabSheet;
    btnQuestion1_1: TButton;
    lblWelcome: TLabel;
    tsQ1_2: TTabSheet;
    btnQuestion1_2: TButton;
    edtCost: TLabeledEdit;
    tsQ1_3: TTabSheet;
    imgHouse: TImage;
    btnQuestion1_3: TButton;
    tsQ1_4: TTabSheet;
    btnQuestion1_4: TButton;
    sedGames: TSpinEdit;
    lblGames: TLabel;
    redOutput: TRichEdit;
    redCollatz: TRichEdit;
    edtCollatz: TEdit;
    lblNumber: TLabel;
    imgPic: TImage;
    procedure btnQuestion1_1Click(Sender: TObject);
    procedure btnQuestion1_2Click(Sender: TObject);
    procedure btnQuestion1_3Click(Sender: TObject);
    procedure btnQuestion1_4Click(Sender: TObject);
    procedure edtCollatzExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuestion1: TfrmQuestion1;

implementation

{$R *.dfm}

procedure TfrmQuestion1.btnQuestion1_1Click(Sender: TObject);
begin
  // Question 1.1

end;

procedure TfrmQuestion1.btnQuestion1_2Click(Sender: TObject);
const
  GameCost = 59.99; // Provided
var
  iGame: integer;
  rCost: Real; // Provided
begin
  // Question 1.2

end;

procedure TfrmQuestion1.btnQuestion1_3Click(Sender: TObject);
var
  iHeight, iHouseHeight, iLen, iWidth: integer; // Provided
  rVolume, rPerc, rRoof: Real; // Provided
begin
  // Question 1.3
  iHouseHeight := 6; // Provided code

end;

procedure TfrmQuestion1.btnQuestion1_4Click(Sender: TObject);
var
  inum, icount, itest, rnext: integer;
  sResult: string;

begin
  redCollatz.Lines.Clear;
  // Question 1.4
  inum := 0;
  icount := 1;
  rnext := 0;

  if TryStrToInt(edtCollatz.Text, inum) = false then
  begin
    edtCollatz.Clear;
    edtCollatz.SetFocus;
    edtCollatz.color := clyellow;
    // application.Terminate;
    exit;
  end
  else
  begin

    redCollatz.Lines.Add(inttostr(icount) + ': ' + inttostr(inum));

    while inum <> 1 do
    begin
      if inum mod 2 = 0 then
        inum := inum div 2
      else
        inum := (inum * 3) + 1;

      inc(icount);
      redCollatz.Lines.Add(inttostr(icount) + ': ' + inttostr(inum));

    end;

  end;

end;

procedure TfrmQuestion1.edtCollatzExit(Sender: TObject);
begin
  // Do not change
  edtCollatz.color := $FFFFFF;
end;

end.
