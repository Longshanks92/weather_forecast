require 'rails_helper'

RSpec.describe "Cityweathers", type: :request do
  describe "GET /cityweathers" do
    it "works! (now write some real specs)" do
      get cityweathers_path
      expect(response).to have_http_status(200)
    end
  end
end
