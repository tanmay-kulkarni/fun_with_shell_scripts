# FileFinder 1.0

* This is a search tool for finding and opening files hidden in deep corners of your disk
* No more manually digging through the directories!
    * Just enter a few characters from the file name which you remember
    * Select what type of files are to be searched (.mp4,.avi,.mkv or .pdf)
    * It can not only search and find the files, it can open them too(in external applications OKULAR and VLC). This project is in early stages. As of now, it works for PDF and most common video files. More formats are to be supported.
* The GUI is created using the "PyGTK" (http://www.pygtk.org/) library. The searching of files on the disk is done through a rather elegant shell script

Due to my limited knowledge of the PyGTK library, the GUI is kinda crude at this stage. Also, I guess people no longer use PyGTK much(The last release was in 2011). By the time I realized using GTK+ 3 for GUI would have been better, I had already created a lot in PyGTK. A different branch can be made to port the software to GTK+ 3.
