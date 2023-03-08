# Build a Build Script
One common use of bash scripts is for releasing a “build” of your source code. Sometimes your private source code may contain developer resources or private information that you don’t want to release in the published version.

In this project, you’ll create a release script to copy certain files from a source directory into a build directory.
==================================================================================================================

#!bin/bash
echo "Congrats with new build!"
firstline=$(head -n 1 source/changelog.md)
read -a splitfirstline <<< $firstline
version=${splitfirstline[1]}
echo "You are building version" $version
echo 'Do you want to continue? (enter "1" for yes, "0" for no)'
read versioncontinue
if [ $versioncontinue -eq 1 ]
then 
echo "OK"
else
echo "Please come back when you are ready"
fi
for filename in source/*
do
echo $filename
done
if [ "$filename" == "source/secretinfo.md" ]
then 
echo "Not copying" $filename
else
echo "Copying" $filename
cp $filename build/.
fi
cd build/
cd ..
echo "Build version $version contains:"
ls
