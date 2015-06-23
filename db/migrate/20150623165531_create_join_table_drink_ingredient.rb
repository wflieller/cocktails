class CreateJoinTableDrinkIngredient < ActiveRecord::Migration
  def change
    create_join_table :drinks, :ingredients do |t|
      t.index [:drink_id, :ingredient_id]
      t.index [:ingredient_id, :drink_id]
    end
  end
end
