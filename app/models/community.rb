class Community < ApplicationRecord
  belongs_to :account
  has_many :posts
end
