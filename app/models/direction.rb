class Direction < ApplicationRecord
  has_many :themes
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
