require 'rails_helper'

RSpec.describe "Actors", :type => :request do
  describe "GET /actors" do
    it "works! (now write some real specs)" do
      get actors_path
      expect(response.status).to be(200)
    end
  end
end
