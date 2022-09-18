class Question < ApplicationRecord
  validates :name, presence: true
  has_many :choices
end
