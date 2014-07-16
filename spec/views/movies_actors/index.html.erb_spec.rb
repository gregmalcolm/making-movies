require 'rails_helper'

RSpec.describe "movies_actors/index", :type => :view do
  before(:each) do
    assign(:movies_actors, [
      MoviesActor.create!(
        :belongs_to => "",
        :belongs_to => ""
      ),
      MoviesActor.create!(
        :belongs_to => "",
        :belongs_to => ""
      )
    ])
  end

  it "renders a list of movies_actors" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
