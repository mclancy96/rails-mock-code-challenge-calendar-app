class Event < ApplicationRecord
  has_many :reminders
  accepts_nested_attributes_for :reminders
  validates :title, :date, presence: true 
  validates :reminders, length: { minimum: 1 }
end
