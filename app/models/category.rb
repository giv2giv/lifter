class Category < ActiveRecord::Base
  has_many :categorization
  has_many :charity, through: :categorization
end
