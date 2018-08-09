#!/bin/bash
#https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html
#https://tecadmin.net/how-to-extract-filename-extension-in-shell-script/
echo "---------------" echo "I will create index.html and fill it with html5 boilerplate"
#echo "I have $# command line arguments"

hmFile="index.html"
imgDir="img"
cssDir="css"
jsDir="js"
fontsDir="fonts"

if [ "$#" != "0" ]; then
   echo "---------------"
   echo "ERROR:"
   echo "this script does not accept any argument"

else
   echo "---------------"
   echo "ok no command line args given, I will continue"

   #creating file "./test.txt"
   if [ -e $hmFile ]; then #or if we prefer reverse if [ !-e test.txt ]; then --test does not exist
      echo "---------------"
      echo "ERROR:"
      echo "$hmFile already exists --aborting"

   else
      echo "---------------"
      echo "ok creating file $hmFile and filling with boilerplate"

      #touch $hmFile
      printf "%s\n" \
	 "<!doctype html>" \
	 "<html lang=\"en\">" \
	 "   <head>" \
	 "      <meta charset=\"utf-8\">" \
	 "      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\" >" \
	 "" \
	 "      <link rel=\"stylesheet\" href=\"$cssDir/c.css\">" \
	 "      <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"$imgDir/\">" \
	 "" \
	 "	<title></title>" \
	 "   </head>" \
	 "   <body>" \
	 "	<main>" \
	 "	   <header>" \
	 "	   </header>" \
	 "	   <nav>" \
	 "	   </nav>" \
	 "	   <section>" \
	 "	   </section>" \
	 "	   <article>" \
	 "	   </article>" \
	 "	   <aside>" \
	 "	   </aside>" \
	 "	   <footer>" \
	 "	   </footer>" \
	 "" \
	 "	</main>" \
	 "	<script src=\"$jsDir/j.js\"></script>" \
	 "   </body>" \
	 "</html>" \
      > $hmFile

   fi

   #creating folder "img"
   if [ -d $imgDir ]; then
      echo "---------------"
      echo "ERROR:"
      echo "folder $imgDir already exists --aborting"

   else 
      echo "---------------"
      echo "ok creating folder $imgDir"
      mkdir $imgDir
   fi

   
   #creating folder "css"
   if [ -d $cssDir ]; then
      echo "---------------"
      echo "ERROR:"
      echo "folder $cssDir already exists --aborting"

   else 
      echo "---------------"
      echo "ok creating folder $cssDir"
      mkdir $cssDir

      #creating file "css/c.css"
      if [ -e $cssDir/c.css ]; then
	 echo "---------------"
	 echo "ERROR:"
	 echo "file $cssDir/c.css already exists --aborting"

      else
	 echo "---------------"
	 echo "ok creating file $cssDir/c.css"
	 touch $cssDir/c.css
      fi

   fi


   #creating folder "js"
   if [ -d $jsDir ]; then
      echo "---------------"
      echo "ERROR:"
      echo "folder $jsDir already exists --aborting"

   else 
      echo "---------------"
      echo "ok creating folder $jsDir"
      mkdir $jsDir

      #creating file "js/j.js"
      if [ -e $jsDir/j.js ]; then
	 echo "---------------"
	 echo "ERROR:"
	 echo "file $jsDir/j.js already exists --aborting"

      else
	 echo "---------------"
	 echo "ok creating file $jsDir/j.js"
	 touch $jsDir/j.js
      fi

   fi

   #creating folder "fonts"
   if [ -d $fontsDir ]; then
      echo "---------------"
      echo "ERROR:"
      echo "folder $fontsDir already exists --aborting"

   else 
      echo "---------------"
      echo "ok creating folder $fontsDir"
      mkdir $fontsDir

   fi


fi

printf "\n"
