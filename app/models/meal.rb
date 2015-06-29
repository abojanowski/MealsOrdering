class Meal < ActiveRecord::Base
  has_many :order_items
  VALID_EMAIL_REGEX = /\A([A-Z][^\d\W]|[-])/
  validates :name, presence: true, uniqueness: {case_sensitive: false},
  								 format: {with: VALID_EMAIL_REGEX}

  default_scope { where(active: true) }
end
