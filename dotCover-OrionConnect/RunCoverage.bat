@Rem cover each project individually
dotCover cover cover-oc-webapi.xml
dotCover cover cover-oc-dataprocess.xml
dotCover cover cover-oc-dataaccess.xml
dotCover cover cover-oc-datamodel.xml
dotCover cover cover-oc-public.xml

@Rem merge results together
dotCover m merge.xml

@Rem output to single report
dotCover r report.xml
