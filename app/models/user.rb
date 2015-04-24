class User < ActiveRecord::Base
	has_secure_password

	has_many :reviews, dependent: :destroy
	has_many :reviewed_restaurants, through: :reviews


	has_many :reservations, dependent: :destroy	
	has_many :restaurants, through: :reservations
end
