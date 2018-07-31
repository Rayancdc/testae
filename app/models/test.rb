class Test < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :reviews
  has_many :users, through: :reviews
end
