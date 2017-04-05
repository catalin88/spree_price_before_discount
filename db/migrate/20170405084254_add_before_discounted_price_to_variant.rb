class AddBeforeDiscountedPriceToVariant < ActiveRecord::Migration
  def change
    add_column :spree_variants, :price_before_discount, :decimal,
               precision: 8, scale: 2
  end
end
