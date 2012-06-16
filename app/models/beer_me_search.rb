class BeerMeSearch < ActiveRecord::Base
  attr_accessible :acidic, :banana, :belgian, :bitter, :caramel, :chocolate, :citrus, :clean, :cloves, :coffee, :creamy, :crisp, :earthy, :floral, :fruity, :grapefruit, :hoppy, :lemon, :malty, :nutty, :pine, :rich, :smoky, :smooth, :sour, :spicy, :style, :sweet, :tart, :toffee, :vanilla, :wheat, :bar_id, :member_id, :rarity, :draft, :available_beer

  belongs_to :bar
  belongs_to :member
end
