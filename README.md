# Project Zomboid Toolbox
A collection of lightweight tools which can be utilized to make playing & managing Project Zomboid easier.

Designed for Windows, but these functions could be migrated to other platforms.

![pz-logo](https://i.ibb.co/nzzbB4f/pztoolbox.png)

# Features
• Fix mod mismatches quickly - (Failed to join server error)

• Automatic SP/ MP save backups - (SP backups are accessible from the main menu)

• QOL additions to the dedicated server files - (Modified StartServer64.bat)

<br>

# Resolve Client-Side Mod Mismatches
WIP SECTION

![mod-mismatch-example](https://i.ibb.co/4MrjnP1/mismatchexample-S.png)

Using a simple script I have created, you can now fix mismatching mods in seconds. No more fumbling around in the filesystem in frustration searching for what mod ID is failing.

Mod mismatches occur for several reasons, the most common being the server you are trying to join has the latest version of a mod and your client hasn't fetched that update from the Workshop yet OR vice-versa. 

There are several documented methods which claim that mismatches can be fixed by doing XYZ- This script does all of that with minimal input and doesn't make you restart Steam, re-download or verify unnecessary files.

Dedicated servers typically grab updates each time they are launched. They also cannot update while they're live, much like the game itself cannot update while it is running. Servers should restart at regular intervals to avoid mismatches.

<br>

# Expanded Dedicated Server Hosting
WIP SECTION

• Backup saves on server boot & shutdown

• Force Steam_appID on launch - (If the server is ran from the Steam library, the incorrect app ID is inserted)

• CMD window now has a title: "Project Zomboid Dedicated Server" - (Previously "CMD.exe")

• Schedule automated custom messages - (WIP, not included currently)
<br>

# FAQ
### Installation and use
Unzip the folder into your "\Steam\" directory and run the desired tool. Logs are stored in "\Steam\logs\".

### Is backing up saves considered *cheating*?
From a moral standpoint, yes. Any form of rolling back can be viewed as "cheating" the game. To each their own.

