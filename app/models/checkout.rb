class Checkout < ActiveRecord::Base
  belongs_to :book
  belongs_to :reader

  validates :due_date, presence: true
end
