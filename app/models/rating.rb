class Rating < ApplicationRecord
  belongs_to :toy
  validates :score, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
     validates :score, presence: true
end
