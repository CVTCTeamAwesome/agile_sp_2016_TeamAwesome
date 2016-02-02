class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :title
      t.text :description
      t.datetime :creation_date
      t.datetime :last_modified

      t.timestamps null: false
    end
  end
end
