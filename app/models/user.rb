class User < ApplicationRecord
  has_many :scores

  validates :username, presence: true
  validates :username, length: { is: 3 }
end
