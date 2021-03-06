# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  headline   :string
#  detail     :text
#  created_at :datetime
#  updated_at :datetime
#  poster_id  :integer
#

require 'rails_helper'

RSpec.describe Post, focus: true do
  describe 'validations' do
    it { is_expected.to validate_presence_of :poster_id }

    it { is_expected.to validate_presence_of :detail }

    describe '#headline' do
      context 'when it is empty' do
        subject { described_class.new }

        before { subject.valid? }

        it 'adds is not valid?' do
          expect(subject).not_to be_valid
        end

        it 'adds an error to the attribute' do
          expect(subject.errors[:headline]).to include "can't be blank"
        end
      end
    end
  end

  describe 'belongs to poster relationship' do
    it { is_expected.to belong_to :poster}
  end
  
  describe 'has many to comment relationship' do
    it { is_expected.to have_many :comments }
  end
end
