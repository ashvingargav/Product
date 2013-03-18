class CreateProduct1s < ActiveRecord::Migration
  def change
    create_table :product1s do |t|
      t.string :name
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
