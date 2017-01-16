PROGRAM FreeElectro;

{$mode objfpc}{$H+}

USES
        {$IFDEF UNIX}{$IFDEF UseCThreads}
        cthreads,
        {$ENDIF}{$ENDIF}
        Interfaces, // this includes the LCL widgetset
        Forms, modWinMain, modWinSize
        { you can add units after this };

{$R *.res}

BEGIN
        RequireDerivedFormResource := True;
        Application.Initialize;
		Application.CreateForm(TwinMain, winMain);
			Application.CreateForm(TwinSize, winSize);
        Application.Run;
END.

