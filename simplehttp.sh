#!/bin/bash 

#
# References/Credits:
# * https://gist.github.com/wxianfeng/1075411
# * http://bashitout.com/2013/05/07/Killing-processes.html
#
# start|stop|status for python SimpleHTTPServer
#
# VIEW:
#   http://localhost:8888

case $1 in
    "start" )
        echo "start python SimpleHTTPServer at http://localhost:8888"
        nohup python -m SimpleHTTPServer 8888 >&/dev/null &
        firefox http://localhost:8888/index.html &
        ;;
    "stop" )
        echo "stop python SimpleHTTPServer"
        pkill -f Simple
        ;;
    "status" )
        echo "process id (if running)"
        pgrep -fl Simple
        ;;
    *)
        echo "Usage:"
        echo "  ./simplehttp.sh start"
        echo "  ./simplehttp.sh stop"
        echo "  ./simplehttp.sh status"
        exit 1
esac
