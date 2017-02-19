class User < ApplicationRecord
  has_many :posts

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  validates  :first_name, :last_name, :phone, presence: true

  def full_name
    last_name.capitalize + ", " + first_name.capitalize
  end
end
