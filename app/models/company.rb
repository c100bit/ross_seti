class Company < ApplicationRecord
  has_many :proposals
  has_many :departments
  has_many :users, through: :departments
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
