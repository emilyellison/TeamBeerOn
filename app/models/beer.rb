class Beer < ActiveRecord::Base
  attr_accessible :abv, :brewery_id, :ibu, :name, :srm, :style, :acidic, :clean, :creamy, :crisp, :hoppy, :malty, :rich, :smooth, :bitter, :earthy, :sour, :spicy, :sweet, :tart, :banana, :caramel, :citrus, :chocolate, :cloves, :coffee, :floral, :fruity, :grapefruit, :lemon, :nutty, :pine, :smoky, :toffee, :vanilla, :wheat, :belgian
  
  belongs_to :brewery
  
  def characteristics
    available_characteristics = { 'Acidic' => acidic, 'Clean' => clean, 'Creamy' => creamy, 'Crisp' => crisp, 
      'Hoppy' => hoppy, 'Malty' => malty, 'Rich' => rich, 'Smooth' => smooth, 'Bitter' => bitter, 'Earthy' => earthy,
      'Sour' => sour, 'Spicy' => spicy, 'Sweet' => sweet, 'Tart' => tart, 'Banana' => banana, 'Caramel' => caramel, 
      'Citrus' => citrus, 'Chocolate' => chocolate, 'Cloves' => cloves, 'Coffee' => coffee, 'Floral' => floral,
      'Fruity' => fruity, 'Grapefruit' => grapefruit, 'Lemon' => lemon, 'Nutty' => nutty, 'Pine' => pine,
      'Smoky' => smoky, 'Toffee' => toffee, 'Vanilla' => vanilla, 'Wheat' => wheat, 'Belgian' => belgian }
    has_characteristics = []
    available_characteristics.each do |key, value|
      if value == 1
        has_characteristics <<  key 
      end
    end
    has_characteristics
  end
end

# available_characteristics = [ 