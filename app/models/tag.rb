class Tag < ActiveRecord::Base
	has_many :taggings
	has_many :companies, through: :taggings
end
