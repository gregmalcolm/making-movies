require 'rails_helper'

RSpec.describe "movies_actors/new", :type => :view do
  before(:each) do
    assign(:movies_actor, MoviesActor.new(
      :belongs_to => "",
      :belongs_to => ""
    ))
  end

  it "renders new movies_actor form" do
    render

    assert_select "form[action=?][method=?]", movies_actors_path, "post" do

      assert_select "input#movies_actor_belongs_to[name=?]", "movies_actor[belongs_to]"

      assert_select "input#movies_actor_belongs_to[name=?]", "movies_actor[belongs_to]"
    end
  end
end
