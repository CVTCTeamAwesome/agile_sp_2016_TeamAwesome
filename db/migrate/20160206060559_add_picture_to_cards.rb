class AddPictureToCards < ActiveRecord::Migration
  def self.up
    add_attachment :cards, :picture
  end

  def self.down
    remove_attachment :cards, :picture
  end
end
