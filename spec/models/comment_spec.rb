# == Schema Information
#
# Table name: comments
#
#  id            :integer          not null, primary key
#  comment_input :text
#  post_id       :integer
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'validations' do
    # it { is_expected.to validate_presence_of :comment_id }

    it { is_expected.to validate_presence_of :comment_input }

    it { is_expected.to validate_presence_of :user_id }

    it { is_expected.to validate_presence_of :post_id }
  end

  describe 'belongs to post relationship' do
    it { is_expected.to belong_to :post}
  end

  describe 'belongs to user relationship' do
    it { is_expected.to belong_to :user}
  end
end
