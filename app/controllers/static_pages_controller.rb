class StaticPagesController < ApplicationController
  
    def pricing
        @prices = Stripe::Price.list(
            lookup_keys: ['basic_month', 'basic_year'],
            expand: ['data.product']
        )
    end
end