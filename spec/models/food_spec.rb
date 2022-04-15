require 'rails_helper'

RSpec.describe Food, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:food)).to be_valid
  end
end
