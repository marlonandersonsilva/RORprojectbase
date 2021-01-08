class Animal < ApplicationRecord
  belongs_to :lesion

  has_many :animal_categories
  has_many :category, through: :animal_categories
end
