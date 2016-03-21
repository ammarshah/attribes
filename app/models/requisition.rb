class Requisition < ActiveRecord::Base
	belongs_to :user
	has_many :items
	accepts_nested_attributes_for :items, :allow_destroy => true
	validates :request_by, presence: true
    validates :request_date, presence: true
    validates :project_name, presence: true
    validates :delivery_date, presence: true
    validates :purpose, presence: true
end
