#!/bin/bash

display_environment_variables() {
echo "Current Environment Variables:"
printenv
echo ""
}

set_environment_variable() {
read -p "Enter the name of the environment variable: " var_name
read -p "Enter the value of the environment variable: " var_value
export "$var_name=$var_value"
echo "Environment variable '$var_name' set to '$var_value'."
echo ""
}

show_env_command() {
echo "Displaying environment variables using 'env':"
env
echo ""
}

echo "Environment Variable Manager"
echo "1. Display current environment variables using printenv"
echo "2. Set and export a new environment variable"
echo "3. Display environment variables using env"
echo "4. Exit"

while true; do
read -p "Select an option (1-4): " option
case $option in
1) 
display_environment_variables
;;
2) 
set_environment_variable
;;
3) 
show_env_command
;;
4)
echo "Exiting the Environment Variable Manager. Goodbye!"
exit 0
;;
*) 
echo "Invalid option. Please select 1-4."
;;
esac
echo "" 
done
