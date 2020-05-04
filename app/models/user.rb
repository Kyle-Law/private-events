class User < ApplicationRecord
  has_many :registrations, dependent: :destroy
  has_many :events, foreign_key: :creator_id
  validates :username, presence: true

  def upcoming_events
    registrations.select { |r| r.event.date > Time.now }
  end

  def previous_events
    registrations.select { |r| r.event.date < Time.now }
  end
end
