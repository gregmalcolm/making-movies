require 'rails_helper'

RSpec.describe "movies_actors/show", :type => :view do
  before(:each) do
    @movies_actor = assign(:movies_actor, MoviesActor.create!(
      :belongs_to => "",
      :belongs_to => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
