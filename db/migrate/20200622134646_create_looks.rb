class CreateLooks < ActiveRecord::Migration[6.0]
  def change
    create_table :looks do |t|
      t.string :Name
      t.string :Ingredients
      t.integer :Loves

      t.timestamps
    end
  end
end
