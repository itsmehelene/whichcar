Car.destroy_all
2.times do
Car.create!(
  model:"308",
  passengers: 4,
  year:2019 ,
  fuel:"Essence",
  critair: 1 ,
  gearbox:"Manual",
  trunk_size: 610,
  photo: "308.jpg",
  price: 19690
  )

Car.create!(
  model:"Golf",
  passengers: 5,
  year:2018 ,
  fuel:"Essence",
  critair: 1 ,
  gearbox:"Manual",
  trunk_size: 380,
  photo: "golf.jpg",
  price: 15990)

Car.create!(
  model:"Model S",
  passengers: 5,
  year:2019,
  fuel:"Electric",
  critair: 0 ,
  gearbox:"Automatic",
  trunk_size: 745,
  photo: "modelS.jpg",
  price: 52990
  )


Car.create!(
  model:"Land Cruiser",
  passengers: 5,
  year:2007,
  fuel:"Diesel",
  critair: 2 ,
  gearbox:"Manual",
  trunk_size: 640,
  photo: "land.jpg",
  price: 37400)

Car.create!(
  model:"Grand C4 Picasso",
  passengers: 7,
  year: 2013,
  fuel:"Diesel",
  critair:2,
  gearbox:"Manual",
  trunk_size: 130,
  photo: "picasso.jpg",
  price: 14400)

Car.create!(
  model:"A4",
  passengers: 5,
  year: 2019,
  fuel:"Essence",
  critair: 1,
  gearbox:"Automatic",
  trunk_size: 480,
  photo: "a4.jpg",
  price: 35000 )

Car.create!(
  model:"Cooper",
  passengers: 4,
  year: 2017,
  fuel:"Essence",
  critair: 2,
  gearbox:"Automatic",
  trunk_size: 160,
  photo: "cooper.jpg",
  price: 31700)

Car.create!(
  model:"Fortwo",
  passengers: 2,
  year: 2010,
  fuel:"Diesel",
  critair: 3,
  gearbox:"Manual",
  trunk_size: 200,
  photo: "smart.jpg",
  price: 17000)

Car.create!(
  model:"2 CV",
  passengers: 4,
  year: 1990,
  fuel:"Essence",
  critair: 5,
  gearbox:"Manual",
  trunk_size: 100,
  photo: "2cv.jpg",
  price: 6500)

Car.create!(
  model:"Kangoo",
  passengers: 7,
  year: 2016,
  fuel:"Essence",
  critair: 2,
  gearbox:"Manual",
  trunk_size: 800,
  photo: "kangoo.jpg",
  price: 15000)

Car.create!(
  model:"500",
  passengers: 4,
  year: 2007,
  fuel:"Essence",
  critair: 3,
  gearbox:"Manual",
  trunk_size: 185,
  photo: "500.jpg",
  price: 13000)

Car.create!(
  model:"Cactus",
  passengers: 5,
  year:2019,
  fuel:"Essence",
  critair: 2,
  gearbox:"Automatic",
  trunk_size: 348,
  photo: "cactus.jpg",
  price: 15400)

Car.create!(
  model:"A5 Sportback",
  passengers: 5,
  year: 2017,
  fuel:"Diesel",
  critair: 1,
  gearbox:"Automatic",
  trunk_size: 480,
  photo: "sportback.jpg",
  price: 40550)

Car.create!(
  model:"Octavia",
  passengers:5,
  year: 2014,
  fuel:"Diesel",
  critair: 2,
  gearbox:"Automatic",
  trunk_size: 610,
  photo: "octavia.jpg",
  price: 22000)

Car.create!(
  model:"Duster",
  passengers: 5,
  year: 2015,
  fuel:"Diesel",
  critair: 2,
  gearbox:"Manual",
  trunk_size: 445,
  photo: "duster.jpg",
  price: 13800)

Car.create!(
  model:"Cayenne",
  passengers: 5,
  year: 2019,
  fuel:"Hybride",
  critair:1,
  gearbox:"Automatic",
  trunk_size: 404,
  photo: "porsche-cayenne.png",
  price: 175400)

Car.create!(
  model:"Ceed",
  passengers:5,
  year: 2018,
  fuel:"Essence",
  critair: 1,
  gearbox:"Manuel",
  trunk_size:380,
  photo: "ceed.jpg",
  price: 21000)

Car.create!(
  model:"Aventador",
  passengers: 2,
  year: 2016,
  fuel:"Essence",
  critair:1,
  gearbox:"Automatic",
  trunk_size: 16,
  photo: "aven.jpg",
  price: 324000)

Car.create!(
  model:"Vel Satis",
  passengers: 5,
  year: 2005,
  fuel:"Diesel",
  critair: 4,
  gearbox:"Manual",
  trunk_size: 460,
  photo: "vels.jpg",
  price: 5000)

Car.create!(
  model:"Corsa",
  passengers: 5,
  year: 2018,
  fuel:"Essence",
  critair: 1,
  gearbox:"Manual",
  trunk_size: 286,
  photo: "corsa.jpg",
  price: 15000)

Car.create!(
  model:"Sierra",
  passengers:3,
  year: 2018,
  fuel:"Essence",
  critair:3,
  gearbox:"Automatic",
  trunk_size:800,
  photo: "gmc.jpg",
  price: 80900)

end
