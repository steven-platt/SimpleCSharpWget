# SimpleCSharpWget
This was for my OSCP studies.  I was able to get console access on nina in 
it.thinc by exploiting IE on her Windows Vista workstation.  This gave me an 
administrative shell as SYSTEM.  I wanted to use mimikatz but couldn't find a
way to transfer files because FTP, TFTP and even VBscript/JScript were disabled!
One thing I found was that .NET was installed.  So, I was able to echo some 
lines of C# to a file then compile the file with csc.exe.  The lines I echo'ed
simply allowed me to download something via HTTP at which point I was able to 
steal nina's password and login via RDP.

