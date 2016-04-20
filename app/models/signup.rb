class Signup < ActiveRecord::Base
	validates :email, presence: true, uniqueness: {case_sensitive: false, message: "already exists"}, format: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
end
