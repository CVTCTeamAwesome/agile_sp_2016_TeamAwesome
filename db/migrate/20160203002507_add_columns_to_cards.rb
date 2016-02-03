class AddColumnsToCards < ActiveRecord::Migration
  def change
    add_column :cards, :name, :string
    add_column :cards, :question_text, :string
    add_column :cards, :answer_text, :text
    add_column :cards, :background_color, :text
    add_column :cards, :foreground_color, :text
    add_column :cards, :font_size, :text
    add_column :cards, :font_style, :text
  end
end
