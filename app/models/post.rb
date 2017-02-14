class Post < ApplicationRecord
  belongs_to :user
  validates :date, :rationale, presence: true
  enum status: { submitted: 0, approved: 1, rejected: 2}

  scope :posts_by, ->(user) { where(user_id: user.id) }
end
