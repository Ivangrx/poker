class CreateRoms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :code
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
