class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Friend requests the user has sent
  has_many :sent_friendships, class_name: 'Friendship', foreign_key: 'requester_id', dependent: :destroy

  # Friend requests the user has received
  has_many :received_friendships, class_name: 'Friendship', foreign_key: 'requestee_id', dependent: :destroy

  # Optional: Get all friends (users connected by friendships)
  has_many :friends, -> { where(friendships: { status: :accepted }) }, through: :sent_friendships, source: :requestee
  has_many :friendships
  has_many :trips
  has_many :locations, through: :trips
  has_one_attached :photo
  has_many :messages
end
