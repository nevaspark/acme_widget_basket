# basket.rb
class Basket
  def initialize(products:, delivery_rules:, offers:)
    @products = products
    @delivery_rules = delivery_rules
    @offers = offers
    @items = []
  end

  def add(product_code)
    product = @products.find { |p| p[:code] == product_code }
    raise "Unknown product code: #{product_code}" unless product
    @items << product
  end

  def total
    subtotal = calculate_subtotal
    discount = apply_offers
    subtotal_after_discount = subtotal - discount
    delivery = calculate_delivery(subtotal_after_discount)
    (subtotal_after_discount + delivery).round(2)
  end

  private

  def calculate_subtotal
    @items.sum { |p| p[:price] }
  end

  def apply_offers
    total_discount = 0.0
    @offers.each do |offer|
      total_discount += offer.call(@items)
    end
    total_discount
  end

  def calculate_delivery(total)
    rule = @delivery_rules.find { |r| total < r[:threshold] }
    rule ? rule[:cost] : 0.0
  end
end
