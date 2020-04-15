## these commands check the locations and remove the files older than 14 days ##
###### enter grid environment values #######
metaconf=/sas/configmeta/Lev1
compconf=/sas/configcomp/Lev1
gridwk=/shared/sas/gridwork
midtierconf=/sas/configmid/Lev1
common=/shared/sas/common/logs
days=14
############################################
cd $compconf/Applications/SASVisualAnalytics/VisualAnalyticsAdministrator/VALIBLA/Logs
find $compconf/Applications/SASVisualAnalytics/VisualAnalyticsAdministrator/VALIBLA/Logs/* -mtime
+$days -exec rm -Rf {} \;
cd $compconf/Lev1/Applications/SASVisualAnalytics/VisualAnalyticsAdministrator/EVDMLA/Logs
find $compconf/Applications/SASVisualAnalytics/VisualAnalyticsAdministrator/EVDMLA/Logs/* -mtime +
$days -exec rm -Rf {} \;

cd $gridwk/
find $gridwk/* -mtime +$days -exec rm -Rf {} \;

cd $common/
find $common/* -mtime +$days -exec rm -Rf {} \;

cd $metaconf/SASMeta/MetadataServer/Logs
find $metaconf/SASMeta/MetadataServer/Logs/SASMeta* -mtime +$days -exec rm -Rf {} \;

cd $compconf/ObjectSpawner/Logs
find $compconf/ObjectSpawner/Logs/ObjectSpawner_* -mtime +$days -exec rm -Rf {} \;

cd $midtierconf/Web/WebAppServer/SASServer1_1/logs
find $midtierconf/Web/WebAppServer/SASServer1_1/logs/server.log.* -mtime +$days -exec rm -Rf {} \;
find $midtierconf/Web/WebAppServer/SASServer1_1/logs/localhost_access_log* -mtime +$days -exec rm -Rf {} \;
find $midtierconf/Web/WebAppServer/SASServer1_1/logs/gemfire-* -mtime +$days -exec rm -Rf {} \;

cd $midtierconf/Web/WebAppServer/SASServer2_1/logs
find $midtierconf/Web/WebAppServer/SASServer2_1/logs/server.log.* -mtime +$days -exec rm -Rf {} \;
find $midtierconf/Web/WebAppServer/SASServer2_1/logs/localhost_access_log* -mtime +$days -exec rm -Rf {} \;
find $midtierconf/Web/WebAppServer/SASServer2_1/logs/gemfire-* -mtime +$days -exec rm -Rf {} \;

cd $midtierconf/Web/WebAppServer/SASServer6_1/logs
find $midtierconf/Web/WebAppServer/SASServer6_1/logs/server.log.* -mtime +$days -exec rm -Rf {} \;
find $midtierconf/Web/WebAppServer/SASServer6_1/logs/localhost_access_log* -mtime +$days -exec rm -Rf {} \;

cd $midtierconf/Web/WebAppServer/SASServer7_1/logs
find $midtierconf/Web/WebAppServer/SASServer7_1/logs/server.log.* -mtime +$days -exec rm -Rf {} \;
find $midtierconf/Web/WebAppServer/SASServer7_1/logs/localhost_access_log* -mtime +$days -exec rm -Rf {} \;

cd $midtierconf/Web/WebAppServer/SASServer8_1/logs
find $midtierconf/Web/WebAppServer/SASServer8_1/logs/server.log.* -mtime +$days -exec rm -Rf {} \;
find $midtierconf/Web/WebAppServer/SASServer8_1/logs/localhost_access_log* -mtime +$days -exec rm -Rf {} \;

cd $midtierconf/Web/WebAppServer/SASServer10_1/logs
find $midtierconf/Web/WebAppServer/SASServer10_1/logs/server.log.* -mtime +$days -exec rm -Rf {} \;
find $midtierconf/Web/WebAppServer/SASServer10_1/logs/localhost_access_log* -mtime +$days -exec rm -Rf {} \;

cd $midtierconf/Web/WebAppServer/SASServer11_1/logs
find $midtierconf/Web/WebAppServer/SASServer11_1/logs/server.log.* -mtime +$days -exec rm -Rf {} \;
find $midtierconf/Web/WebAppServer/SASServer11_1/logs/localhost_access_log* -mtime +$days -exec rm -Rf {} \;

cd $midtierconf/Web/WebAppServer/SASServer12_1/logs
find $midtierconf/Web/WebAppServer/SASServer12_1/logs/server.log.* -mtime +$days -exec rm -Rf {} \;
find $midtierconf/Web/WebAppServer/SASServer12_1/logs/localhost_access_log* -mtime +$days -exec rm -Rf {} \;

cd $midtierconf/Web/WebAppServer/SASServer13_1/logs
find $midtierconf/Web/WebAppServer/SASServer13_1/logs/server.log.* -mtime +$days -exec rm -Rf {} \;
find $midtierconf/Web/WebAppServer/SASServer13_1/logs/localhost_access_log* -mtime +$days -exec rm -Rf {} \;
