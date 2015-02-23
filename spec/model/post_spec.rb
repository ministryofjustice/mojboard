require 'rails_helper'

RSpec.describe Post, focus: true do
  describe 'validations' do
    it { is_expected.to validate_presence_of :posted_by}
  end
end
