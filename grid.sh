###### enter grid environment values #######
grid1conf=/shared/sgm94m6/sasconfig/Lev1
instluser=sas
gridport=8901
   grid1svr=compservername1
   grid2svr=compservername2
   grid3svr=compservername3
   grid4svr=compservername4
###########################################

echo " "
echo "$grid1svr Grid"
echo "---------"
ssh $instluser@$grid1svr $grid1conf/Grid/sgmg.sh $1
ssh $instluser@$grid1svr netstat -an |grep $gridport

echo " "
echo "$grid2svr Grid"
echo "---------"
ssh $instluser@$grid2svr $grid1conf/Grid/sgmg.sh $1
ssh $instluser@$grid2svr netstat -an |grep $gridport

echo " "
echo "$grid3svr Grid"
echo "---------"
ssh $instluser@$grid3svr $grid1conf/Grid/sgmg.sh $1
ssh $instluser@$grid3svr netstat -an |grep $gridport

echo " "
echo "$grid4svr Grid"
echo "---------"
ssh $instluser@$grid4svr $grid1conf/Grid/sgmg.sh $1
ssh $instluser@$grid4svr netstat -an |grep $gridport
