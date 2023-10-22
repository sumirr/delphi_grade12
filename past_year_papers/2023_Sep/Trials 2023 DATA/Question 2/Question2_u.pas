//Enter your name and surname
//Question 2

unit Question2_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dbConnection_U, ADODB, DB, Grids, DBGrids, StdCtrls, jpeg, ExtCtrls,
  ComCtrls;

type
    TfrmQuestion2 = class(TForm)
    dbgHeroes: TDBGrid;
    btnRestore: TButton;
    btnQ2_1_1: TButton;
    pgcQ2: TPageControl;
    tsQuestion2_1: TTabSheet;
    tsQuestion2_2: TTabSheet;
    imgSuperhero: TImage;
    imgSuperhero2: TImage;
    dbgActionFigure: TDBGrid;
    redQ2: TRichEdit;
    btnQ2_1_2: TButton;
    btnQ2_1_3: TButton;
    cmbCompany: TComboBox;
    btnQ2_1_4: TButton;
    btnQ2_1_5: TButton;
    btnQ2_2_2: TButton;
    btnQ2_2_1: TButton;
    dbgCompany: TDBGrid;
    procedure Connect;
    procedure FormActivate(Sender: TObject);
    procedure btnRestoreClick(Sender: TObject);
    procedure btnQ2_1_1Click(Sender: TObject);
    procedure btnQ2_1_2Click(Sender: TObject);
    procedure btnQ2_1_3Click(Sender: TObject);
    procedure btnQ2_1_4Click(Sender: TObject);
    procedure btnQ2_1_5Click(Sender: TObject);
    procedure btnQ2_2_2Click(Sender: TObject);
    procedure Tabs;
    procedure btnQ2_2_1Click(Sender: TObject);

  private
   { Private declarations }

  public
    { Public declarations }
  // declare the components
  objHeroes : TConnection;
  dsrCompany : TDataSource;
  qryHeroes : TADOQuery;
  dsrFigure : TDataSource;
  dsrHeroes : TDataSource;

  // tables for Q2.2
  tblCompany : TADOTable;
  tblFigure : TADOTable;

  end;

var
  frmQuestion2: TfrmQuestion2;

implementation

{$R *.dfm}

{ TForm3 }

procedure TfrmQuestion2.btnQ2_1_1Click(Sender: TObject);
var sSQL : String;
begin
  //Question 2.1.1

  sSQL := '';


  qryHeroes.SQL.Clear;
  qryHeroes.SQL.Add(sSQL);
  qryHeroes.Open;
  TFloatField(qryHeroes.FieldByName('Price')).currency := True;
end;

procedure TfrmQuestion2.btnQ2_1_2Click(Sender: TObject);
var sSQL : String;
begin
  //Question 2.1.2

  sSQL := '';

  qryHeroes.SQL.Clear;
  qryHeroes.SQL.Add(sSQL);
  qryHeroes.Open;
end;

procedure TfrmQuestion2.btnQ2_1_3Click(Sender: TObject);
var
   sSearch, sSQL : String;
begin
   //Question 2.1.3
  // given code
  sSearch := cmbCompany.Text;

  sSQL := '';

  // given code
  qryHeroes.SQL.Clear;
  qryHeroes.SQL.Add(sSQL);
  qryHeroes.Open;
  TFloatField(qryHeroes.FieldByName('Price')).currency := True;
end;

procedure TfrmQuestion2.btnQ2_1_4Click(Sender: TObject);
var sSQL : String;
begin
  //Question 2.1.4

  sSQL := '';

  // given code
  qryHeroes.SQL.Clear;
  qryHeroes.SQL.Add(sSQL);
  qryHeroes.Open;
end;

procedure TfrmQuestion2.btnQ2_1_5Click(Sender: TObject);
var sSQL : String;
begin
  //Question 2.1.5
  sSQL := '';

  // given code
  qryHeroes.SQL.Clear;
  qryHeroes.SQL.Add(sSQL);
  qryHeroes.ExecSQL;

  qryHeroes.SQL.Clear;
  qryHeroes.SQL.Add('SELECT * FROM tblCompany');
  qryHeroes.Open;
  qryHeroes.Last;
end;

procedure TfrmQuestion2.btnQ2_2_1Click(Sender: TObject);
begin
   //Question 2.2.1

   

   // given code
   tblFigure.First;
   TFloatField(tblFigure.FieldByName('Price')).currency := True;
end;

procedure TfrmQuestion2.btnQ2_2_2Click(Sender: TObject);
var
    iNumFigures : Integer;
    sCompanyID, sCompanyName : String;
begin
     //Question 2.2.2
    // given code
    redQ2.Lines.Add('Company Name'+#9+'Number in Stock'+#13);


end;

{$REGION}

//------------------------------------------------------------------------------
// PROVIDED CONNECTION CODE - DO NOT CHANGE!
//------------------------------------------------------------------------------

procedure TfrmQuestion2.btnRestoreClick(Sender: TObject);
var
  failFlag: Boolean;
begin

  objHeroes.Disconnect;
  qryHeroes.Close;
  tblCompany.Close;
  tblFigure.Close;

  DeleteFile('Heroes.mdb');
  CopyFile('Heroesbackup.mdb', 'Heroes.mdb', failFlag);

  objHeroes.DBConnect;
  tblCompany.Open;
  tblFigure.Open;
  qryHeroes.Open;

  ShowMessage('Database restored!');

end;

procedure TfrmQuestion2.Connect;
begin

   qryHeroes := TADOQuery.Create(frmQuestion2);
   qryHeroes.Connection := objHeroes.dbConnection;
   qryHeroes.SQL.Clear;
   qryHeroes.SQL.Add('SELECT * FROM tblCompany');
   qryHeroes.Open;

   tblCompany := TADOTable.Create(frmQuestion2);
   tblCompany.Connection := objHeroes.dbConnection;
   tblCompany.TableName := 'tblCompany';
   tblCompany.Active := True;

   tblFigure := TADOTable.Create(frmQuestion2);
   tblFigure.Connection := objHeroes.dbConnection;
   tblFigure.TableName := 'tblFigure';
   tblFigure.Active := True;

   dsrHeroes := TDataSource.Create(frmQuestion2);
   dsrHeroes.DataSet := qryHeroes;

   dsrCompany := TDataSource.Create(frmQuestion2);
   dsrCompany.DataSet := tblCompany;

   dsrFigure := TDataSource.Create(frmQuestion2);
   dsrFigure.DataSet := tblFigure;

   dbgHeroes.DataSource := dsrHeroes;
   dbgCompany.DataSource := dsrCompany;
   dbgActionFigure.DataSource := dsrFigure;

   Tabs;

   TFloatField(tblFigure.FieldByName('Price')).currency := True;
end;

procedure TfrmQuestion2.FormActivate(Sender: TObject);
var
  I: Integer;
begin

   objHeroes := TConnection.Create;
   objHeroes.DBConnect;

   Connect;

   cmbCompany.Clear;

   for I := 1 to qryHeroes.RecordCount do
   begin
     cmbCompany.Items.Add(qryHeroes['CompanyName']);

     qryHeroes.Next;
   end;

   cmbCompany.Sorted := True;
   cmbCompany.ItemIndex := 0;
   qryHeroes.SQL.Clear;
end;

procedure TfrmQuestion2.Tabs;
begin
  redQ2.Paragraph.TabCount := 1;
  redQ2.Paragraph.Tab[0] := 100;
end;

{$ENDREGION}
end.
