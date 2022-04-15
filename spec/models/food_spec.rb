require 'rails_helper'

RSpec.describe Food, type: :model do
  it '[1] has a valid factory' do
    expect(FactoryBot.build(:food)).to be_valid
  end

  it '[2] is valid with a name and a description', valid: 'main' do
    expect(FactoryBot.build(:food)).to be_valid
  end

  it '[3] is invalid without a name' do
    food = FactoryBot.build(:food, name: nil)
    food.valid?
    expect(food.errors[:name]).to include("can't be blank")
  end

  it '[4] is invalid with a duplicate name' do
    food1 = FactoryBot.create(:food, name: 'Nasi Uduk')
    food2 = FactoryBot.build(:food, name: 'Nasi Uduk')

    food2.valid?

    expect(food2.errors[:name]).to include('has already been taken')
  end

  describe 'self#by_letter' do
    context 'with matching letter' do
      it '[5] should return a sorted array of results that match' do
        food1 = FactoryBot.create(:food, name: 'Nasi Uduk')
        food2 = FactoryBot.create(:food, name: 'Nasi Bakar')
        food3 = FactoryBot.create(:food, name: 'Nasi Gila')

        expect(Food.by_letter('G')).to include([food3])
      end
    end
  end
end
