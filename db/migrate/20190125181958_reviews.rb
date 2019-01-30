class Reviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.string :title, null: false
      t.string :description, null: false
      t.belongs_to :artist, null: false
    end
  end
end
