# SimpleCSharpWget
This was for my OSCP studies.  I was able to get console access on nina in it.thinc by exploiting her Windows Vista browser and get a reverse shell.  Once I was on there every way I could think of to transfer files was disabled (TFTP, FTP and even cscript).  I did notice .NET installed and along with it csc.exe.  So, I whipped up these few lines to download a file.  All I had to do was echo the few lines to a .cs and then compile with csc.exe.  It worked well, I was able to root the box, however, it didn't allow me to use the webconsole on Mario!!
