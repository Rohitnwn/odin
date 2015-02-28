class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {maximum: 50}, uniqueness: { case_sensitive: false}
  validates :body, presence:true
end
