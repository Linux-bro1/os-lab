clear
echo "*** Employee Management System ***"
echo "Enter Login Details -->"
read -p "Enter Admin-ID: " AD_ID1
AD_ID2="farabi"
if [[ "$AD_ID1" == "$AD_ID2" ]]; then
    echo "Welcome... $AD_ID1"
read -p "Enter Password: " PS1
PS2="191002150"
if [[ "$PS1" == "$PS2" ]]; then

while :
do
clear
  echo "Welcome to the Employee Management System"
  echo "1. Add an Employee"
  echo "2. Update an Employee"
  echo "3. Search Employees"
  echo "4. Delete Employee"
  echo "5. View Employee Directory"
  echo "6. Quit"
  read -p "Enter your choice: " usr_op
clear

case $usr_op in
1)echo "Add NEW EMPLOYEE"
  read -p "Enter Name: " name
  echo "$name has been recorded." 
  
  read -p "Enter Employee-ID: " emp_id
  echo "$emp_id has been recorded."
  
  read -p "Enter Address: " emp_add
  echo "$emp_add has been recorded."
  
  read -p "Enter Number: " number
  echo "$number has been recorded."  
   
  read -p "Enter Salary: " salary
  echo "$salary has been recorded."    

clear

  echo "New Employee Info:"
  echo "> Name: $name "
  echo "> Employee-ID: $emp_id "
  echo "> Address: $emp_add "
  echo "> Number: $number "
  echo "> Salary: $salary"
  echo "$name : $emp_id : $emp_add : $number : $salary" >> employee.log
  echo "Saved successfully";;
  
2)echo "UPDATE EMPLOYEE"
    read -p "Enter Employee Name to be Updated: " old_string_name
    read -p "Enter Updated Employee Name: " update_name
    sed -i "s/$old_string_name/$update_name/" employee.log
  
    read -p "Do you want to update Employee-ID (y/n) --> " cha1
    cha2="y"
    if [[ "$cha1" == "$cha2" ]]; then
    read -p "Enter Employee-ID to be Updated: " old_string_ID
    read -p "Enter Updated Employee-ID: " update_ID
    sed -i "s/$old_string_ID/$update_ID/" employee.log
    fi
  
    read -p "Do you want to update Employee Address (y/n) --> " chb1
    chb2="y"
    if [[ "$chb1" == "$chb2" ]]; then  
    read -p "Enter Employee Address to be Updated: " old_string_add
    read -p "Enter Updated Employee Address: " update_add
    sed -i "s/$old_string_add/$update_add/" employee.log
    fi
  
    read -p "Do you want to update Employee Number (y/n) --> " chc1
    chc2="y"
    if [[ "$chc1" == "$chc2" ]]; then  
    read -p "Enter Employee Number to be Updated: " old_string_num
    read -p "Enter Updated Employee Number: " update_num
    sed -i "s/$old_string_num/$update_num/" employee.log
    fi
  
    read -p "Do you want to update Employee Salary (y/n) --> " chd1
    chd2="y"
    if [[ "$chd1" == "$chd2" ]]; then  
    read -p "Enter Employee Salary to be Updated: " old_string_sal
    read -p "Enter Updated Employee Salary: " update_sal
    sed -i "s/$old_string_sal/$update_sal/" employee.log
    fi
  echo "Update Successful";;

3)echo "Search EMPLOYEES"
  read -p "Enter employee name to Search: " search_query
clear
  echo " SEARCH RESULTS"
  grep -i $search_query employee.log;;
  
4)echo "DELETE EMPLOYEE"
  read -p "Enter employee name to be Deleted (case-sensitive): " delete_string
  sed -i -e "/$delete_string/d" employee.log
  echo "Delete Successful";;
  
5)echo "EMPLOYEES DIRECTORY"
  echo ""
  cat employee.log;;
  
6)break;;

*)echo "INVALID OPTION";;
esac;

read -p "Press 6 to Quit, Press Anykey to Return to The Main Menu " confirm_exit
if [ $confirm_exit -eq 6 ]
then break
fi
done    
    
else
    echo "INVALID PASSWORD"
fi
else
    echo "INVALID USER"
fi

