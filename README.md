# SC2ReplayRename
Starcraft Replays will not function correctly if the filename is too long. This script will shorten them. 
Written in Powershell 5.1. This script must be placed in the same folder as the folder of replays/replay files at the highest level. As of time of writing, replays are stored (on Windows) at C:\Users\XXX\Documents\StarCraft II\Accounts\XXX\XXX\Replays\Multiplayer

Script shortens file names by removing the date in the file and shortening the matchup. 

Run the script with Powershell when your replays are in the same directory as seen below

![image](https://user-images.githubusercontent.com/38507824/156381787-b0ded9c1-0583-41bd-a56e-33ef0c7e9958.png)

This script also comes with optional logging. To enable this, simply change the first line from $logging = $false to $logging = $true

You can find an example of the log file attached to this repo. This was ran against the IEM Katowice 2022 Replay Pack which you can find at the bottom of this page https://liquipedia.net/starcraft2/IEM_Katowice/2022

TL;DR

1) Download a replay pack and move it to the necessary filepath
2) Move this script to the same folder as your replays you downloaded
3) Right click the script -> Run with Powershell

DISCLAIMER: This script does NOT back up any files before renaming them. Enable logging to track changes. 
