FactoryBot.define do
  factory :food do
    name { 'Nasi Default' }
    description { 'Default rice with default dish' }
    price { 10_000.0 }
  end

  factory :invalid_food, parent: :food do
    name { nil }
    description { nil }
    price { 1000.0 }
  end
end
