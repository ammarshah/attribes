class Requisition < ActiveRecord::Base
	has_many :items
end
