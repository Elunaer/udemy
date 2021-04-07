# frozen_string_literal: true

require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, email, username, password)
    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Email: #{@email}, Username: #{@username},
     Password: #{@password}"
  end
end

