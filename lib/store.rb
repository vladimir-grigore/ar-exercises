class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates_numericality_of :annual_revenue, greater_than: 0, only_integer: true
  validate :apparel

  def apparel
    self.mens_apparel || self.womens_apparel
  end
  
end
