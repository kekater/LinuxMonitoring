# LinuxMonitoring
# Linux basic bash scripting and system research.

## 02: Bash script. 
### The script should output the following information:

**HOSTNAME** = _network name_  
**TIMEZONE** = _time zone as: **America/New_York UTC -5** (time zone must be taken from the system and be correct for the current location)_  
**USER** = _current user who ran the script_  
**OS** = _type and version of operating system_  
**DATE** = _current time as: **12 May 2020 12:24:36**_  
**UPTIME** = _system uptime_  
**UPTIME_SEC** = _system uptime in seconds_  
**IP** = _ip address of the machine on any of the network interfaces  
**MASK** = _network mask of any of the network interfaces as: **xxx.xxx.xxx.xxx**_.  
**GATEWAY** = _default gateway ip_  
**RAM_TOTAL** = _main memory size in GB with an accuracy of three decimal places as: **3.125 GB**_  
**RAM_USED** = _used memory size in GB with an accuracy of three decimal places_  
**RAM_FREE** = _free memory size in GB, with an accuracy of three decimal places_  
**SPACE_ROOT** = _root partition size in MB, with an accuracy of two decimal places, as **254.25 MB**_  
**SPACE_ROOT_USED** = _size of used space of the root partition in MB, with an accuracy of two decimal places_  
**SPACE_ROOT_FREE** = _size of free space of the root partition in MB, with an accuracy of two decimal places_


After the values ​​are displayed, you will be prompted to write the data to a file (answer Y/N).
Responses Y and y are considered positive, all others - negative.


## 03: Bash script. 
### The script from part 02 is used, without the part in which the data is saved to a file. 
The script is run with 4 parameters. The parameters are numeric. 
**For example, from 1 to 6:** `script03.sh 1 3 4 5` \
Colour designations: (1 - white, 2 - red, 3 - green, 4 - blue, 5 - purple, 6 - black) \
- **Parameter 1** is the background of the value names (HOSTNAME, TIMEZONE, USER etc.)  
- **Parameter 2** is the font colour of the value names (HOSTNAME, TIMEZONE, USER etc.)  
- **Parameter 3** is the background of the values (after the '=' sign)  
- **Parameter 4** is the font colour of the values (after the '=' sign)

The font and background colors of the same column cannot match.
If you enter matching values, a message is displayed describing the problem and prompting you to re-run the script.
After the message is printed, the program exits gracefully.

## 04: Bash script. 
### The script works without parameters. The parameters are set in the configuration file before running the script.
When running the script with the default color scheme, the output will look like this:
```
Column background 1 = default (black)
Column Font Color 1 = Default (White)
Column background 2 = default (red)
Column Font Color 2 = Default (Blue)
```

## 05: Bash script. 
### The script is launched with one parameter.
The parameter is an absolute or relative path to a directory. The parameter must end with "/", for example:
`script05.sh /var/log/`

