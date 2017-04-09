class AddBeforeDiscountedPriceToLineItem < ActiveRecord::Migration
  def change
    add_column :spree_line_items, :price_before_discount, :decimal,
               precision: 8, scale: 2
  end
end
