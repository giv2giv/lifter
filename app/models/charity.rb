class Charity < ActiveRecord::Base
  has_many :categorization
  has_many :category, through: :categorization
end
