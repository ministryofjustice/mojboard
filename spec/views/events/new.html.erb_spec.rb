require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :name => "MyString",
      :description => "MyString",
      :details => "MyText",
      :organiser_id => 1
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_description[name=?]", "event[description]"

      assert_select "textarea#event_details[name=?]", "event[details]"

      assert_select "input#event_organiser_id[name=?]", "event[organiser_id]"
    end
  end
end
