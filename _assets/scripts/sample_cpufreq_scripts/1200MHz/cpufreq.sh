#!/bin/sh
echo ondemand > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 1200000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo 120000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
