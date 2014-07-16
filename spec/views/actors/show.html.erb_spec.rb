require 'rails_helper'

RSpec.describe "actors/show", :type => :view do
  before(:each) do
    @actor = assign(:actor, Actor.create!(
      :name => "Name",
      :gender => "Gender",
      :bio => "Bio",
      :timestamps => "Timestamps"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Bio/)
    expect(rendered).to match(/Timestamps/)
  end
end
