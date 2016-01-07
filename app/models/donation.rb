class Donation < ActiveRecord::Base
  belongs_to :user
  belongs_to :charity

  validates :user_id, presence: true
  validates :amount, presence: true
  validates :charity_id, presence: true

  default_scope -> {order(created_at: :desc)}
end
