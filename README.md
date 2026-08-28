# Auto Save script for Project Zomboid
This is a lazy script for auto backup of your loved pz save.
## How it works:
The actual script is in a .ps1 file: PZ names your save file with the date you last played. The script searches for a file with the current year so it doesn't miss the save file (there are probably better ways to do this).  
This save file is copied to a **backup** folder, which you **have** create on your PC.  

The .bat file is simply a quick way to run the .ps1 file, because on Windows .ps1 files can't be executed with a double-click.

## Setup
### Powershell setup
For the script to work, you HAVE to enter this command in your PowerShell (run on admin):
```
Set-ExecutionPolicy RemoteSigned
```
Otherwise, Windows won't permit the execution of .ps1 files.

### Files configuration
Neither file has specified paths to the game files.  

You have to change the .bat extension to .txt and change the path to your .ps1 file.  
The .ps1 has to be edited too, by switching the paths to your game files path and the backup folder. This can be done in notepad, without changing the file extension.  
Don't forget to put the year you are playing in ACTUAL_YEAR!

## How to use

Double-click the .bat file, it will open a powershell and run the commands. When it closes, your backup is done!  
Just do it **before** launching the game _(safety reasons)_! 

## Loading the Backup

Later, if you want to use your backup, simply copy the file from your backup folder and paste it into the game's save files (don't forget to delete the current save before loading the new one).
