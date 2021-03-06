class Event < ApplicationRecord
  belongs_to :user

  has_many :attendances
  has_many :users, through: :attendances

  validates :user_id, presence: true
  #validates :start_date, presence: true
  #validates :duration, presence: true
  validates :title, presence: true, length: {in: 5..140}
  validates :description, presence: true, length: {in: 20..1000}
  #validates :price, presence: true, inclusion: 1..1000
  #validates :location, presence: true

  end