# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  first_name :string
#  last_name  :string
#

class User < ActiveRecord::Base
  has_many :posts, foreign_key: :poster_id
  has_many :comments
  has_many :organised_events, class_name: 'Event', foreign_key: :organiser_id
  has_and_belongs_to_many :attended_events, class_name: 'Event', join_table: 'attendees_events', foreign_key: :event_id

  def name
    "#{first_name} #{last_name}"
  end
end
