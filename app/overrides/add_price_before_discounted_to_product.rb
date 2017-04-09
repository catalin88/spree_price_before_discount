Deface::Override.new(
  virtual_path: 'spree/admin/variants/_form',
  name: 'price_before_discount',
  insert_after: '[data-hook="price"]',
  text: "
    <div class='form-group' data-hook='price_before_discount'>
      <%= f.label :price_before_discount, Spree.t(:price_before_discount) %>
      <%= f.text_field :price_before_discount, value: number_to_currency(@variant.price_before_discount, unit: ''), class: 'form-control' %>
    </div>
  "
)


Deface::Override.new(
  virtual_path: 'spree/admin/products/_form',
  name: 'price_before_discount',
  insert_after: '[data-hook="admin_product_form_price"]',
  text: "
    <div data-hook='admin_product_form_price_before_discount'>
      <%= f.field_container :price_before_discount, class: ['form-group'] do %>
        <%= f.label :price_before_discount, raw(Spree.t(:price_before_discount)) %>
        <%= f.text_field :price_before_discount, value: number_to_currency(@product.price_before_discount, unit: ''), class: 'form-control', disabled: (cannot? :update, @product.price) %>
        <%= f.error_message_on :price_before_discount %>
      <% end %>
    </div>
  "
)
