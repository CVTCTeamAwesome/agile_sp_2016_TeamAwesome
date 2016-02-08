class Deck < ActiveRecord::Base
  has_many :cards
  has_one :categories
  belongs_to :category
  validates_presence_of :title
end
