# ShutTheDoor
A bash script (or set of bash scripts) that shuts down almost all services that run on open ports on a Linux box. Useful for CTFs when you have defaced the page and want to prevent other competitors from gaining access after you. These scripts must be run as root in order for them to work. This script was tested on the Metasploitable VM and shut down all vulnerable services, with special commands made to shut down apache2 and MySql so they do not respawn when their processes are killed.
There are 2 forms of this script. "Shutthedoorfromzero.sh" can be used if perl regular expressions are included in the version of grep on the victim machine. In that case, just execute the script as root on the victim machine and you are done.
The second version is a bit more complicated with 3 different script files that all need to be executed as root. "Step1Netstat.sh" and "Step3Shutthedoor.sh" need to be on the victim machine, and "Step2VictimPidList.sh" needs to be on your attacking machine.
The process then is as follows:
1. Run "Step1Netstat.sh" first, and then download the file "netstatvictim.txt" that it generates to your attacking machine.
2. On the attacking machine, run "Step2VictimPidList.sh" in the same directory as you downloaded "netstatvictim.txt" to, then upload the file "openportpids.txt" to the victim machine and place it in the same directory as "Step3Shutthedoor.sh".
3. Execute "Step3Shutthedoor.sh" as root and you are done! Just sit on your box and let the points roll in!
