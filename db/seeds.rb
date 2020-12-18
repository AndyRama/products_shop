puts 'cleaning database...' 
Product.destroy_all if Rails.env.development?
Category.destroy_all if Rails.env.development?

puts'Creating categories...'
nano = Category.create!(name: 'nano')
console = Category.create!(name: 'console')

puts ' Creating products...'
Product.create!(sku: 'N64 PI MINI', name:'PI N64', category: nano, photo_url: '64PI4.PNG')
Product.create!(sku: 'XU4 64', name:'XU4 N64', category: nano, photo_url: 'CONSOLEX.PNG')
Product.create!(sku: 'Console X', name:'X N64', category: console, photo_url: 'XU4N64.PNG')
Product.create!(sku: 'N64 MINI', name:'N64', category: nano, photo_url: '64PI4.PNG')
Product.create!(sku: 'XU4 64', name:'XU4', category: nano, photo_url: 'CONSOLEX.PNG')
Product.create!(sku: 'Console X', name:'X N', category: console, photo_url: 'XU4N64.PNG')
puts 'Finished!'
