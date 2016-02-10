class ChangeFkCategory < ActiveRecord::Migration
  def change
    remove_foreign_key :decks, :categories
    add_foreign_key :decks, :categories, on_delete: :nullify
  end
end
