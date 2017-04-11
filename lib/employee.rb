class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_numericality_of :hourly_rate, greater_than: 40, less_than: 200
  validates :store_id, presence: true
end
