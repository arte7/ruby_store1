require "rails_helper"

RSpec.describe ProductsController do
  describe "GET Index" do
    it "has correct HTTP status" do
      get 'index'
      expect(response).to have_http_status(200)
    end
  end

  describe "create product" do
    it "successfully creates a product"do
      get 'index'

    end
  end
end
