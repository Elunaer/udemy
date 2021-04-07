# frozen_string_literal: true

# The homework assignment was to practice authenticating passwords using gem
# bcrypt to authenticate our usernames and passwords and to integrate Classes into our
# assignments. This was a follow along tutorial.

module Crud
  require 'bcrypt'
  puts 'Module CRUD activated' # Using this so it shows us in our terminal testing that it's working

  def create_hash_password(password)
    BCrypt::Password.create(password)
  end

  def verify_hash_password(password)
    BCrypt::Password.create(password)
  end

  def create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_password(user_record[:password])
    end
    list_of_users
  end

  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && verify_hash_password(user_record[:password]) == password
        return user_record
      end
    end
    'You have entered the wrong information this time, try again some other time'
  end
end
