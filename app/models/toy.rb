class Toy < ApplicationRecord
  belongs_to :toy_type
  has_many :prices
  attr_accessor :total_worth
  has_one :inventory
  has_many :sales
  has_many :ratings
  has_and_belongs_to_many :suppliers
end

