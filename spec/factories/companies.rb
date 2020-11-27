FactoryBot.define do
  factory :company do
    number { 1 }
    name { "MyString" }
  end
end

# == Schema Information
#
# Table name: companies
#
#  id         :bigint           not null, primary key
#  name       :string
#  number     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
