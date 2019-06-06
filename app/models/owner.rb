class Owner < ApplicationRecord
  has_many :pets

  def to_full
    self.first_name + " " + self.last_name
  end
end
