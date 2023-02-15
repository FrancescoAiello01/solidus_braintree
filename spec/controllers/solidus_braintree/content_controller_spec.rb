# frozen_string_literal: true

require 'solidus_braintree_helper'

RSpec.describe SolidusBraintree::ContentController, type: :controller do
  routes { SolidusBraintree::Engine.routes }

  it "displays the CVV page" do
    get :cvv
    expect(response.response_code).to eq(200)
  end
end
