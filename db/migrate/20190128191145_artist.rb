class Artists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :parlor_name
      #user photo
      #validates :date_of_birth, presence: true
      #artist description
      #validates :rating, presence: true
    end
  end
end
