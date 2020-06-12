#!/bin/sh
#
# sas.servers - start/stop/status script for smart-agent SAS servers and services
# run as the sas install account
#
#########################################################################
### Edit this section for servernames and config directories ############
### This script works best when passwordless ssh is setup    ############
### for the sas install account across all SAS Servers       ############
#########################################################################
#Install user ID
instluser=sas

#Server names for compute tier
gridnode1=compservername1
gridnode2=compservername2
gridnode3=compservername3
gridnode3=compservername3

#Config directories for compute tier
grid1conf=/myshareddir/sasconfig/Lev1
#########################################################################   

echo " "
echo "$gridnode1 Grid"
echo "---------"
ssh $instluser@$gridnode1 $grid1conf/Web/SASEnvironmentManager/smart-agent/hq-agent.sh $1
ssh $instluser@$gridnode1 netstat -an |grep 2144

echo " "
echo "$gridnode2 Grid"
echo "---------"
ssh $instluser@$gridnode2 $grid1conf/Web/SASEnvironmentManager/smart-agent/hq-agent.sh $1
ssh $instluser@$gridnode2 netstat -an |grep 2144

echo " "
echo "$gridnode3 Grid"
echo "---------"
ssh $instluser@$gridnode3 $grid1conf/Web/SASEnvironmentManager/smart-agent/hq-agent.sh $1
ssh $instluser@$gridnode3 netstat -an |grep 2144

echo " "
echo "$gridnode4 Grid"
echo "---------"
ssh $instluser@$gridnode4 $grid1conf/Web/SASEnvironmentManager/smart-agent/hq-agent.sh $1
ssh $instluser@$gridnode4 netstat -an |grep 2144
