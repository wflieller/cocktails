class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name, null: false 
      t.text :directions, null: false
      t.string :picture
      t.references :user, index: true, null: false
      t.timestamps null: false
    end
  end
end
