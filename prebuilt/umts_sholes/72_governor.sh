#!/system/bin/sh

# Load governor modules
insmod /system/lib/modules/cpufreq_interactive.ko
insmod /system/lib/modules/cpufreq_smartass.ko
insmod /system/lib/modules/cpufreq_conservative.ko

# Configure default governor
echo "smartass" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

