class Meeting < ApplicationRecord
  validates :title, presence: true
  validates :time, presence: true
  validates :location, presence: true

  belongs_to :speaker
end
