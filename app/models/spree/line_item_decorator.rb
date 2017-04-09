module Spree
  LineItem.class_eval do
    with_options numericality: { allow_nil: true } do
      validates :price_before_discount
    end

    before_validation :update_price_before_discount

    protected

    def update_price_before_discount
      self.price_before_discount = variant.price_before_discount
    end
  end
end
