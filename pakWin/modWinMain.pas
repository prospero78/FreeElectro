UNIT modWinMain;

{$mode objfpc}{$H+}

INTERFACE

USES
        Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
        modWinSize;

TYPE

		{ TwinMain }

        TwinMain = CLASS(TForm)
							mnuWireExit: TMenuItem;
							mnuWireSep1: TMenuItem;
				mnuSorted3faze: TMenuItem;
				mnuWired: TMenuItem;
				mnuWireSquare: TMenuItem;
				mnuSorted1faze: TMenuItem;
				mnuMain: TMainMenu;
				PROCEDURE mnuWireExitClick(Sender: TObject);
    PROCEDURE mnuWireSquareClick(Sender: TObject);
        PRIVATE
                { private declarations }
        PUBLIC
                { public declarations }
        END;

VAR
        winMain: TwinMain;

IMPLEMENTATION

{$R *.lfm}

{ TwinMain }

PROCEDURE TwinMain.mnuWireSquareClick(Sender: TObject);
BEGIN
      winSize.Show;
end;

PROCEDURE TwinMain.mnuWireExitClick(Sender: TObject);
BEGIN
      Application.Terminate;
end;

END.

