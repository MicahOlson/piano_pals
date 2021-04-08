class AddColumnToCardSets < ActiveRecord::Migration[5.2]
  def change
    add_column :card_sets, :set_name, :string
  end
end
