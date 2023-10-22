//Question 3
//Enter your name and surname
unit Question3_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, clsRegistration;

type
  TfrmQuestion3 = class(TForm)
    redQ3: TRichEdit;
    Panel1: TPanel;
    lblExhibitor: TLabel;
    edtName: TEdit;
    lblSqm: TLabel;
    edtStandSize: TEdit;
    btnq3_2_1: TButton;
    btnq3_2_2: TButton;
    Panel2: TPanel;
    lblProfile: TLabel;
    edtProfile: TEdit;
    btnq3_2_3: TButton;
    pnlQ3_2_3: TPanel;
    btnq3_2_4: TButton;
    procedure btnq3_2_1Click(Sender: TObject);
    procedure btnq3_2_2Click(Sender: TObject);
    procedure btnq3_2_3Click(Sender: TObject);
    procedure btnq3_2_4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    //Provided code
    objRegistration : TRegistration;
  end;

var
  frmQuestion3: TfrmQuestion3;

implementation

{$R *.dfm}

procedure TfrmQuestion3.btnq3_2_1Click(Sender: TObject);
begin
   //Question 3.2.1


   //Provided code
   showmessage('Object has been instantiated');

end;

procedure TfrmQuestion3.btnq3_2_2Click(Sender: TObject);
begin
  //Question 3.2.2
  
end;

procedure TfrmQuestion3.btnq3_2_3Click(Sender: TObject);
begin
   //Question 3.2.3

end;

procedure TfrmQuestion3.btnq3_2_4Click(Sender: TObject);
begin
   //Question 3.2.4

end;

end.
