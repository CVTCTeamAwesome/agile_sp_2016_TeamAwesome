class UpdateVisibleToDefaultToTrue < ActiveRecord::Migration
  def change
    change_column_default(:cards, :visible, true)
  end
end
