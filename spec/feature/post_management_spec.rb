require "rails_helper"

RSpec.feature "Post management", :type => :feature do
  include SessionTestHelper

  before do
    omni_auth_log_in_as 'test.user@digital.justice.gov.uk'
  end

  scenario "User creates a new post" do
    visit new_post_path

    fill_in "Headline", :with => "Walk at the park"
    fill_in "Detail", :with => "lets go walk at the park during lunch time"
    click_button "Create Post"

    expect(page).to have_text("Post was successfully created.")
  end



end