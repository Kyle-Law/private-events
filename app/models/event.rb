class Event < ApplicationRecord
  has_many :registrations, dependent: :destroy
  belongs_to :creator, class_name: 'User'

  scope :past, -> { where('date < ?', Time.now).order('date desc') }
  scope :upcoming, -> { where('date > ?', Time.now).order('date asc') }
  validates :title, :date, presence: true
  validates :description, length: { minimum: 10 }
end
