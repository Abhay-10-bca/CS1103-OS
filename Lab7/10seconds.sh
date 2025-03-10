#!/bin/bash
# Shell Script for Monitoring Memory Usage
# Usage: ./memory_monitor.sh
# Function to display memory usage
display_memory_usage() {
  echo "Current Memory Usage:"
  free -h
  echo ""
}


log_memory_usage() {
  echo "Logging memory usage every 10 seconds..."
  while true; do
    
    echo "$(date) - Memory Usage:" >> memory_log.txt
    free -h >> memory_log.txt
    echo "" >> memory_log.txt  
    sleep 10  
  done
}


monitor_memory_usage() {
  echo "Monitoring memory usage in real-time. Press [CTRL+C] to stop."
  
  top -o %MEM
}


echo "Dynamic Memory Monitor"
echo "1. Display current memory usage"
echo "2. Monitor memory usage in real-time"
echo "3. Log memory usage to file every 10 seconds"
echo "4. Exit"


while true; do
  read -p "Select an option (1-4): " option
  case $option in
    1) 
      display_memory_usage
      ;;
    2) 
      monitor_memory_usage
      ;;
    3) # Log memory usage every 10 seconds to memory_log.txt
      log_memory_usage
      ;;
    4) 
      echo "Exiting the memory monitor. Goodbye!"
      exit 0
      ;;
    *) 
      echo "Invalid option. Please select 1-4."
      ;;
  esac
  echo "" 
done

