#!/bin/bash
#
# p11tst <Brief Description>
#
# chkconfig: 5 99 98
# description: Protheus 11 Teste
# processname: /home/totvs/protheus/p11tst/bin/appserver/appsrvlinux
export TOTVS_HOME=/totvs/totvslic/bin/appserver
export TOTVS_BIN=$TOTVS_HOME/appsrvlinux
PATH=/usr/sbin:$PATH; export PATH
ulimit -n 65536
ulimit -s 1024
ulimit -c unlimited
ulimit -f unlimited
ulimit -v unlimited

case "$1" in
    start)
        echo -n "Iniciando " $0
        cd $TOTVS_HOME
        $TOTVS_BIN &
        cd -
        ;;
    stop)
        echo -n "Parando " $0
        killall $TOTVS_BIN
        ;;
    status)
        echo -n "Status " $0
        ps axf |grep -i $TOTVS_BIN
        ;;
    restart)
        start
        stop
        ;;
    *)
        echo "Use: $0 {start|stop|status|restart}"
        exit 1
        ;;
esac

