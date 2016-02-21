class Deck < ActiveRecord::Base
  has_many :cards, :dependent => :delete_all
  has_one :categories
  belongs_to :category
  belongs_to :user
  validates_presence_of :title
  
  default_scope {order('last_modified DESC')}

end
