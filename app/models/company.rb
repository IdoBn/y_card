class Company < ActiveRecord::Base
	has_many :taggings
	has_many :tags, through: :taggings

	include PgSearch
	pg_search_scope :search, against: [:name, :description],
  	using: {tsearch: {dictionary: "english"}},
  	associated_against: {tags: :name},
  	ignoring: :accents
end
