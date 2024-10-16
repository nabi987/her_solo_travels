class Friendship < ApplicationRecord
  belongs_to :requester, class_name: "User"
  belongs_to :requestee, class_name: "User"
  has_many :messages
end
