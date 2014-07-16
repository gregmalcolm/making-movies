require 'rails_helper'

RSpec.describe "actors/edit", :type => :view do
  before(:each) do
    @actor = assign(:actor, Actor.create!(
      :name => "MyString",
      :gender => "MyString",
      :bio => "MyString",
      :timestamps => "MyString"
    ))
  end

  it "renders the edit actor form" do
    render

    assert_select "form[action=?][method=?]", actor_path(@actor), "post" do

      assert_select "input#actor_name[name=?]", "actor[name]"

      assert_select "input#actor_gender[name=?]", "actor[gender]"

      assert_select "input#actor_bio[name=?]", "actor[bio]"

      assert_select "input#actor_timestamps[name=?]", "actor[timestamps]"
    end
  end
end
