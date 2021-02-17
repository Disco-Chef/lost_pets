class Pet < ApplicationRecord
  SPECIES = %w(reptile feline canine bird horse)
  validates :name, presence: true
  validates :address, presence: true
  validates :species, inclusion: { in: SPECIES }

  # found_on => Date class!
  def days_ago
    (Date.today - self.found_on).to_i
  end
end
