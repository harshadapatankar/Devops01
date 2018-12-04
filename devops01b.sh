#!/bin/bash

args=$#

if [ $args -ne 1 ]; then
  echo "Need to pass a command line arguement as faollows:"
  echo " For volume information: devops01b.sh -volumes"
  echo " For cpu information: devops01b.sh -cpu"
  echo " For ram information: devops01b.sh -ram"
  echo " For mac and ip address: devops01b.sh -network"
  echo " For all information: devops01b.sh -all"
fi

if [ "$1" == "-volumes" ]; then
  #Number of volumes
  echo "Number of Volumes: "
  echo "`ls /Volumes`"
  echo ""
  #Size of volumes and free space
  echo "Size of each volume and Free Space: "
  echo "Filesystem      Size   Used  Available "
  echo "`df -h |grep "/dev/disk"`"
  echo ""
fi

if [ "$1" == "-cpu" ]; then
  #Number of cpus/cores
  echo "Processors"
  echo "`system_profiler SPHardwareDataType | grep "Processors"`"
  echo ""

  echo "Cores Per Processor"
  echo "`system_profiler SPHardwareDataType | grep "Cores"`"
  echo ""

  #Information about cpus/core
  echo "Information About CPUS/Cores"
  echo "`system_profiler SPHardwareDataType | grep "Processor Name"`"
  echo "`system_profiler SPHardwareDataType | grep "Processor Speed"`"
  echo "`sysctl machdep.cpu.brand_string | cut -d : -f 2`"
  echo ""
fi

if [ "$1" == "-ram" ]; then
  #amt of ram
  echo "Amount of RAM"
  ramamt=`sysctl hw.memsize | cut -d : -f 2`
  mem=`expr $ramamt / 1024`
  mem=`expr $mem / 1024`
  echo "ram: $mem MB"
fi

if [ "$1" == "-network" ]; then
   #Mac address and ip address
  echo "MAC address and IP address"
  echo "MAC: `ifconfig en0 |grep ether |grep -v inet6 | cut -f 2 -d ' '`"
  echo "IP:  `ifconfig en0 |grep inet |grep -v inet6 | cut -f 2 -d ' '`"
  echo ""
fi

if [ "$1" == "-all" ]; then
  ./devops01aa.sh
fi


