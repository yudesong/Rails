class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :product_id
      t.string :cart_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
