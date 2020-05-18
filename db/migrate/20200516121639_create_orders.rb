class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.decimal :total
      t.decimal :subtotal

      t.timestamps
    end
  end
end
