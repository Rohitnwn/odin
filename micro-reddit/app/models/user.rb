class User < ActiveRecord::Base
  has_many :posts
  has_many :comments, through: :posts
  validates :name, presence: true, length: { maximum: 25}
  validates :email, presence: true, confirmation: true,uniqueness: { case_sensitive: false}
  validates :email_confirmation, presence: true
end
