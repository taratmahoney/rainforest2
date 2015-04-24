# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create({name: "This Awesome Broom", description: "It's really, really, really, really great", price_in_cents: 12600})
Product.create({name: "This Cool Thin", description: "It's really, really, really, really great", price_in_cents: 109600})
Product.create({name: "Blue Bird", description: "It's really, really, really, really great", price_in_cents: 7600})
Product.create({name: "Red Herring", description: "WOOWWOWOWOW SO GREAT. AWESOME. I LOVE IT.", price_in_cents: 650})