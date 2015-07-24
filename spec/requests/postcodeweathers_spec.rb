require 'rails_helper'

RSpec.describe "Postcodeweathers", type: :request do
  describe "GET /postcodeweathers" do
    it "works! (now write some real specs)" do
      get postcodeweathers_path
      expect(response).to have_http_status(200)
    end
  end
end
