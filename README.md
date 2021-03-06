# Special Variables
    $0 - The name of the Bash script.
    $1 - $9 - The first 9 arguments to the Bash script. (As mentioned above.)
    $# - How many arguments were passed to the Bash script.
    $@ - All the arguments supplied to the Bash script.
    $? - The exit status of the most recently run process.
    $$ - The process ID of the current script.
    $USER - The username of the user running the script.
    $HOSTNAME - The hostname of the machine the script is running on.
    $SECONDS - The number of seconds since the script was started.
    $RANDOM - Returns a different random number each time is it referred to.
    $LINENO - Returns the current line number in the Bash script.

# Test operators '[]'

    Operator 	            Description
    ! EXPRESSION 	        The EXPRESSION is false.
    -n STRING 	            The length of STRING is greater than zero.
    -z STRING 	            The lengh of STRING is zero (ie it is empty).
    STRING1 = STRING2 	    STRING1 is equal to STRING2
    STRING1 != STRING2 	    STRING1 is not equal to STRING2
    INTEGER1 -eq INTEGER2 	INTEGER1 is numerically equal to INTEGER2
    INTEGER1 -gt INTEGER2 	INTEGER1 is numerically greater than INTEGER2
    INTEGER1 -lt INTEGER2 	INTEGER1 is numerically less than INTEGER2
    -d FILE 	            FILE exists and is a directory.
    -e FILE 	            FILE exists.
    -r FILE 	            FILE exists and the read permission is granted.
    -s FILE 	            FILE exists and it's size is greater than zero (ie. it is not empty).
    -w FILE 	            FILE exists and the write permission is granted.
    -x FILE 	            FILE exists and the execute permission is granted.

# Regex

 	abc… 	Letters
	123… 	Digits
	\d 	Any Digit
	\D 	Any Non-digit character
	. 	Any Character
	\. 	Period
	[abc] 	Only a, b, or c
	[^abc] 	Not a, b, nor c
	[a-z] 	Characters a to z
	[0-9] 	Numbers 0 to 9
	\w 	Any Alphanumeric character
	\W 	Any Non-alphanumeric character
	{m} 	m Repetitions
	{m,n} 	m to n Repetitions
	* 	Zero or more repetitions
	+ 	One or more repetitions
	? 	Optional character
	\s 	Any Whitespace
	\S 	Any Non-whitespace character
	^…$ 	Starts and ends
	(…) 	Capture Group
	(a(bc)) 	Capture Sub-group
	(.*) 	Capture all
	(abc|def) 	Matches abc or def

# Linux
    ## Access Control
    - add user
    `adduser -m(create new home directory) -d(path to home dir) /home/guest -p(passwd) **** -s(shell dir) /bin/zsh`
    - delete user
    `userdel guest`
    ### directories to see user
    - /etc/passwd // user info
    - /etc/shadow // see user's secure info
    - /etc/group // see groups info
    
    ## process
    - htop
    - kill -l
    ### /proc directory where processes info are mounted by the kernel

    ## File system
    - /etc - all the configuration files
    - /sbin - secure system binaries
    - /bin - all other regular binaries or symlink of the binaries
    - /tmp - temporary files(blown away when restarted the machine)
    - /lib{,64} - system, shared libraries
    `man heir // shows directory structure info`
    - /boot - kernel, boot-loader(GRUB)
    - /dev - all the hardware devices
    - /opt - optional software not installed with package manager, you can link binary to /bin and write config in /etc
    - /var - all the changing log file, for example, /var/log contains log files