class Card < ActiveRecord::Base
  belongs_to :deck
  
  has_attached_file :picture,
  :storage => :s3,
  :bucket => 'cvtcphotos',
  :s3_credentials =>  {
    :access_key_id => 'AKIAJXQXJXB6NC7HNZRA',
    :secret_access_key => '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'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
end
