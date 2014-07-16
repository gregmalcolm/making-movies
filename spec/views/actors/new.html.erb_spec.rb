require 'rails_helper'

RSpec.describe "actors/new", :type => :view do
  before(:each) do
    assign(:actor, Actor.new(
      :name => "MyString",
      :gender => "MyString",
      :bio => "MyString",
      :timestamps => "MyString"
    ))
  end

  it "renders new actor form" do
    render

    assert_select "form[action=?][method=?]", actors_path, "post" do

      assert_select "input#actor_name[name=?]", "actor[name]"

      assert_select "input#actor_gender[name=?]", "actor[gender]"

      assert_select "input#actor_bio[name=?]", "actor[bio]"

      assert_select "input#actor_timestamps[name=?]", "actor[timestamps]"
    end
  end
end
