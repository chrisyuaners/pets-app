class Owner < ApplicationRecord
  has_many :pets
  validates :first_name, uniqueness: true
  validate :valid_age


  def to_full
    self.first_name + " " + self.last_name
  end

  def valid_age
    if self.age < 18
      errors.add(:age, "must be over 18 to be an owner.")
    end
  end
end
