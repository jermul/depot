class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :order_id, :updated_at, :created_at, :quantity, :cart, :product, :price
  belongs_to :order
  belongs_to :product
  belongs_to :cart
  
  def total_price 
  	product.price * quantity
  end
end
