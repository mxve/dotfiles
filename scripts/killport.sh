#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 <port>"
    exit 1
fi

PORT=$1
PID=$(lsof -ti tcp:$PORT)

if [ -z "$PID" ]; then
    echo "No process found using port $PORT"
    exit 0
fi
kill -9 $PID

if [ $? -eq 0 ]; then
    echo "Process $PID killed successfully."
else
    echo "Failed to kill process $PID."
fi
