class Location < ApplicationRecord
  belongs_to :trip
  validates :country, :city, :start_date, :end_date, :activites, presence: true
  validates :activites, length: { minimum: 5 }
end
