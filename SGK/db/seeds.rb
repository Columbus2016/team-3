# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create :name => "Michelle Laser", :email => "user1@example.com", :encrypted_password => "user123",
        :sign_in_count => 2, :date_of_birth => DateTime.new(1990, 3, 1), :anonymous => false, 
        :cancer_type => "breast", :status => "survivor", :stage => 1, :gender => "female", :lat => 40, :long => 80

if !user.save
    puts "not saving"
end

user = User.create :name => "Yolanda Wanda", :email => "user1@example.com", :encrypted_password => "user123",
        :sign_in_count => 2, :date_of_birth => DateTime.new(1989, 12, 1), :anonymous => false,
        :cancer_type => "breast", :status => "survivor", :stage => 1, :gender => "female", :lat => 40, :long => 60
user.save

user = User.create :name => "Hillary Clinton", :email => "user1@example.com", :encrypted_password => "user123",
        :sign_in_count => 2, :date_of_birth => DateTime.new(1976, 3, 1), :anonymous => false,
        :cancer_type => "breast", :status => "survivor", :stage => 1, :gender => "female", :lat => 23, :long => 54
user.save

user = User.create :name => "Beth Columbus", :email => "user1@example.com", :encrypted_password => "user123",
        :sign_in_count => 2, :date_of_birth => DateTime.new(1931, 1, 1), :anonymous => false,
        :cancer_type => "breast", :status => "survivor", :stage => 1, :gender => "female", :lat => 34, :long => 83
user.save

user = User.create :name => "Sarah Frame", :email => "user1@example.com", :encrypted_password => "user123",
        :sign_in_count => 2, :date_of_birth => DateTime.new(1990, 1, 1), :anonymous => false,
        :cancer_type => "breast", :status => "co-survivor", :stage => 1, :gender => "female", :lat => 40, :long => 80
user.save

user = User.create :name => "Mary Jane", :email => "user1@example.com", :encrypted_password => "user123",
        :sign_in_count => 2, :date_of_birth => DateTime.new(1990, 1, 1), :anonymous => false,
        :cancer_type => "breast", :status => "survivor", :stage => 1, :gender => "female", :lat => 40, :long => 80
user.save

user = User.create :name => "Lisa frank", :email => "user1@example.com", :encrypted_password => "user123",
        :sign_in_count => 2, :date_of_birth => DateTime.new(1962, 1, 1), :anonymous => false,
        :cancer_type => "breast", :status => "survivor", :stage => 1, :gender => "female", :lat => 43, :long => 67
user.save

user = User.create :name => "Betty White", :email => "user1@example.com", :encrypted_password => "user123",
        :sign_in_count => 2, :date_of_birth => DateTime.new(1990, 1, 1), :anonymous => false,
        :cancer_type => "breast", :status => "other", :stage => 1, :gender => "female", :lat => 66, :long => 66
user.save

user = User.create :name => "Snow Dark", :email => "user1@example.com", :encrypted_password => "user123",
        :sign_in_count => 2, :date_of_birth => DateTime.new(1990, 1, 1), :anonymous => false,
        :cancer_type => "breast", :status => "survivor", :stage => 1, :gender => "female", :lat => 53, :long => 90
user.save

user = User.create :name => "Joanne Nyguen", :email => "user1@example.com", :encrypted_password => "user123",
        :sign_in_count => 2, :date_of_birth => DateTime.new(1964, 1, 1), :anonymous => false,
        :cancer_type => "breast", :status => "survivor", :stage => 1, :gender => "female", :lat => 165, :long => 80
user.save
