FactoryBot.define do
  factory :direction do
    name { "MyString" }
  end
end

# == Schema Information
#
# Table name: directions
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
