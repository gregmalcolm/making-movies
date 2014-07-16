require 'rails_helper'

RSpec.describe "actors/index", :type => :view do
  before(:each) do
    assign(:actors, [
      Actor.create!(
        :name => "Name",
        :gender => "Gender",
        :bio => "Bio",
        :timestamps => "Timestamps"
      ),
      Actor.create!(
        :name => "Name",
        :gender => "Gender",
        :bio => "Bio",
        :timestamps => "Timestamps"
      )
    ])
  end

  it "renders a list of actors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Bio".to_s, :count => 2
    assert_select "tr>td", :text => "Timestamps".to_s, :count => 2
  end
end
