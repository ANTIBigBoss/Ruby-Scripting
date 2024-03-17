require 'digest/sha1'

# This is an example hash would need to generate my own
storedPW = '9a5666d953e66ee9f16f936d7cb5f7beb7a7107'

print "Enter password: "
# In an interactive Ruby environment, gets would be used to input the password
# For the purposes of this example, we will use a fixed password 'hi123'
pw = 'hi123' # gets.chomp

# Compute the SHA1 digest of the entered password
entered_pw_hash = Digest::SHA1.hexdigest(pw)

# Compare the entered password hash with the stored hash
if entered_pw_hash == storedPW
  puts "Correct password"
else
  puts "Incorrect password!"
end
