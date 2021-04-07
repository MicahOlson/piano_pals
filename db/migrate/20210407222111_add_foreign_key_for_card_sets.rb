class AddForeignKeyForCardSets < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :card_sets, :users
  end
end
