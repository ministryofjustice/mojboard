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

require 'rails_helper'

RSpec.describe User, focus: true do
  describe 'has many to poster relationship' do
    it { is_expected.to have_many :posts }
  end

  describe 'has many to comment relationship' do
    it { is_expected.to have_many :comments }
  end

  describe 'has many to comment relationship' do
    it { is_expected.to have_many :events }
  end
end
