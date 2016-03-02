class CreateRequisitions < ActiveRecord::Migration
  def change
    create_table :requisitions do |t|
      t.string :request_by
      t.date :request_date
      t.string :project_name
      t.date :delivery_date
      t.string :purpose

      t.timestamps null: false
    end
  end
end
