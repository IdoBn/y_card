# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

olio = Company.create({name: "Olio Pizza", description: "A great pizza place", image_url: "https://scontent-fra3-1.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/10347183_794593300585221_1182138438878885753_n.png?oh=e25cc6641e1c4ab1b85da651fd022322&oe=56241F69"})
falaf = Company.create({name: "Falafel Square", description: "Falafel's origin home", image_url: "http://www.upsite.co.il/uploaded/images/1266_7e7b495943542de4f37c3d85cbc58a77.JPG"})
putsch = Company.create({name: "Putsch", description: "Pardess hana's pub", image_url: "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xfa1/v/t1.0-9/405404_343221639051941_738286647_n.jpg?oh=9176472eb5e8e629b6db37acbc275d0a&oe=55E8FCF7&__gda__=1441969993_0af6b0324767101d8d765c898a9ee11e"})
japanik = Company.create({name: "Japanika", description: "Sushi near you", image_url: "http://www.telavivme.com/images/uploads/2_japanika.jpg"})
kravitz = Company.create({name: "Kravitz", description: "Office supplies and stuff", image_url: "http://daatsolutions.co/ofermalls/media/kravitz_20131222_232947.jpg"})
rikushet = Company.create({name: "Rikushet", description: "Trip equipments", image_url: "http://www.iryamim-mall.co.il/tohen/uploads/2013/12/214_1.jpg"})
golda = Company.create({name: "Golda", description: "Ice-cream and Frozen-Yogurt", image_url: "http://www.anitaglida.co.il/imageall/gelem3.jpg"})
fox = Company.create({name: "Fox", description: "bar refaeli is our model", image_url: "http://www.multi.azrieli.com/Pictures/fox.jpg"})
ramilevy = Company.create({name: "Rami Levy", description: "superdupermarket", image_url: "http://images1.ynet.co.il/PicServer3/2012/09/20/4172749/41545073960100408258no.jpg" })
wow = Company.create({name: "Wow", description: "Wow cosmetics", image_url: "http://blog.tapuz.co.il/drrd/images/662689_1875.jpg"})
greg = Company.create({name: "Greg", description: "verry coffe", image_url: "http://www.iryamim-mall.co.il/tohen/uploads/2013/12/33aed8aa-2dae-48e1-9032-3bfbd4a85c28.jpg"})
leumi = Company.create({name: "Leumi", description: "bank", image_url: "http://israelstrategist.com/wp-content/uploads/2012/08/logo-leumi.jpg"})
aroma = Company.create({name: "Aroma", description: "coffe house, expresso bar", image_url: "http://bruno-d.co.il/wp-content/uploads/2013/04/aroma-logo1.png"})
laline = Company.create({name: "Laline", description: "cesmetics, soaps, girl stuff", image_url: "http://www.laline.co.il/img/logo.png"})




food = Tag.create(name: "Food")
pizza = Tag.create(name: "Pizza")
drinks = Tag.create(name: "Drinks")
alcohol = Tag.create(name: "Alcohol")
breakfast = Tag.create(name: "Breakfast")
sushi = Tag.create(name: "Sushi")
humus = Tag.create(name: "Humus")
pub = Tag.create(name: "Pub")
sandwiches = Tag.create(name: "Sandwiches")
sushi = Tag.create(name: "Sushi")
asian = Tag.create(name: "Asian")
supplies = Tag.create(name: "Supplies")
school = Tag.create(name: "School")
trip = Tag.create(name: "Trip")
equipment = Tag.create(name: "Equipment")
icecream = Tag.create(name: "Ice Cream")
frozen = Tag.create(name: "Frozen Yogurt")
clothes = Tag.create(name: "clothes")
supermarket = Tag.create(name: "supermarket")
cosmetics = Tag.create(name: "cosmetics")
verrycoffe = Tag.create(name: "verry coffe")
coffe = Tag.create(name: "coffe")
bank = Tag.create(name: "bank")
soaps = Tag.create(name: "soaps")
perfumes = Tag.create(name: "perfumes")
girlstuff = Tag.create(name: "girl stuff")





olio.tags << food << pizza
falaf.tags << food << humus
putsch.tags << drinks << alcohol << pub << food
japanik.tags << asian << sushi << food << breakfast
kravitz.tags << supplies << school
rikushet.tags << trip << equipment
golda.tags << food << icecream << frozen
fox.tags << clothes
ramilevy.tags << supermarket
wow.tags << cosmetics << girlstuff << perfumes << soaps
greg.tags << verrycoffe << coffe << breakfast << food
leumi.tags << bank
aroma.tags << coffe << food << breakfast
laline.tags << soaps << cosmetics << perfumes << girlstuff
