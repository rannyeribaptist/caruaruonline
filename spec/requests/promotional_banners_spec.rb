require 'rails_helper'

RSpec.describe "PromotionalBanners", type: :request do
  describe "GET /promotional_banners" do
    it "works! (now write some real specs)" do
      get promotional_banners_path
      expect(response).to have_http_status(200)
    end
  end
end
