# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Brewery.destroy_all
Beer.destroy_all 
Bar.destroy_all

Brewery.create(name: 'Haymarket Brewery', city: 'Chicago', state: 'IL', country: 'USA', website: 'http://haymarketbrewing.com/')
Brewery.create(name: 'Ska Brewing Company', city: 'Durango', state: 'CO', country: 'USA', website: 'http://www.skabrewing.com/')
Brewery.create(name: 'Greenbush Brewing Company', city: 'Sawyer', state: 'MI', country: 'USA', website: 'http://www.greenbushbrewing.com/')
Brewery.create(name: 'Against the Grain Brewery', city: 'Louisville', state: 'KY', country: 'USA', website: 'http://www.atgbrewery.com/')
Brewery.create(name: 'Victory Brewing Company', city: 'Downingtown', state: 'PA', country: 'USA', website: 'http://victorybeer.com/')
Brewery.create(name: 'Southern Tier Brewing Company', city: 'Lakewood', state: 'NY', country: 'USA', website: 'http://www.stbcbeer.com/stbc/')
Brewery.create(name: 'Revolution Brewing', city: 'Chicago', state: 'IL', country: 'USA', website: 'http://revbrew.com/')

Beer.create(name: 'Speakerswagon Pilsner', brewery_id: 1, style: 'Pilsner', abv: 5.8, clean: 1, crisp: 1, hoppy: 1)
Beer.create(name: 'Oscar\'s Pardon Dry-Hopped Belgian Pale Ale', brewery_id: 1, style: 'Pale Ale', abv: 4.5, belgian: 1)
Beer.create(name: 'Mother Jones Dry-Hopped Abbey Style Dubbel', brewery_id: 1, style: 'Abbey Dubbel', abv: 7.5, chocolate: 1, fruity: 1, belgian: 1)
Beer.create(name: 'Mathias Imperial IPA', brewery_id: 1, style: 'IPA', abv: 10, citrus: 1)
Beer.create(name: 'Bieber\'s Banana Hammock Hefeweizen', brewery_id: 1, style: 'Hefeweizen', abv: 5, banana: 1, cloves: 1, wheat: 1)
Beer.create(name: 'Hogbutcher Belgian IPA', brewery_id: 1, style: 'IPA', abv: 7.5, belgian: 1)
Beer.create(name: 'Rive Gauche Biere de Garde', brewery_id: 1, style: 'Farmhouse', abv: 5.5, clean: 1, sweet: 1, citrus: 1)
Beer.create(name: 'Tiepolo Blonde', brewery_id: 1, style: 'Blonde', abv: 4.5, crisp: 1, fruity: 1)
Beer.create(name: 'Rubber Monkey', brewery_id: 1, style: 'IPA', abv: 7, citrus: 1, wheat: 1, belgian: 1)
Beer.create(name: 'Ska Modus Hoperandi', brewery_id: 2, style: 'IPA', abv: 6.8, srm: 7, hoppy: 1, smooth: 1, bitter: 1, sweet: 1, caramel: 1, citrus: 1, fruity: 1, grapefruit: 1, pine: 1)
Beer.create(name: 'Dunegras', brewery_id: 3, style: 'IPA', abv: 6.7, ibu: 67)
Beer.create(name: 'Local Option Morning Wood', brewery_id: 4, style: 'Hybrid Ale', abv: 7, coffee: 1)
Beer.create(name: 'Golden Monkey', brewery_id: 5, style: 'Golden Ale', abv: 9.5, rich: 1, fruity: 1, belgian: 1)
Beer.create(name: 'Gemini', brewery_id: 6, style: 'Imperial Blended Ale', abv: 9, rich: 1, fruity: 1, belgian: 1)
Beer.create(name: '2X IPA', brewery_id: 6, style: 'IPA', abv: 8.2, bitter: 1, sweet: 1, citrus: 1, floral: 1, fruity: 1, grapefruit: 1, lemon: 1, pine: 1)
Beer.create(name: 'Sock Chicken', brewery_id: 1, style: 'IPA', abv: 7, rich: 1, fruity: 1, belgian: 1)
Beer.create(name: 'Hard Times American IPA', brewery_id: 1, style: 'IPA', abv: 6)
Beer.create(name: 'Iron Fist', brewery_id: 7, style: 'Pale Ale')
Beer.create(name: 'Eugene Porter', brewery_id: 7, style: 'Porter', abv: 6.8, ibu: 28, caramel: 1, chocolate: 1, belgian: 1)
Beer.create(name: 'Bottom Up Wit', brewery_id: 7, style: 'Witbier', abv: 5, ibu: 14, crisp: 1, citrus: 1, wheat: 1, belgian: 1)
Beer.create(name: 'Black Power', brewery_id: 7, style: 'Oatmeal Stout', smooth: 1, chocolate: 1)
Beer.create(name: 'Anti-Hero IPA', brewery_id: 7, style: 'IPA', abv: 6.5, ibu: 70, crisp: 1, bitter: 1, citrus: 1, floral: 1)
Beer.create(name: 'Cross of Gold', brewery_id: 7, style: 'Golden Ale', crisp: 1)
Beer.create(name: 'Coup d\'Etat', brewery_id: 7, style: 'Saison', abv: 7.6, ibu: 50, earthy: 1, citrus: 1)

# Bar.create(name: 'Haymarket Brewery', address: '737 W Randolph', city: 'Chicago', state: 'IL', zip: 60661, phone: 3126380700, website: 'http://haymarketbrewing.com/', open_sunday: 11, open_monday: 11, open_tuesday: 11, open_wednesday: 11, open_thursday: 11, open_friday: 11, open_saturday: 11, close_sunday: 2, close_monday: 2, close_tuesday: 2, close_wednesday: 2, close_thursday: 2, close_friday: 2, close_saturday: 2)
# Bar.create(name: 'Revolution Brewing', address: '2323 N Milwaukee Ave', city: 'Chicago', state: 'IL', zip: 60647, phone: 7732272739, website: 'http://revbrew.com/', open_sunday: 10, open_monday: 11, open_tuesday: 11, open_wednesday: 11, open_thursday: 11, open_friday: 11, open_saturday: 10, close_sunday: 2, close_monday: 2, close_tuesday: 2, close_wednesday: 2, close_thursday: 2, close_friday: 2, close_saturday: 2)