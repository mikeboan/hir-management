class Response < ApplicationRecord
  validates :question, :application, :body, presence: true

  belongs_to :question
  belongs_to :application
end
