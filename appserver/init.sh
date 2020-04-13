export TOTVS_HOME=/totvs/protheus/bin/appserver
export TOTVS_BIN=$TOTVS_HOME/appsrvlinux
PATH=/usr/sbin:$PATH; export PATH
ulimit -n 65536
ulimit -s 1024
ulimit -c unlimited
ulimit -f unlimited
ulimit -v unlimited

