class Beer < ActiveRecord::Base
  attr_accessible :abv, :brewer_id, :ibu, :name, :srm, :style, :acidic, :clean, :creamy, :crisp, :hoppy, :malty, :rich, :smooth, :bitter, :earthy, :sour, :spicy, :sweet, :tart, :banana, :caramel, :citrus, :chocolate, :cloves, :coffee, :floral, :fruity, :grapefruit, :lemon, :nutty, :pine, :smoky, :toffee, :vanilla, :wheat, :belgian
  
  belongs_to :brewery
end
