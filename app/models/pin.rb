class Pin < ActiveRecord::Base
	belongs_to :user #belongs_to association must use singular term. Using plural will most likely kick back an error
end
