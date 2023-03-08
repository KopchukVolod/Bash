# Bash

## Build_a_Build_Script
#### One common use of bash scripts is for releasing a “build” of your source code. Sometimes your private source code may contain developer resources or private information that you don’t want to release in the published version. In this project, you’ll create a release script to copy certain files from a source directory into a build directory
- [Build_a_Build_Script](https://github.com/KopchukVolod/Bash/blob/main/Build_a_Build_Script.sh)

## Describe 
`#!bin/bash`: This line is called the shebang, which specifies the interpreter to be used to run the script, in this case, Bash.

`echo "Congrats with new build!"`: This line prints a congratulatory message to the user.

`firstline=$(head -n 1 source/changelog.md)`: This line reads the first line of the changelog.md file in the source directory and stores it in the firstline variable.

`read -a splitfirstline <<< $firstline`: This line splits the firstline variable into an array of words and stores it in the splitfirstline array variable.

`version=${splitfirstline[1]}`: This line extracts the second word from the splitfirstline array (which should be the version number) and stores it in the version 
variable.

`echo "You are building version" $version`: This line prints a message telling the user which version is being built.

`echo 'Do you want to continue? (enter "1" for yes, "0" for no)'`: This line prints a message asking the user if they want to continue with the build.

`read versioncontinue`: This line reads the user's input and stores it in the versioncontinue variable.

`if [ $versioncontinue -eq 1 ]`: This line starts a conditional statement that checks if the user entered "1".

`then`: This line indicates the beginning of the block of code to be executed if the if statement is true.

`echo "OK"`: This line prints a message indicating that the build will proceed.

`else`: This line indicates the beginning of the block of code to be executed if the if statement is false.

`echo "Please come back when you are ready"`: This line prints a message telling the user to come back later if they don't want to proceed with the build.

`fi`: This line ends the if statement.

`for filename in source/*`: This line starts a loop that goes through all the files in the source directory.

`echo $filename`: This line prints the name of each file in the source directory.

`if [ "$filename" == "source/secretinfo.md" ]`: This line checks if the current file being looped over is named "secretinfo.md".

`then`: This line indicates the beginning of the block of code to be executed if the if statement is true.

`echo "Not copying" $filename`: This line prints a message indicating that the script won't copy the file.

`else`: This line indicates the beginning of the block of code to be executed if the if statement is false.

`echo "Copying" $filename`: This line prints a message indicating that the script will copy the file.

`cp $filename build/.`: This line copies the file to the build directory.

`fi`: This line ends the if statement.

`cd build/`: This line changes the current directory to the build directory.

`cd ..`: This line changes the current directory back to the main project directory.

`echo "Build version $version contains:"`: This line prints a message indicating the contents of the build version.

`ls`: This line lists the files in the current directory, which should be the build version files.
