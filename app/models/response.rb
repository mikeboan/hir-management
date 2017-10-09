class Response < ApplicationRecord
  validates :question, :app, :body, presence: true

  belongs_to :question
  belongs_to :app
end
