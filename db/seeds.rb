Car.destroy_all
puts "seed is starting"
# car = []
# car = Scraper.new
# puts "Scraper created"
# i = 0
# while i < car.model.size
#   Car.create!(
#     model: car.model[i],
#     passengers: car.passenger[i],
#     year:car.year[i],
#     fuel:car.fuel[i],
#     critair: car.critair[i],
#     gearbox:car.gearbox[i],
#     trunk_size: car.truck[i],
#     photo: car.photo[i],
#     price: car.price[i],
#     car_type: car.car_type[i],
#     link: "https://www.aramisauto.com#{car.link[i]}"
#   )
#   puts "#{i}th one created"
#   i+=1
# end


links = Scraper.scrap_links
links.each do |link|
  scraper = Scraper.new(link)

  Car.create!(
    model: scraper.model,
    passengers: scraper.passengers,
    year: scraper.year,
    fuel: scraper.fuel,
    critair: scraper.critair,
    gearbox: scraper.gearbox,
    trunk_size: scraper.truck,
    photo: scraper.photo,
    price: scraper.price,
    car_type: scraper.car_type,
    link: link,
    power_fiscal:scraper.horse_power_fiscal,
    horse_power:scraper.horse_power
  )
end

# 2.times do
#   Car.create!(
#     model:"Peugeot 308",
#     passengers: 4,
#     year:2019 ,
#     fuel:"Essence",
#     critair: 1 ,
#     gearbox:"Manual",
#     trunk_size: 610,
#     car_type:"Berline",
#     photo: "308.jpg",
#     price: 19690
#     )

#   Car.create!(
#     model:"Volkwagen Golf",
#     passengers: 5,
#     year:2018 ,
#     fuel:"Essence",
#     critair: 1 ,
#     gearbox:"Manual",
#     trunk_size: 380,
#     car_type:"Citadine",
#     photo: "golf.jpg",
#     price: 15990)

#   Car.create!(
#     model:"Tesla Model S",
#     passengers: 5,
#     year:2019,
#     fuel:"Electric",
#     critair: 0 ,
#     gearbox:"Automatic",
#     trunk_size: 745,
#     car_type:"Berline",
#     photo: "modelS.jpg",
#     price: 52990
#     )


#   Car.create!(
#     model:"Toyota Land Cruiser",
#     passengers: 5,
#     year:2007,
#     fuel:"Diesel",
#     critair: 2 ,
#     gearbox:"Manual",
#     trunk_size: 640,
#     car_type:"SUV",
#     photo: "land.jpg",
#     price: 37400)

#   Car.create!(
#     model:"Citroën Grand C4 Picasso",
#     passengers: 7,
#     year: 2013,
#     fuel:"Diesel",
#     critair:2,
#     gearbox:"Manual",
#     trunk_size: 130,
#     car_type:"Monospace",
#     photo: "picasso.jpg",
#     price: 14400)

#   Car.create!(
#     model:"Audi A4",
#     passengers: 5,
#     year: 2019,
#     fuel:"Essence",
#     critair: 1,
#     gearbox:"Automatic",
#     trunk_size: 480,
#     car_type:"Berline",
#     photo: "a4.jpg",
#     price: 35000 )

#   Car.create!(
#     model:"Mini Cooper",
#     passengers: 4,
#     year: 2017,
#     fuel:"Essence",
#     critair: 2,
#     gearbox:"Automatic",
#     trunk_size: 160,
#     car_type:"Cabriolet",
#     photo: "cooper.jpg",
#     price: 31700)

#   Car.create!(
#     model:"Smart Fortwo",
#     passengers: 2,
#     year: 2010,
#     fuel:"Diesel",
#     critair: 3,
#     gearbox:"Manual",
#     trunk_size: 200,
#     car_type:"Citadine",
#     photo: "smart.jpg",
#     price: 17000)

