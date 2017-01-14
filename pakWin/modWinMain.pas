UNIT modWinMain;

{$mode objfpc}{$H+}

INTERFACE

USES
        Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus;

TYPE

		{ TwinMain }

        TwinMain = CLASS(TForm)
				mnuSorted3faze: TMenuItem;
				mnuWired: TMenuItem;
				mnuWireSquare: TMenuItem;
				mnuSorted1faze: TMenuItem;
				mnuMain: TMainMenu;
        PRIVATE
                { private declarations }
        PUBLIC
                { public declarations }
        END;

VAR
        winMain: TwinMain;

IMPLEMENTATION

{$R *.lfm}

END.

