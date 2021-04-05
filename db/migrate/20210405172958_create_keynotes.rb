class CreateKeynotes < ActiveRecord::Migration[5.2]
  def change
    create_table :keynotes do |t|
      t.string :mode
      t.string :keynote
      t.string :image
      t.string :audio
    end
  end
end
