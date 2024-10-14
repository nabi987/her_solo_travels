class Location < ApplicationRecord
  belongs_to :trip
validates :country, :city, :start_date, :end_date, :activates, presence: true
validates :description, length: {minimum: 5}
end
