class Sale < ApplicationRecord
  belongs_to :toy
  has_and_belongs_to_many :suppliers
end
