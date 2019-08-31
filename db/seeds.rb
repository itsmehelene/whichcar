Car.destroy_all
puts "seed is starting"
car = []
car = Scraper.new
puts "Scraper created"
i = 0
while i < car.model.size
Car.create!(

  model: car.model[i],
  passengers: car.passenger[i],
  year:car.year[i],
  fuel:car.fuel[i],
  critair: car.critair[i],
  gearbox:car.gearbox[i],
  trunk_size: car.truck[i],
  photo: car.photo[i],
  price: car.price[i],
  type: car.type[i],
  link: "https://www.aramisauto.com#{car.link[i]}")
  puts "#{i}th one created"
  i+=1
end

# 2.times do
# Car.create!(
#   model:"308",
#   passengers: 4,
#   brand:"Peugeot",
#   year:2019 ,
#   fuel:"Essence",
#   critair: 1 ,
#   gearbox:"Manual",
#   trunk_size: 610,
#   car_type:"Berline",
#   photo: "308.jpg",
#   price: 19690
#   )

# Car.create!(
#   model:"Golf",
#   passengers: 5,
#   brand:"Volkwagen",
#   year:2018 ,
#   fuel:"Essence",
#   critair: 1 ,
#   gearbox:"Manual",
#   trunk_size: 380,
#   car_type:"Citadine",
#   photo: "golf.jpg",
#   price: 15990)

# Car.create!(
#   model:"Model S",
#   passengers: 5,
#   brand:"Tesla",
#   year:2019,
#   fuel:"Electric",
#   critair: 0 ,
#   gearbox:"Automatic",
#   trunk_size: 745,
#   car_type:"Berline",
#   photo: "modelS.jpg",
#   price: 52990
#   )


# Car.create!(
#   model:"Land Cruiser",
#   passengers: 5,
#   brand:"Toyota",
#   year:2007,
#   fuel:"Diesel",
#   critair: 2 ,
#   gearbox:"Manual",
#   trunk_size: 640,
#   car_type:"SUV",
#   photo: "land.jpg",
#   price: 37400)

# Car.create!(
#   model:"Grand C4 Picasso",
#   passengers: 7,
#   brand:"Citroën",
#   year: 2013,
#   fuel:"Diesel",
#   critair:2,
#   gearbox:"Manual",
#   trunk_size: 130,
#   car_type:"Monospace",
#   photo: "picasso.jpg",
#   price: 14400)

# Car.create!(
#   model:"A4",
#   passengers: 5,
#   brand:"Audi",
#   year: 2019,
#   fuel:"Essence",
#   critair: 1,
#   gearbox:"Automatic",
#   trunk_size: 480,
#   car_type:"Berline",
#   photo: "a4.jpg",
#   price: 35000 )

# Car.create!(
#   model:"Cooper",
#   passengers: 4,
#   brand:"Mini",
#   year: 2017,
#   fuel:"Essence",
#   critair: 2,
#   gearbox:"Automatic",
#   trunk_size: 160,
#   car_type:"Cabriolet",
#   photo: "cooper.jpg",
#   price: 31700)

# Car.create!(
#   model:"Fortwo",
#   passengers: 2,
#   brand:"Smart",
#   year: 2010,
#   fuel:"Diesel",
#   critair: 3,
#   gearbox:"Manual",
#   trunk_size: 200,
#   car_type:"Citadine",
#   photo: "smart.jpg",
#   price: 17000)

# Car.create!(
#   model:"2 CV",
#   passengers: 4,
#   brand:"Citroën",
#   year: 1990,
#   fuel:"Essence",
#   critair: 5,
#   gearbox:"Manual",
#   trunk_size: 100,
#   car_type:"Berline",
#   photo: "2cv.jpg",
#   price: 6500)

