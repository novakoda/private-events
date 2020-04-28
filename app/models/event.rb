class Event < ApplicationRecord
  belongs_to :host, class_name: "Event"
  has_and_belongs_to_many :attendees, class_name: "Attendee", foreign_key: "event_id", association_foreign_key: "attendee_id"
end
