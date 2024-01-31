#!/bin/bash
ISOFILE=$2
PATH=$1
echo "creating torrent for $ISOFILE"

/usr/bin/mktorrent \
-a https://tracker.threat.sh/announce,https://wolf.threatos.io/announce \
-a https://ashrise.com:443/phoenix/announce \
-a http://tracker.bt4g.com:2095/announce \
-a http://ipv4announce.sktorrent.eu:6969/announce \
-a udp://bt1.archive.org:6969/announce \
-a udp://tracker.opentrackr.org:1337/announce \
-a udp://open.demonii.com:1337/announce \
-a udp://tracker.ccc.de:80/announce \
-a udp://tracker.openbittorrent.com:80/announce \
-a udp://tracker.publicbt.com:80/announce \
-a udp://ipv4.tracker.harry.lu:80/announce,udp://ipv6.tracker.harry.lu:80/announce \
-a udp://tracker.coppersurfer.tk:6969/announce \
-a udp://tracker.moeking.me:6969/announce \
-c "Threat Security OS official torrent - don't seed it if an updated version is available. for security reasons we don't want old releases to be seeded." \
-w \
https://ftp-stud.hs-esslingen.de/Mirrors/archive.threatos.org/$PATH/$ISOFILE,\
https://ftp.halifax.rwth-aachen.de/threatos/$PATH/$ISOFILE,\
https://ftp.nluug.nl/os/Linux/distr/threat/$PATH/$ISOFILE,\
https://mirrors.dotsrc.org/threat/$PATH/$ISOFILE,\
http://matojo.unizar.es/threat/$PATH/$ISOFILE,\
https://ftp.cc.uoc.gr/mirrors/linux/threat/$PATH/$ISOFILE,\
https://threatos.volia.net/$PATH/$ISOFILE,\
https://mirrors.up.pt/threat/$PATH/$ISOFILE,\
https://mirror.yandex.ru/mirrors/$PATH/$ISOFILE,\
https://threat.mirror.garr.it/mirrors/threat/$PATH/$ISOFILE,\
http://mirrors.mit.edu/threat/$PATH/$ISOFILE,\
http://sft.if.usp.br/threat/$PATH/$ISOFILE,\
https://mirror.clarkson.edu/threat/$PATH/$ISOFILE,\
https://mirror.kku.ac.th/threat/$PATH/$ISOFILE,\
https://mirror.cedia.org.ec/threat/$PATH/$ISOFILE,\
https://mirror.ueb.edu.ec/threat/$PATH/$ISOFILE,\
https://mirror.0x.sg/threat/$PATH/$ISOFILE,\
https://mirrors.tuna.tsinghua.edu.cn/threat/$PATH/$ISOFILE,\
https://mirrors.ustc.edu.cn/threat/$PATH/$ISOFILE,\
https://mirrors.shu.edu.cn/threat/$PATH/$ISOFILE,\
http://free.nchc.org.tw/threat/$PATH/$ISOFILE,\
https://mirrors.ocf.berkeley.edu/threat/$PATH/$ISOFILE,\
http://mirror.lagoon.nc/pub/threat/$PATH/$ISOFILE,\
https://mirror.threat.sh/threat/$PATH/$ISOFILE,\
https://mirrors.aliyun.com/threat/,\
\
https://master.dl.sourceforge.net/project/threatosurity/$PATH/$ISOFILE,\
 -l 20 $ISOFILE
