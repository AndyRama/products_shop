puts 'cleaning database...' 
Product.destroy_all if Rails.env.development?
Category.destroy_all if Rails.env.development?

puts'Creating categories...'
nano = Category.create!(name: 'nano')
console = Category.create!(name: 'console')

puts ' Creating products...'
Product.create!(sku: 'N64 PI MINI', name:'PI N64', price_cents:'2000',category: nano, photo_url: '64PI4.PNG')
Product.create!(sku: 'XU4 64', name:'XU4 N64', price_cents:'5000', category: nano, photo_url: '64PI4.PNG')
Product.create!(sku: 'Console X', name:'X N64', price_cents:'4000', category: console, photo_url: '64PI4.PNG')
Product.create!(sku: 'N64 MINI', name:'N64',price_cents:'6000', category: nano, photo_url: '64PI4.PNG')
Product.create!(sku: 'XU4 64', name:'XU4', price_cents:'10000', category: nano, photo_url: '64PI4.PNG')
Product.create!(sku: 'Console X', name:'X N', price_cents:'3000', category: console, photo_url: '64PI4.PNG')
puts 'Finished!'
