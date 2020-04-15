#!/bin/sh
#
# sas.servers - start/stop/status script for all SAS servers and services
# run as the sas install account
#
#########################################################################
### Edit this section for servernames and config directories ############
### This script works best when passwordless ssh is setup    ############
### for the sas install account across all SAS Servers       ############
#########################################################################
#Install user ID
instluser=sas

#Server names for tiers
metasvr=metadataservername
mastrsvr=masterservername
   grid1svr=compservername1
   grid2svr=compservername2
   grid3svr=compservername3
midsvr=midtierservername

#Config directories for tiers
metaconf=/sas/configmeta/Lev1
compconf=/sas/configcomp/Lev1
   gridobjspwn=$compconf/ObjectSpawner
   gridevagnt=$compconf/Web/SASEnvironmentManager/smart-agent
midtierconf=/sas/configmid/Lev1
#########################################################################   

if [ "start" = "$1" ] | [ "status" = "$1" ];
then
 {
  echo "***********************************"
  echo "***** Starting SAS services *****"
  echo "***********************************"
   echo "*** $metasvr ***"
   ssh $instluser@$metasvr $metaconf/sas.servers $1
   echo "*** $mastrsvr ***"
   ssh $instluser@$mastrsvr $compconf/sas.servers $1
     echo "   *** $grid1svr ***"
     ssh $instluser@$grid1svr "$gridobjspwn/ObjectSpawner.sh $1; $gridevagnt/hq-agent.sh $1"
     echo "   *** $grid2svr ***"
     ssh $instluser@$grid2svr "$gridobjspwn/ObjectSpawner.sh $1; $gridevagnt/hq-agent.sh $1"
     echo "   *** $grid3svr ***"
     ssh $instluser@$grid3svr "$gridobjspwn/ObjectSpawner.sh $1; $gridevagnt/hq-agent.sh $1"
     ### For VA Customers ###
     # ssh $instluser@mastrsvr $compconf/Applications/SASVisualAnalytics/HighPerformanceConfiguration/LASRMonitor.sh $1
   echo "*** $midsvr ***"
   ssh $instluser@$midsvr $midconf/sas.servers $1
  exit;
 }
fi

if [ "stop" = "$1" ];
then
 {
  echo "***********************************"
  echo "***** Stopping SAS services *****"
  echo "*********************************** 
   echo "*** $midsvr ***"  
   ssh $instluser@$midsvr $midconf/sas.servers $1 
     ### For VA Customers ###
     # ssh $instluser@mastrsvr $compconf/Applications/SASVisualAnalytics/HighPerformanceConfiguration/LASRMonitor.sh $1
     echo "   *** $grid3svr ***"
     ssh $instluser@$grid3svr "$gridobjspwn/ObjectSpawner.sh $1; $gridevagnt/hq-agent.sh $1"
     echo "   *** $grid2svr ***"
     ssh $instluser@$grid2svr "$gridobjspwn/ObjectSpawner.sh $1; $gridevagnt/hq-agent.sh $1"
     echo "   *** $grid1svr ***"
     ssh $instluser@$grid1svr "$gridobjspwn/ObjectSpawner.sh $1; $gridevagnt/hq-agent.sh $1"
   echo "*** $mastrsvr ***"
   ssh $instluser@$mastrsvr $compconf/Lev1/sas.servers $1
   echo "*** $metasvr ***"
   ssh $instluser@$metasvr $metaconf/Lev1/sas.servers $1
  exit;
 }
fi


  