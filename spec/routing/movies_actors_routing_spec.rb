require "rails_helper"

RSpec.describe MoviesActorsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/movies_actors").to route_to("movies_actors#index")
    end

    it "routes to #new" do
      expect(:get => "/movies_actors/new").to route_to("movies_actors#new")
    end

    it "routes to #show" do
      expect(:get => "/movies_actors/1").to route_to("movies_actors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/movies_actors/1/edit").to route_to("movies_actors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/movies_actors").to route_to("movies_actors#create")
    end

    it "routes to #update" do
      expect(:put => "/movies_actors/1").to route_to("movies_actors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/movies_actors/1").to route_to("movies_actors#destroy", :id => "1")
    end

  end
end
