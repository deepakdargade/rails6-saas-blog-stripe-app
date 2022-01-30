class StaticPagesController < ApplicationController
    before_action :set_post, only: %i[ show edit update destroy ]
  
    def pricing
        @prices = Stripe::Price.list(
            lookup_keys: ['basic_month', 'basic_year'],
            expand: ['data.product']
        )
    end
end