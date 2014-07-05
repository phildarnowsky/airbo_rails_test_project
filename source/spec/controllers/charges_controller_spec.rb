require 'spec_helper'

describe ChargesController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
      expect(response.status).to eq(200)
    end
  end

end
