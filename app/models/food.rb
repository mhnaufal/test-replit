class Food < ApplicationRecord
  def self.by_letter(letter)
    where('name like ?', "#{letter}%").order(:name)
  end
end
