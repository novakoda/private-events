class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :hosted_events, class_name: "Event", foreign_key: "host_id"
  has_and_belongs_to_many :attended_events, class_name: "Event"

  def previous_events
    self.attended_events.where("date < ?", Time.zone.now)
  end

  def upcoming_events
    self.attended_events.where("date > ?", Time.zone.now)
  end

end
