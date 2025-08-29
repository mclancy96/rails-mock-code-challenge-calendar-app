class Reminder < ApplicationRecord
  belongs_to :event
  has_many :notifications
end
