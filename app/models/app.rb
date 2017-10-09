class App < ApplicationRecord
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true

  has_many :responses
  accepts_nested_attributes_for :responses
end
