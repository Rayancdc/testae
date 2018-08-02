class Test < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews

  validates :description, presence: true, length: { minimum: 50, message: "need a minimun of 50 characters. Please be more descriptive." }
  validates :website, presence: true
  validates :review_price_cents, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 10 }
  validates :issue_price_cents, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1000 }
end
