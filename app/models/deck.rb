class Deck < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :category
  
  has_one :categories
  has_many :cards, :dependent => :delete_all
  
  validates_presence_of :title
  
  default_scope {order('last_modified DESC')}
  
  def share
    self.slug = SecureRandom.urlsafe_base64
  end
  
  def unshare
    self.slug = nil
  end
  
end
