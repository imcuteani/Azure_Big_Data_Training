sed -n '/<name>fs.default/,/<\/value>/p' /etc/hadoop/conf/core-site.xml


sed -n '/<name>oozie.base.url/,/<\/value>/p' /etc/oozie/conf/oozie-site.xml
