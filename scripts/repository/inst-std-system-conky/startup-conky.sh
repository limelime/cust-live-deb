#!/bin/bash
set -e
# Description: On system startup, change conkyrc settings according to the hardware.
#               - Adjust the number of CPUs.
#               - Add calendar if screen height > 1000 px.

#---- CPU: Adjust the number of CPUs. ----# 
	### Get the number of cpu.
	CPU_NUM=$(grep -c ^processor /proc/cpuinfo)
	
	### Write CPU settings to a temporary file.
	CPU_CONKY=/root/cld/conkyrc-cpu.txt
	cat /dev/null > ${CPU_CONKY}
	for ((i=1; i<CPU_NUM; i+=2))
	do
	  #echo -n "CPU${i}  \${cpu cpu${i}}% \${cpubar cpu${i}} " >> ${CPU_CONKY}
	  echo -n "CPU${i}  \${cpu cpu${i}}% \${alignr} " >> ${CPU_CONKY}
	  echo -e "CPU$((${i}+1))  \${cpu cpu$((${i}+1))}%" >> ${CPU_CONKY}
	done
	
	### Add number of CPU to .conkyrc.
	CPU_START="### CPU-START"
	CPU_END="### CPU-END"
	# Clear content between patterns.
	sed  -i "/${CPU_START}/,/${CPU_END}/{//!d}" /root/.conkyrc
	# Insert content between patterns.
	sed  -i "/${CPU_START}/ r ${CPU_CONKY}" /root/.conkyrc
	

#---- CALENDAR: Add calendar if screen height > 1000 px. ----#
	SCREEN_RESOLUTION=$(xrandr | head -n1 | cut -d, -f2 | cut -d" " -f3-5)
	HEIGHT=$(echo ${SCREEN_RESOLUTION}|sed 's/^.*x //') 

  if [ "${HEIGHT}" -gt 1000 ]; then
    CALENDAR_CONKY=/root/cld/conkyrc-calendar.txt
    CALENDAR_START="### CALENDAR-START"
    CALENDAR_END="### CALENDAR-END"
    # Clear content between patterns.
    sed  -i "/${CALENDAR_START}/,/${CALENDAR_END}/{//!d}" /root/.conkyrc
    # Insert content between patterns.
    sed  -i "/${CALENDAR_START}/ r ${CALENDAR_CONKY}" /root/.conkyrc
  fi

#---- NETWORK: Add available network interfaces ----#
  IFACE_START="### IFACE-START"
  IFACE_END="### IFACE-END"
  # Clear content between patterns.
  sed  -i "/${IFACE_START}/,/${IFACE_END}/{//!d}" /root/.conkyrc
  
  # Add all available network interfaces.
  IFACE_BASE_CONKY=/root/cld/conkyrc-network-iface.txt
	while IFS='' read -r IFACE_NAME || [[ -n "$IFACE_NAME" ]]; do

	  # Dynamically generate network interface for conkyrc.
	  IFACE_CONKY="/root/cld/conkyrc-network-${IFACE_NAME}.txt"
	  sed "s/IFACE_NAME/${IFACE_NAME}/g" "${IFACE_BASE_CONKY}" > "${IFACE_CONKY}"
	  
    # Insert network interface to conkyrc.
    sed  -i "/${IFACE_START}/ r ${IFACE_CONKY}" /root/.conkyrc
    	 
	done < <( ifconfig -a | grep -v '^ ' | awk NF | cut -d ' ' -f 1 | grep -v 'lo' )
  

exit 0
