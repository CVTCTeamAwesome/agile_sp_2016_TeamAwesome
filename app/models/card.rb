class Card < ActiveRecord::Base
  belongs_to :deck
  
  has_attached_file :picture,
  :storage => :s3,
  :s3_credentials => S3_CREDENTIALS,
  :default_url => ""
  
  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
  
  validates_presence_of :name, :answer_text
  validates_presence_of :question_text, presence: true, unless: -> (card){card.picture.present?}
  
end
