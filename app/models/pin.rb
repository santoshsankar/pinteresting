class Pin < ActiveRecord::Base
	belongs_to :user #belongs_to association must use singular term. Using plural will most likely kick back an error
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100"}
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

	validates :image, presence: true
  validates :description, presence: true
end
