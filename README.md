# UNIX Enviroment Configuration
UNIX terminal enviroment configuration  
  
Wellcome, in this repository you can find the basic configuration I use when working in my personal UNIX enviroments.  
Im working on sharing more configurations, to this day you will find some of my most used **alias commands**, some small scripts allocated in .bashrc and some of the extensions I use in my VScode. You can also find a small git guide. 

>[!TIP]
>Before adding this new functionalities, you can change them in the **conf_files** directory.

## Usage
Super easy configuration process, just download this repository on your local machine and follow one of the two following methods.

### 1. Using setup.sh [RECOMENDED]
This is the fastest and easiest method. Once downloaded, locate the setup.sh configuration file and execute it with `./setup.sh`. Make sure it has the propper permissions. Remember you can give permissions with the 'chmod +` command.  
Once executed, you are done and some messages will inform you of the process and changes made. 

>[!IMPORTANT]
>Make sure setup.sh has the execute command. In case it doesn\`t, use `chmod +x setup.sh` to grant the execute permission.

### 2. Copying .cfg files
This is a rudimentary method. Just go in de **conf_files** directory and copy the content inside de .cfg files to your .bash_aliases and .bashrc files.

>[!NOTE]
>.bash_aliases may not exist so you will have to create it or add the `alias` commands inside the .bashrc file.

>[!NOTE]
>Note: Some scripts may not work properly because some dependencies may need to be installed or some variables containing path directories may be different for you. My advise is to check every script you are going to use in case there is something that has to be modify for your personal usage.
