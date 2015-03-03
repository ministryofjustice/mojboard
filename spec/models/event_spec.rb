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

require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :name }

    it { is_expected.to validate_presence_of :description }

    it { is_expected.to validate_presence_of :details }

    it { is_expected.to validate_presence_of :organiser_id }

    it { is_expected.to validate_presence_of :start_time }

    it { is_expected.to validate_presence_of :end_time }
    
    it { is_expected.to validate_presence_of :start_date }

    it { is_expected.to validate_presence_of :end_date }
  end

  describe 'belongs to user relationship' do
    it { is_expected.to belong_to :organiser}
  end

  describe 'belongs to users relationship' do
    it { is_expected.to have_and_belong_to_many :attendees}
  end
end
