require "rails_helper"

RSpec.describe PostcodeweathersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/postcodeweathers").to route_to("postcodeweathers#index")
    end

    it "routes to #new" do
      expect(:get => "/postcodeweathers/new").to route_to("postcodeweathers#new")
    end

    it "routes to #show" do
      expect(:get => "/postcodeweathers/1").to route_to("postcodeweathers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/postcodeweathers/1/edit").to route_to("postcodeweathers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/postcodeweathers").to route_to("postcodeweathers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/postcodeweathers/1").to route_to("postcodeweathers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/postcodeweathers/1").to route_to("postcodeweathers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/postcodeweathers/1").to route_to("postcodeweathers#destroy", :id => "1")
    end

  end
end
