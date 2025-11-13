# offers.rb
module Offers
  RED_WIDGET_HALF_PRICE = lambda do |items|
    red_widgets = items.select { |p| p[:code] == "R01" }
    count = red_widgets.size
    pairs = count / 2
    pairs * (red_widgets.first[:price] / 2.0)
  end
end
