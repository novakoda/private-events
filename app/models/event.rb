class Event < ApplicationRecord
  belongs_to :host, class_name: "User", foreign_key: "host_id"

  has_and_belongs_to_many :attendees, class_name: "User"

  def self.past
    where("date < ?", Time.zone.now)
  end

  def self.upcoming
    where("date > ?", Time.zone.now)
  end

end
