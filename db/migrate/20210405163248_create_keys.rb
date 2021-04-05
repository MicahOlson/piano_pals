class CreateKeys < ActiveRecord::Migration[5.2]
  def change
    create_table :keys do |t|
      t.string :mode
      t.string :key
      t.string :image
      t.string :audio
    end
  end
end
