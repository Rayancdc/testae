class Review < ApplicationRecord
  belongs_to :test
  belongs_to :user

  validates :issue_description, presence: true, length: { minimum: 50, message: "need a minimun of 50 characters. Please be more descriptive." }
  validates :issue_score, presence: true, inclusion: { in: [1, 2, 3, 4, 5], message: "must be a number between 1 and 5" }
  validates :user_agent, presence: true

  mount_uploader :screenshot, ImageUploader
end
