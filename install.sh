#!/bin/bash

while getopts ":k:c:m:" opt; do
  case $opt in
    k) key="$OPTARG"
    ;;
    c) code="$OPTARG"
    ;;
    m) manufacturer="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    exit 1
    ;;
  esac

  case $OPTARG in
    -*) echo "Option $opt needs a valid argument"
    exit 1
    ;;
  esac
done

export TENANT=$code
export KEY=$key
export MANUFACTURER=$manufacturer

docker-compose up -d
