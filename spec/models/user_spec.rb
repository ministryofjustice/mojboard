require 'rails_helper'

RSpec.describe User, focus: true do
  describe 'has many to poster relationship' do
    it { is_expected.to have_many :posts }
  end
end
