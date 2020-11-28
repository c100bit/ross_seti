FactoryBot.define do
  factory :theme do
    text { "MyText" }
    title { "MyString" }
  end
end

# == Schema Information
#
# Table name: themes
#
#  id           :bigint           not null, primary key
#  text         :text
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  direction_id :bigint           not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_themes_on_direction_id  (direction_id)
#  index_themes_on_user_id       (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (direction_id => directions.id)
#  fk_rails_...  (user_id => users.id)
#
