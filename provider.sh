# NOTE!!! Use "| grep" if you only need some of the information, say "cat /proc/cpuinfo | grep 'core id'". You can also remove the parts you don't need, or copy any parts that you need in your own script

# CPU information
echo "| ---------------------------- CPU INFORMATION ---------------------------- |"

echo "RUNNING cat /proc/cpuinfo"
cat /proc/cpuinfo

echo "RUNNING lscpu"
lscpu

echo "RUNNING cpuid"
cpuid

# Disk information
echo "| ---------------------------- DISK INFORMATION ---------------------------- |"

echo "RUNNING lshw -C disk"
lshw -C disk

echo "RUNNING hdparm -i /dev/XXX"
hdparm -i /dev/XXX

echo "RUNNING smartctl -i /dev/XXX"
smartctl -i /dev/XXX

# Memory information
echo "| ---------------------------- RAM INFORMATION ---------------------------- |"

echo "RUNNING free -h"
free -h

# BENCHMARKING FUN GIGGLES
echo "| ---------------------------- BENCHMARKING ---------------------------- |"

# CPU
echo "RUNNING sysbench cpu --cpu-max-prime=10000 run"
sysbench cpu --cpu-max-prime=10000 run

# IO
echo "RUNNING sysbench fileio --file-total-size=100M prepare"
sysbench fileio --file-total-size=100M prepare

# MEMORY
echo "RUNNING sysbench memory --memory-block-size=1K --memory-total-size=1G --num-threads=1 run"
sysbench memory --memory-block-size=1K --memory-total-size=1G --num-threads=1 run

echo "RUNNING stress-ng --matrix 1 -t 1m"
stress-ng --matrix 1 -t 1m
