# == Schema Information
#
# Table name: events
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :string
#  details      :text
#  organiser_id :integer
#  start_time   :time
#  end_time     :time
#  start_date   :date
#  end_date     :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Event < ActiveRecord::Base
  validates :name, :description, :details, :organiser_id, :start_time, :end_time, :start_date, :end_date, presence: true 
  belongs_to :organiser, class_name: 'User'
end
