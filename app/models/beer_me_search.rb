class BeerMeSearch < ActiveRecord::Base
  attr_accessible :acidic, :banana, :belgian, :bitter, :caramel, :chocolate, :citrus, :clean, :cloves, :coffee, :creamy, :crisp, :earthy, :floral, :fruity, :grapefruit, :hoppy, :lemon, :malty, :nutty, :pine, :rich, :smoky, :smooth, :sour, :spicy, :style, :sweet, :tart, :toffee, :vanilla, :wheat
end
# available_characteristics = { acidic => 'Acidic', clean => 'Clean', creamy => 'Creamy', crisp => 'Crisp', 
#   hoppy => 'Hoppy', malty => 'Malty', rich => 'Rich', smooth => 'Smooth', bitter => 'Bitter', 
#   earthy => 'Earthy', sour => 'Sour', spicy => 'Spicy', sweet => 'Sweet', tart => 'Tart', 
#   banana => 'Banana', caramel => 'Caramel', citrus => 'Citrus', chocolate => 'Chocolate',
#   cloves => 'Cloves', coffee => 'Coffee', floral => 'Floral', fruity => 'Fruity', 
#   grapefruit => 'Grapefruit', lemon => 'Lemon', nutty => 'Nutty', pine => 'Pine', smoky => 'Smoky',
#   toffee => 'Toffee', vanilla => 'Vanilla', wheat => 'Wheat', belgian => 'Belgian' }