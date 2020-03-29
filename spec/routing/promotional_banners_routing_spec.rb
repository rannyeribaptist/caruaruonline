require "rails_helper"

RSpec.describe PromotionalBannersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/promotional_banners").to route_to("promotional_banners#index")
    end

    it "routes to #new" do
      expect(:get => "/promotional_banners/new").to route_to("promotional_banners#new")
    end

    it "routes to #show" do
      expect(:get => "/promotional_banners/1").to route_to("promotional_banners#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/promotional_banners/1/edit").to route_to("promotional_banners#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/promotional_banners").to route_to("promotional_banners#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/promotional_banners/1").to route_to("promotional_banners#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/promotional_banners/1").to route_to("promotional_banners#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/promotional_banners/1").to route_to("promotional_banners#destroy", :id => "1")
    end
  end
end
