UNIT modWinSize;

{$mode objfpc}{$H+}

INTERFACE

USES
      Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
      LResources;

TYPE

			{ TwinSize }

      TwinSize = CLASS(TForm)
						btn1WireAl: TButton;
						btn1WireCu: TButton;
						txtSize: TMemo;
						PROCEDURE btn1WireCuClick(Sender: TObject);
      PRIVATE
            { private declarations }
      PUBLIC
            { public declarations }
      END;

VAR
      winSize: TwinSize;

IMPLEMENTATION

{$R *.lfm}

{ TwinSize }

PROCEDURE TwinSize.btn1WireCuClick(Sender: TObject);
BEGIN
      txtSize.Lines:= LoadResource ('WIRE_CU_1');
end;

END.

