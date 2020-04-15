###### enter grid environment values #######
grid1conf=/shared/sas/sasconfig/compute/Lev1
instluser=sas
objspwnport=8581
   grid1svr=compservername1
   grid2svr=compservername2
   grid3svr=compservername3
   grid4svr=compservername4
###########################################

echo " "
echo "$grid1svr Grid"
echo "---------"
ssh $instluser@$grid1svr $grid1conf/ObjectSpawner/ObjectSpawner.sh $1
ssh $instluser@$grid1svr netstat -an |grep $objspwnport

echo " "
echo "$grid2svr Grid"
echo "---------"
ssh $instluser@$grid2svr $grid1conf/ObjectSpawner/ObjectSpawner.sh $1
ssh $instluser@$grid2svr netstat -an |grep $objspwnport

echo " "
echo "$grid3svr Grid"
echo "---------"
ssh $instluser@$grid3svr $grid1conf/ObjectSpawner/ObjectSpawner.sh $1
ssh $instluser@$grid3svr netstat -an |grep $objspwnport

echo " "
echo "$grid4svr Grid"
echo "---------"
ssh $instluser@$grid4svr $grid1conf/ObjectSpawner/ObjectSpawner.sh $1
ssh $instluser@$grid4svr netstat -an |grep $objspwnport