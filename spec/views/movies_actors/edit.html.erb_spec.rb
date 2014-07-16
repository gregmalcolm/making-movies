require 'rails_helper'

RSpec.describe "movies_actors/edit", :type => :view do
  before(:each) do
    @movies_actor = assign(:movies_actor, MoviesActor.create!(
      :belongs_to => "",
      :belongs_to => ""
    ))
  end

  it "renders the edit movies_actor form" do
    render

    assert_select "form[action=?][method=?]", movies_actor_path(@movies_actor), "post" do

      assert_select "input#movies_actor_belongs_to[name=?]", "movies_actor[belongs_to]"

      assert_select "input#movies_actor_belongs_to[name=?]", "movies_actor[belongs_to]"
    end
  end
end
