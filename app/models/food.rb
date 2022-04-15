class Food < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  
  def self.by_letter(letter)
    where('name LIKE ?', "%#{letter}%")
  end
end
