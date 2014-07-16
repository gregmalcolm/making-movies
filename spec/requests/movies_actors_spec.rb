require 'rails_helper'

RSpec.describe "MoviesActors", :type => :request do
  describe "GET /movies_actors" do
    it "works! (now write some real specs)" do
      get movies_actors_path
      expect(response.status).to be(200)
    end
  end
end
