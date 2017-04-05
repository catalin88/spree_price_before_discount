module Spree
  Variant.class_eval do
    with_options numericality: { greater_than: :price, allow_nil: true } do
      validates :price_before_discount
    end

    def discounted?
      price_before_discount.to_f > price.to_f
    end
  end
end
