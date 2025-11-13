# example.rb
require_relative "basket"
require_relative "products"
require_relative "delivery_rules"
require_relative "offers"

basket = Basket.new(
  products: PRODUCTS,
  delivery_rules: DELIVERY_RULES,
  offers: [Offers::RED_WIDGET_HALF_PRICE]
)

def test_case(items)
  basket = Basket.new(products: PRODUCTS, delivery_rules: DELIVERY_RULES, offers: [Offers::RED_WIDGET_HALF_PRICE])
  items.each { |code| basket.add(code) }
  puts "#{items.join(', ')} -> $#{basket.total}"
end

test_case(%w[B01 G01])
test_case(%w[R01 R01])
test_case(%w[R01 G01])
test_case(%w[B01 B01 R01 R01 R01])
