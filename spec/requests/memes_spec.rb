require 'rails_helper'

RSpec.describe "Memes", :type => :request do
  describe "GET /memes" do
    it "works! (now write some real specs)" do
      get memes_path
      expect(response).to have_http_status(200)
    end
  end
end
