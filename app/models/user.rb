class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  include GraphqlDevise::Concerns::Model

  enum role: %i[worker expert moderator admin]

  belongs_to :department
  has_and_belongs_to_many :proposals
  has_one :company, through: :department

  # validates :email, presence: true
  # validates :password, presence: true

  def admin?
    role == 'admin'
  end

  def moderator?
    role == 'moderator'
  end

  def worker?
    role == 'worker'
  end

  def expert?
    role == 'expert'
  end
end

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  allow_password_change  :boolean          default(FALSE)
#  birth_year             :integer
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  education              :string
#  email                  :string
#  encrypted_password     :string           default(""), not null
#  experience_years       :integer
#  failed_attempts        :integer          default(0), not null
#  first_name             :string
#  last_name              :string
#  locked_at              :datetime
#  middle_name            :string
#  position               :string
#  provider               :string           default("email"), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  role                   :integer          default("worker"), not null
#  tokens                 :json
#  uid                    :string           default(""), not null
#  unconfirmed_email      :string
#  unlock_token           :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  department_id          :bigint           not null
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_department_id         (department_id)
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_uid_and_provider      (uid,provider) UNIQUE
#  index_users_on_unlock_token          (unlock_token) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (department_id => departments.id)
#
