class AddUserToRequisition < ActiveRecord::Migration
  def change
    add_column :requisitions, :user_id, :integer
  end
end
