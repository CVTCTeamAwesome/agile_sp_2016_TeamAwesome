class Deck < ActiveRecord::Base
  has_many :cards, :dependent => :delete_all
  has_one :categories
  belongs_to :category
  validates_presence_of :title
  
  default_scope {order('last_modified DESC')}

end
