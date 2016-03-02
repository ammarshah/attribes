class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :last_purchase_rate
      t.float :last_purchase_amount
      t.float :estimated_purchase_rate
      t.float :estimated_purchase_amount
      t.references :requisition, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
