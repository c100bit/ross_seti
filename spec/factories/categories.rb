FactoryBot.define do
  factory :category do
    title { "MyString" }
  end
end

# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
