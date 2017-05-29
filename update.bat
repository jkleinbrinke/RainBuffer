ECHO OFF
set comment=%1
ECHO Running "mvn package"...
CALL mvn package
ECHO Adding new files to git...
git add -A
ECHO Commiting files to git...
git commit -m %1
ECHO Pushing files to git...
git push -u origin master
PAUSE