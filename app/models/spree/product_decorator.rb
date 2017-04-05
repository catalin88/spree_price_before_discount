module Spree
  Product.class_eval do
    delegate_belongs_to :master, :price_before_discount, :discounted?
  end
end