# Car.create!(
#   model:"Kangoo",
#   passengers: 7,
#   brand:"Renault",
#   year: 2016,
#   fuel:"Essence",
#   critair: 2,
#   gearbox:"Manual",
#   trunk_size: 800,
#   car_type:"Utilitaire",
#   photo: "kangoo.jpg",
#   price: 15000)

# Car.create!(
#   model:"500",
#   passengers: 4,
#   brand:"Fiat",
#   year: 2007,
#   fuel:"Essence",
#   critair: 3,
#   gearbox:"Manual",
#   trunk_size: 185,
#   car_type:"Citadine",
#   photo: "500.jpg",
#   price: 13000)

# Car.create!(
#   model:"Cactus",
#   passengers: 5,
#   brand:"Citroen",
#   year:2019,
#   fuel:"Essence",
#   critair: 2,
#   gearbox:"Automatic",
#   trunk_size: 348,
#   car_type:"Citadine",
#   photo: "cactus.jpg",
#   price: 15400)

# Car.create!(
#   model:"A5 Sportback",
#   passengers: 5,
#   brand:"Audi",
#   year: 2017,
#   fuel:"Diesel",
#   critair: 1,
#   gearbox:"Automatic",
#   trunk_size: 480,
#   car_type:"Berline",
#   photo: "sportback.jpg",
#   price: 40550)

# Car.create!(
#   model:"Octavia",
#   passengers:5,
#   brand:"Skoda",
#   year: 2014,
#   fuel:"Diesel",
#   critair: 2,
#   gearbox:"Automatic",
#   trunk_size: 610,
#   car_type:"Break",
#   photo: "octavia.jpg",
#   price: 22000)

# Car.create!(
#   model:"Duster",
#   passengers: 5,
#   brand:"Dacia",
#   year: 2015,
#   fuel:"Diesel",
#   critair: 2,
#   gearbox:"Manual",
#   trunk_size: 445,
#   car_type:"SUV",
#   photo: "duster.jpg",
#   price: 13800)

# Car.create!(
#   model:"Cayenne",
#   passengers: 5,
#   brand:"Porsche",
#   year: 2019,
#   fuel:"Hybride",
#   critair:1,
#   gearbox:"Automatic",
#   trunk_size: 404,
#   car_type:"SUV",
#   photo: "porsche-cayenne.png",
#   price: 175400)

# Car.create!(
#   model:"Ceed",
#   passengers:5,
#   brand:"Kia",
#   year: 2018,
#   fuel:"Essence",
#   critair: 1,
#   gearbox:"Manuel",
#   trunk_size:380,
#   car_type:"Citadine",
#   photo: "ceed.jpg",
#   price: 21000)

# Car.create!(
#   model:"Aventador",
#   passengers: 2,
#   brand:"Lamborghini",
#   year: 2016,
#   fuel:"Essence",
#   critair:1,
#   gearbox:"Automatic",
#   trunk_size: 16,
#   car_type:"Cabriolet",
#   photo: "aven.jpg",
#   price: 324000)

# Car.create!(
#   model:"Vel Satis",
#   passengers: 5,
#   brand:"Renault",
#   year: 2005,
#   fuel:"Diesel",
#   critair: 4,
#   gearbox:"Manual",
#   trunk_size: 460,
#   car_type:"Citadine",
#   photo: "vels.jpg",
#   price: 5000)

# Car.create!(
#   model:"Corsa",
#   passengers: 5,
#   brand:"Opel",
#   year: 2018,
#   fuel:"Essence",
#   critair: 1,
#   gearbox:"Manual",
#   trunk_size: 286,
#   car_type:"Citadine",
#   photo: "corsa.jpg",
#   price: 15000)

# Car.create!(
#   model:"Sierra",
#   passengers:3,
#   brand:"GMC",
#   year: 2018,
#   fuel:"Essence",
#   critair:3,
#   gearbox:"Automatic",
#   trunk_size:800,
#   car_type:"SUV",
#   photo: "gmc.jpg",
#   price: 80900)

