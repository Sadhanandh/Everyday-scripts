#!/bin/bash
read -s -p "Enter Password: " mypass
echo "\n"
curl --user admin:$mypass 192.168.1.2/rebootinfo.cgi
