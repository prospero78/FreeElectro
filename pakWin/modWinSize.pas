UNIT modWinSize;

{$mode objfpc}{$H+}

INTERFACE

USES
  Classes, SysUtils, FileUtil, HtmlView, FramBrwz,
  Forms, Controls, Graphics, Dialogs,
  StdCtrls, LResources, HelpIntfs;

TYPE

  { TwinSize }

  TwinSize = CLASS(TForm)
    btn1WireAl:  TButton;
    btn1WireCu:  TButton;
		htmV2: THtmlViewer;
		htmViewer: TFrameBrowser;
    txtSize:     TMemo;
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
  VAR
    str: string;
  BEGIN
    htmViewer.LoadFromFile('res/wire_Cu_1.html');
    htmViewer.Update;
    htmV2.LoadFromFile('res/wire_Cu_1.html', HtmlType);
    //htmWireSize.LoadFromFile('res\wire_Cu_1.htm');
    //htmWireSize.Update;
    str := '+------------------------+--------------------------------------+-----------------------------------+' + #13#10;
    str += '|Сеченине токопроводящей |   Провода  Напряжение в 220 В        |      Напряжение в 380 В           |'
      + #13#10;
    str += '|     жилы, мм²          |                                      |                                   |' + #13#10;
    str += '|------------------------+--------------------------------------+-----------------------------------+ ' + #13#10;
    str += '|                        | Сила тока, А  |   Мощность тока, кВт | Сила тока, А |  Мощность тока, кВт| '
      + #13#10;
    str += '|------------------------+--------------------------------------+-----------------------------------+ ' + #13#10;
    str += '|       1,5              |         19    |          4,1         |       16     |        10,5        |  ' + #13#10;
    str += '|       2,5              |         27    |          5,9         |       25     |        16,5        |  ' + #13#10;
    str += '|       4                |         38    |          8,3         |       30     |        19,8        |  ' + #13#10;
    str += '|       6                |         46    |         10,1         |       40     |        26,4        |  ' + #13#10;
    str += '|      10                |         70    |         15,4         |       50     |        33,0        |  ' + #13#10;
    str += '|      16                |         85    |         18,7         |       75     |        49,5        |  ' + #13#10;
    str += '|      25                |        115    |         25,3         |       90     |        59,4        |  ' + #13#10;
    str += '|      35                |        135    |         29,7         |      115     |        75,9        |  ' + #13#10;
    str += '|      50                |        175    |         38,5         |      145     |        95,7        |  ' + #13#10;
    str += '|      70                |        215    |         47,3         |      180     |       118,8        |  ' + #13#10;
    str += '|      95                |        260    |         57,2         |      220     |       145,2        |  ' + #13#10;
    str += '|     120                |        300    |         66,0         |      260     |       171,6        |  ' + #13#10;
    str += '+------------------------+--------------------------------------+-----------------------------------+  ' + #13#10;

    txtSize.Lines.Clear;
    txtSize.Lines.LoadFromFile('res/wire_Cu_1.txt');
    //txtSize.Lines[0] := str;
    //htmWireSize.L:=str;
  END;

END.