#   Car.create!(
#     model:"Citroën 2 CV",
#     passengers: 4,
#     year: 1990,
#     fuel:"Essence",
#     critair: 5,
#     gearbox:"Manual",
#     trunk_size: 100,
#     car_type:"Berline",
#     photo: "2cv.jpg",
#     price: 6500)

#   Car.create!(
#     model:"Renault Kangoo",
#     passengers: 7,
#     year: 2016,
#     fuel:"Essence",
#     critair: 2,
#     gearbox:"Manual",
#     trunk_size: 800,
#     car_type:"Utilitaire",
#     photo: "kangoo.jpg",
#     price: 15000)

#   Car.create!(
#     model:"Fiat 500",
#     passengers: 4,
#     year: 2007,
#     fuel:"Essence",
#     critair: 3,
#     gearbox:"Manual",
#     trunk_size: 185,
#     car_type:"Citadine",
#     photo: "500.jpg",
#     price: 13000)

#   Car.create!(
#     model:"Citroen Cactus",
#     passengers: 5,
#     year:2019,
#     fuel:"Essence",
#     critair: 2,
#     gearbox:"Automatic",
#     trunk_size: 348,
#     car_type:"Citadine",
#     photo: "cactus.jpg",
#     price: 15400)

#   Car.create!(
#     model:"Audi A5 Sportback",
#     passengers: 5,
#     year: 2017,
#     fuel:"Diesel",
#     critair: 1,
#     gearbox:"Automatic",
#     trunk_size: 480,
#     car_type:"Berline",
#     photo: "sportback.jpg",
#     price: 40550)

#   Car.create!(
#     model:"Skoda Octavia",
#     passengers:5,
#     year: 2014,
#     fuel:"Diesel",
#     critair: 2,
#     gearbox:"Automatic",
#     trunk_size: 610,
#     car_type:"Break",
#     photo: "octavia.jpg",
#     price: 22000)

#   Car.create!(
#     model:"Dacia Duster",
#     passengers: 5,
#     year: 2015,
#     fuel:"Diesel",
#     critair: 2,
#     gearbox:"Manual",
#     trunk_size: 445,
#     car_type:"SUV",
#     photo: "duster.jpg",
#     price: 13800)

#   Car.create!(
#     model:"Porsche Cayenne",
#     passengers: 5,
#     year: 2019,
#     fuel:"Hybride",
#     critair:1,
#     gearbox:"Automatic",
#     trunk_size: 404,
#     car_type:"SUV",
#     photo: "porsche-cayenne.png",
#     price: 175400)

#   Car.create!(
#     model:"Kia Ceed",
#     passengers:5,
#     year: 2018,
#     fuel:"Essence",
#     critair: 1,
#     gearbox:"Manuel",
#     trunk_size:380,
#     car_type:"Citadine",
#     photo: "ceed.jpg",
#     price: 21000)

#   Car.create!(
#     model:"Lamborghini Aventador",
#     passengers: 2,
#     year: 2016,
#     fuel:"Essence",
#     critair:1,
#     gearbox:"Automatic",
#     trunk_size: 16,
#     car_type:"Cabriolet",
#     photo: "aven.jpg",
#     price: 324000)

#   Car.create!(
#     model:"Renault Vel Satis",
#     passengers: 5,
#     year: 2005,
#     fuel:"Diesel",
#     critair: 4,
#     gearbox:"Manual",
#     trunk_size: 460,
#     car_type:"Citadine",
#     photo: "vels.jpg",
#     price: 5000)

#   Car.create!(
#     model:"Opel Corsa",
#     passengers: 5,
#     year: 2018,
#     fuel:"Essence",
#     critair: 1,
#     gearbox:"Manual",
#     trunk_size: 286,
#     car_type:"Citadine",
#     photo: "corsa.jpg",
#     price: 15000)

#   Car.create!(
#     model:"GMC Sierra",
#     passengers:3,
#     year: 2018,
#     fuel:"Essence",
#     critair:3,
#     gearbox:"Automatic",
#     trunk_size:800,
#     car_type:"SUV",
#     photo: "gmc.jpg",
#     price: 80900)
# end