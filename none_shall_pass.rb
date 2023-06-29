EMAIL = "collin@example.com"
PASSWORD = "goskate"
PASSWORD_VAULT = { aws: { username: "collin", password: "asdfasdf" } }

def welcome_message
  puts "Welcome to None Shall Pass - A Password Manager"
end

def prompt_user_for_email
  puts "Please sign in to continue"
  print "Enter email: "
  gets.chomp
end

#prompt_user_for_email
    #output the puts and print messages 
    #wait for the user input and then call chomp on the user input
    #the return value will be the last thing called which is the user input.chomps
    #set the result to a new variable when calling this method  

def verify_user_email(user_email)
  if user_email != EMAIL
    puts "Invalid Email"
    exit
  end
end

#verify_user_email 
    #if the user email does not equal the EMAIL then the output will say Invalid Email
    #this method takes an argument when called
    #if someone inputs the wrong email they will be exited out of the service and none of the code below will run

def prompt_user_for_password
  print "Enter password: "
  gets.chomp
end

#prompt_user_for_password
    #if email is correct then user will see the print output 
    #wait for users input then with chomp the input 
    #set the result to a new variable when calling this method 

def verify_user_password(user_password)
  if user_password != PASSWORD
    puts "Invalid Password"
    exit
  end
end

#verify_user_password 
    #if the user password does not equal the PASSWORD then the output will say Invalid password
    #this method takes an argument when called
    #if someone inputs the wrong password they will be exited out of the service and none of the code below will run

def greet_user(user_email)
  puts "Hello #{user_email}."
  puts "What would you like to do?"
end

#greet_user
    #this method will greet the user with their user_email and ask them what they'd like to do
    #this method takes an argument when called 

def menu_options
  puts "1. Add new service credentials"
  puts "2. Retrieve an existing service's credentials"
  puts "3. Exit"
end

#menu_options
    #this method displays the menu options that the user can choose from 

def get_user_menu_selection
  gets.chomp
end

#get_user_menu_selection 
    #this method gets the user input with a chomp 
    #save return value to a variable 

def handle_user_selection(user_selection)
  case user_selection
  when "1"
    new_service = set_new_service_name
    set_username_for(new_service)
    set_password_for(new_service)
  when "2"
    requested_service_name = retrieve_service_name
    credentials = retrieve_service_credentials_for(requested_service_name)
    display_service_credentials(requested_service_name, credentials)
  else
    exit_program
  end
end

def set_new_service_name
  print "Enter the name of the service: "
  new_service = gets.chomp
  PASSWORD_VAULT[new_service.to_sym] = {}
  new_service
end

def set_username_for(service)
  print "Please enter the username for this new service: "
  new_service_username = gets.chomp
  PASSWORD_VAULT[service.to_sym][:username] = new_service_username
  puts new_service_username
end

def set_password_for(service)
  print "Please enter the password for this new service: "
  new_service_password = gets.chomp
  PASSWORD_VAULT[service.to_sym][:password] = new_service_password
end

def retrieve_service_name
  print "Please enter the name of the service you wish to access credentials for: "
  gets.chomp
end

def retrieve_service_credentials_for(service_name)
  PASSWORD_VAULT[service_name.to_sym]
end

def display_service_credentials(service_name, credentials)
  puts "Here are the credentials for #{service_name}:"
  credentials.each do |key, val|
    puts "#{key}: #{val}"
  end
end

def exit_program
  puts "Exiting the program. Goodbye."
  exit
end


welcome_message
user_email = prompt_user_for_email
verify_user_email(user_email)
user_password = prompt_user_for_password
verify_user_password(user_password)
greet_user(user_email)

loop do 
    menu_options
    user_selection = get_user_menu_selection
    handle_user_selection(user_selection)
end

