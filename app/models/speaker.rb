class Speaker < ApplicationRecord
  validates :first_name, presence: true
  validates :lastname, presence: true
  validates :email, presence: true

  has_many :meetings
end
