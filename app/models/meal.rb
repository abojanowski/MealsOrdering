class Meal < ActiveRecord::Base
  has_many :order_items
  VALID_EMAIL_REGEX = /[\A[A-Z]a-zA-Z]\d/
  validates :name, presence: true, uniqueness: {case_sensitive: false},
  								 format: {with: VALID_EMAIL_REGEX}

  default_scope { where(active: true) }
end
