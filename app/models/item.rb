class Item < ActiveRecord::Base
  belongs_to :requisition
    validates :name, presence: true
    validates :last_purchase_rate, presence: true
    validates :last_purchase_amount, presence: true
    validates :estimated_purchase_rate, presence: true
    validates :estimated_purchase_amount, presence: true
end
