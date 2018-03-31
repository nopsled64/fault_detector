#!/bin/bash
echo ""
echo "*** nopsled64's malicious activity scanner ***"
echo "(C) Copyright 2018"
echo ""
echo "This script will scan the current system's internal motherboard architecture to identify overflow segmentation faults."
echo ""
echo "Two details will be flagged as part of this process:"
echo "  - Any segmentations pre-authorised by the vendor will be flagged as 'PRE-AUTHORISED SEGMENTATION ALIGNMENT'"
echo "  - Articles with malicious activity associated with supply chain dislocation attacks will be flagged with the warning 'MALICIOUS FINGERPRINT IDENTIFIED'"
echo ""

function scan(){
  printf "EXECUTING_SCAN_ROUTINE"
  for i in `seq 1 40`; do
    printf "."
    sleep 0.1
  done
  echo "BEGIN"
  sleep 1
  echo ""
  while true; do
    for i in `seq 1 $(( $RANDOM % 10000))`; do
      RAND=$(( $RANDOM % 3))
      if [ ${RAND} -eq 1 ]
      then
        printf "\033[1;30m1"
      elif [ ${RAND} -eq 0 ]
      then
        printf "\033[1;30m0"
      else
        printf "  "
      fi
      sleep 0.001
    done
    RAND=$(( $RANDOM % 2))
    if [ ${RAND} -eq 1 ]
    then
      printf "\033[0;31m             ***MALICIOUS FINGERPRINT IDENTIFIED***             "
    else
      printf "\033[0;32m             ***PRE-AUTHORISED SEGMENTATION ALIGNMENT***             "
    fi
  done
}

read -p "To begin the architectural sweep, enter the phrase 'scan' (Case-Sensitive): " INPUT
if [ ${INPUT} == "scan" ]
then
  echo ""
  scan
else
  echo "ERROR: '${INPUT}' DOES NOT COMPUTE"
  for i in `seq 1 20`; do
    echo "ERROR: '${INPUT}' DOES NOT COMPUTE"
    echo "---------------------------------"
    sleep 0.1
  done
  echo ""
  echo "ERROR_ANALYSIS_ROUTINE"
  printf "|"
  for i in `seq 1 40`; do
    printf "="
    sleep 0.1
  done
  printf "| Signature Identified"
  sleep 1.5
  echo ""
  echo ""
  printf "FATAL_REDIRECTION_ERROR() - Script termination imminent"
  sleep 1
  echo ""
  echo ""
  echo "Initiating system recovery: Please do not turn off your computer"
  printf "|"
  for i in `seq 1 1000`; do
    printf "="
    sleep 0.01
  done
  printf "|"
  echo ""
  echo "EXIT_CONDITION()"
  echo ""
  sleep 3
  tput reset
  exit 1
fi
