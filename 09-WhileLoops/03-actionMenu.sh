#!/bin/bash

# In which the user is prompted with a menu of actions numbered
# 1,2 and 3, with a 'q' option to quit the menu. The delineated
# actions are 'show disk usage', 'show system uptime', and 'show
# logged in system users'.  Selecting 'q' provides user with the
# departing salutation "Goodbye", and selecting an option other
# than those presented presents an "Invalid option" message.

while true            # While loop runs until 'break' keyword is encountered by user selecting option 'q'.
do
  echo -e "Choose Action:\n1. Show disk usage.\n2. Show system uptime\n3. Show logged-in system users."
  read -p "What would you like to do? (Enter 'q' to quit.)  " ACTION  # Prompts user to select an option.
  case $ACTION in
    1)
      df              # Uses BASH 'df' command to report file system disk space usage.
      echo -e "\n"
      ;;
    2)
      uptime          # Uses BASH 'uptime' command to report how long the system has been running.
      echo -e "\n"
      ;;
    3)
      who             # Uses BASH 'who' command to report who is presently logged into the system.
      echo -e "\n"
      ;;
    q)
      echo -e "Goodbye!\n"
      break                 # Breaks out of the while loop to exit the script.
      ;;
    *)
      echo -e "Invalid Option.\n"     # Informs user a correct option was not chosen.
      ;;
  esac
done
