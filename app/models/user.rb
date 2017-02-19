class User < ApplicationRecord
  has_many :posts

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  validates  :first_name, :last_name, :phone, presence: true

  PHONE_REGEX = /\A[0-9]*\Z/

  validates_format_of :phone, with: PHONE_REGEX
  validates :phone, length: {is: 11}

  def full_name
    last_name.capitalize + ", " + first_name.capitalize
  end
end
