// Enter your name and surname
unit clsRegistration;

interface

uses sysutils, math;

type
  TRegistration = class(TObject)
  private
    { private declarations }
    // Given Code
    fName: string;
    fStandSize: integer;
    fCost: real;
    fProfile: string;
    fBadges: integer;

  public
    { public declarations }

    // Provided code
    function toString: string;

    // Question 3.1.1, 3.1.2, 3.1.3, 3.1.4, 3.1.5, 3.1.6

  end;

implementation

{ TRegistration }

//Question 3.1.1

//Question 3.1.2

//Question 3.1.3

//Question 3.1.4

//Question 3.1.5

//Question 3.1.6


// Provided code
function TRegistration.toString: string;
begin
  result := fName + #13 + 'Stand size: ' + inttostr(fStandSize) + ' sqm'
    + #13 + 'Total cost for 4 days: ' + floattostrf(fCost, ffcurrency, 10, 2)+#13;
end;

end.
