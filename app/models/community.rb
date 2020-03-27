class Community < ApplicationRecord
  validates_presence_of :url, :name, :rules
  
  belongs_to :account
  has_many :posts
end
