This is the official readme file for Bib-it.
NOW HOSTED AT SOURCEFORGE! =)

Bib-it was originally created by:
Guro Bu, Geir Engen, Lubomir Mihailov & Stein Strindhaug.

Zian Choy (Aka. zianchoy) is the current maintainer.

Please note that this project is now dead. Please see http://bib-it.sourceforge.net for details.

DESCRIPTION:
===============================================================
Bibit is a multiplatform application capable of parsing and 
editing BibTex bibliography files.
Edited files can be saved again as bibliography files.

IMPORTANT! Allthough we've tried to make Bib-it as robust as possible;
---------------------------------------------------------------------
YOU SHOULD ALLWAYS MAKE A BACKUP of a BibTeX file BEFORE EDITING IT!!
---------------------------------------------------------------------

A handwritten file can contain errors that may corrupt
the parsing therefore you should never overwrite a file not originally 
created by Bib-it. Bib-it should (hopefully) never corrupt a file it
have written itself, but YOU (the user) may accidentally delete or 
otherwise destroy entries so when doing a major edit or merging of files
allways make a backup first!

You may allso use "Open read only.." to avoid accidental overwriting. 
This flags the file as read only and automatically pops the "Save as"-
window when saving. Be ware that (at leas on some OS's) it IS sometimes
possible to actively overwrite a read only file with "Save as".

SYSTEM REQUIREMENTS:
===============================================================
Hardware:
---------
Any computer able to run java programs should do.
You'll need about ten times the filesize of the largest 
bibliography file you want to open available as RAM for Bib-it to
run smoothly.

OS and Software:
----------------
Any OS capable of running JRE(Java Runtime) 1.5.0 
and having JRE 1.5.0 or later installed should work.

If you have problems please send me (qvasi) a mail from using the email
system at source forge:
http://sourceforge.net/users/qvasi/


INSTALLATION:
===============================================================
Installation files are available here: 
http://bib-it.sourceforge.net/

Old/historic files: (pre v. 1.0 (early developement))
http://hovedprosjekter.hig.no/v2006/imt/in/bibtex/international/index.html

Jar installation:
================
Download the zip-archive containing the jar file and unzip 
the file in a folder of your choice. All the necessary
files will then unzip into this folder.

Windows users:
-------------
Run the jar-archive by double-clicking it.

Alternatively, open Command Prompt (usally in start -> programs -> accessories). 
Change directory to the directory where Bib-it is installed. 
Run Bib-it with this command:  "java -jar BibitX_X.jar"

Linux users:
-----------
Run Bibit with this command: "java -jar BibitX_X.jar" 
(or "java -jar <name of file>.jar" if you renamed the jar-file)

Mac users: 
--------- 
Run the jar-archive by double-clicking it. 
 
Alternatively, open Terminal.app (in Applications -> Utilities -> Terminal).  
Change directory to the directory where Bib-it is installed.  
Run Bib-it with this command: "java -jar BibitX_X.jar" 

Source installation (all platforms):
===================================
Download the source archive and extract it to a local directory. 
To compile you need JDK 1.5.0 or later. 
Goto the directory where you extracted the archive and run the 
"javac no/hig/bibit/*.java" command to compile the program.
(Windows users must use: "javac no\hig\bibit\*.java") 
Then run "java no.hig.bibit.Bibit" to start the program from 
your bibit directory.

Translations:		Status:
==============================================================
English			Default language (allways complete)
Norwegian (Bokmaal)	Complete
Norwegian (Nynorsk)	Quite complete
Spanish			Quite complete
Bulgarian		Ok
Dutch			Ok
German			Ok
Italian			Ok
Chinese (simplified)	Quite complete (not tested)


BUG REPORTS AND FEEDBACK:
===============================================================
Any feedback is very welcome! 

Please report bugs and give your comments and suggestions 
on the Bib-it discussion forum: 
http://sourceforge.net/forum/?group_id=169213
