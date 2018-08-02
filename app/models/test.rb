class Test < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews

  validates :description, presence: true
end
