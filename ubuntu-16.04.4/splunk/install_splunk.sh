#!/bin/bash

FILENAME="splunk-7.1.1-8f0ead9ec3db-linux-2.6-amd64.deb"
 
#wget -O "$FILENAME" 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.1.1&product=splunk&filename=splunk-7.1.1-8f0ead9ec3db-linux-2.6-amd64.deb&wget=true'

#dpkg -i "$FILENAME"

/opt/splunk/bin/splunk start
