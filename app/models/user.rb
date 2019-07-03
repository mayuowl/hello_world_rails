class User < ApplicationRecord
  validates :account, presence: true
  validates :account, uniqueness: true

  has_many :articles
  has_many :user_communities
  has_many :communities, through: :user_communities
  has_one :user_detail

end
