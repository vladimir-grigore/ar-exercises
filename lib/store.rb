class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates_numericality_of :annual_revenue, greater_than: 0, only_integer: true
  validate :apparel
  before_destroy :check_if_has_employees

  private

  def apparel
    unless self.mens_apparel || self.womens_apparel
      errors.add(:mens_apparel, "must either sell mens or womens apparrel")
      errors.add(:womens_apparel, "must either sell mens or womens apparrel")
    end
  end

  def check_if_has_employees
    false if Employee.find_by(store_id: self.id)
  end
  
end
