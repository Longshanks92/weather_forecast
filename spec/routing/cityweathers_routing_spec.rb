require "rails_helper"

RSpec.describe CityweathersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cityweathers").to route_to("cityweathers#index")
    end

    it "routes to #new" do
      expect(:get => "/cityweathers/new").to route_to("cityweathers#new")
    end

    it "routes to #show" do
      expect(:get => "/cityweathers/1").to route_to("cityweathers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cityweathers/1/edit").to route_to("cityweathers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cityweathers").to route_to("cityweathers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cityweathers/1").to route_to("cityweathers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cityweathers/1").to route_to("cityweathers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cityweathers/1").to route_to("cityweathers#destroy", :id => "1")
    end

  end
end
