class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.boolean :alcoholic, null: false
      t.string :name, null: false
      t.string :brand
    end
  end
end
