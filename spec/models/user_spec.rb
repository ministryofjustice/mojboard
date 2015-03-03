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

  describe 'has many to events relationship' do
    it { is_expected.to have_many :organised_events }
  end

  describe 'has many and belong to many events relationship' do
    it { is_expected.to have_and_belong_to_many :attended_events }
  end
end



# user = FactoryGirl.create(:user)
# p1 = FactoryGirl.create(:post, :user_id = user.id)
# p2 = FactoryGirl.create(:post, :user_id = user.id + 1)
# p3 = FactoryGirl.create(:post, :user_id = user.id)
# expect(user.posts).to eq( [ p1, p3] )