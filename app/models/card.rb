class Card < ActiveRecord::Base
  belongs_to :deck
  
  has_attached_file :picture

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
end
