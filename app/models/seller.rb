class Seller < ActiveRecord::Base
	has_many :gigs
	validates :name, presence: true,
                    length: { minimum: 5 }
end
