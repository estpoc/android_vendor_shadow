#!/system/bin/sh

# Load overclock modules
insmod /system/lib/modules/symsearch.ko
insmod /system/lib/modules/overclock.ko

# Set max values for frequency and vsel
echo "60" > /proc/overclock/max_vsel
echo "900000" > /proc/overclock/max_rate

# Configure available frequencies
echo "5 900000000 60" > /proc/overclock/mpu_opps
echo "4 700000000 49" > /proc/overclock/mpu_opps
echo "3 500000000 44" > /proc/overclock/mpu_opps
echo "2 250000000 33" > /proc/overclock/mpu_opps
echo "1 125000000 32" > /proc/overclock/mpu_opps

# Configure scaling frequencies
echo "0 900000" > /proc/overclock/freq_table
echo "1 700000" > /proc/overclock/freq_table
echo "2 500000" > /proc/overclock/freq_table
echo "3 250000" > /proc/overclock/freq_table

# Set min value for frequency
echo "250000" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq

# Load cpufreq stats
insmod /system/lib/modules/cpufreq_stats.ko
