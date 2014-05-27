############################################################
#
#  Name:        Sean Glover
#  Assignment:  Validation Assignment
#  Date:        04/10/2013
#  Class:       CIS 283
#  Description: Validate user entered phone number and email address
#
############################################################

# method to prompt user for phone number and display accepted formats
def prompt_phone
  puts "Enter your phone number in one of the following formats:"
  puts "(xxx) xxx-xxxx"
  puts "xxx-xxx-xxxx"
  puts "xxx.xxx.xxxx"
  puts "Where \"x\" is a number:"
end

# method to prompt user for email address
def prompt_email
  puts
  puts "Enter your email address:"
end

# loop prompt user for phone number
while true
  prompt_phone
  phone_number = gets.chomp

  # validation of phone number entered matches 1 of 3 approved formats
  if /\A\(\d{3}\)\s\d{3}-\d{4}\z/.match(phone_number) or /\A\d{3}-\d{3}-\d{4}\z/.match(phone_number) or /\A\d{3}.\d{3}.\d{4}\z/.match(phone_number)
    break # break from loop when format is approved
  else
    puts "That is not a valid phone number format."
    puts
  end
end

# loop prompt user for email address
while true
  prompt_email
  email_address = gets.chomp

  # validation of email address entered matches approved format
  if /\A([a-zA-Z]|\d)+\w*(\.?[a-zA-Z]+\d*)*@[a-zA-Z]+\d*(\.?[a-zA-Z]+\d*)*\.[a-z]{2,6}\z/.match(email_address)
    break # break from loop when format is approved
  else
    puts "That is not a valid email address format."
    puts
  end
end

# display valid entered phone number and email address
puts
puts "Phone number:  #{phone_number}"
puts "Email address: #{email_address}"

