This is a shell script project to track the AWS resources that are commonly used.
At the bottom of the script, the cronjob code is commented which needs to be set using:
 
 
 ##crontab -e
 ##0 18 * * * /path/to/your/script.sh
