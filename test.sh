#!/bin/bash
#ls /home/keenable
sshpass -p admin ssh admin@localhost -p 8101 list > /tmp/1.txt
sshpass -p admin ssh admin@localhost -p 8102 list > /tmp/2.txt
Diff_Chck=`diff -y /tmp/1.txt /tmp/2.txt`
echo $Diff_Chck

