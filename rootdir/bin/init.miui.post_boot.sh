#!/system/bin/sh

sdk=`getprop ro.build.version.sdk`

case "$sdk" in
    "21" | "22" | "23" | "24" | "25")
        if [ -f /sys/devices/system/cpu/present ]; then
            max_cpu_id=`cat /sys/devices/system/cpu/present | cut -d \- -f 2`
            cpu_available=`expr $max_cpu_id \+ 1`
            cfs_quota_us=`expr $cpu_available \* 10000`
            if [ -f /dev/cpuctl/fg_service/fg_limited/cpu.cfs_quota_us ]; then
                echo $cfs_quota_us > /dev/cpuctl/fg_service/fg_limited/cpu.cfs_quota_us
            fi
        fi
esac
