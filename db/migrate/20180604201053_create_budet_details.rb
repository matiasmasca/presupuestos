class CreateBudetDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :budet_details do |t|
      t.references :budget, foreign_key: true
      t.references :product, foreign_key: true
      t.decimal :amount
      t.decimal :unit_price
      t.decimal :subtotal

      t.timestamps
    end
  end
end
