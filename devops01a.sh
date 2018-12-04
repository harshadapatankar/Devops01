#!/bin/bash

echo "Assignment 1"
echo ""

#Number of volumes
echo "Number of Volumes: "
echo "`ls /Volumes`"
echo ""

#Size of volumes and free space
echo "Size of each volume and Free Space: "
echo "Filesystem      Size   Used  Available "
echo "`df -h |grep "/dev/disk"`"
echo ""

# #Number of CPUS/Cores
 echo "Processors"
 echo "`system_profiler SPHardwareDataType | grep "Processors"`"
 echo ""

 echo "Cores Per Processor"
 echo "`system_profiler SPHardwareDataType | grep "Cores"`"
 echo ""

# # #Information about cpus/core
# #  echo "Information About CPUS/Cores"
# #  echo "`system_profiler SPHardwareDataType | grep "Processor Name"`"
# #  echo "`system_profiler SPHardwareDataType | grep "Processor Speed"`"
# #  echo "`sysctl machdep.cpu.brand_string | cut -d : -f 2`"
# #  echo ""

# # #Mac address and ip address
# #  echo "MAC address and IP address"
# #  echo "MAC: `ifconfig en0 |grep ether |grep -v inet6 | cut -f 2 -d ' '`"
# #  echo "IP:  `ifconfig en0 |grep inet |grep -v inet6 | cut -f 2 -d ' '`"
# #  echo ""

# # #amt of ram
# #  echo "Amount of RAM"
# #  ramamt=`sysctl hw.memsize | cut -d : -f 2`
# #  mem=`expr $ramamt / 1024`
# #  mem=`expr $mem / 1024`
# #  echo "ram: $mem MB"


