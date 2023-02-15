# frozen_string_literal: true

module SolidusBraintree
  class ContentController < StoreController
    respond_to :html

    def cvv
      render layout: false
    end
  end
end
