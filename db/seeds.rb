# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Airport.create([
  {name: 'Vancouver', code: 'YVR'},
  {name: 'Comox', code: 'YQQ'},
  {name: 'Kelowna', code: 'YLW'},
  {name: 'Kamloops', code: 'YKA'},
  {name: 'Cancelgar', code: 'YCG'},
  {name: 'Portland', code: 'PDX'},
])

Flight.create([
  { departure_airport_id: 1, arrival_airport_id: 2, duration:30, date: 3.months.from_now, time: Time.now},
  { departure_airport_id: 1, arrival_airport_id: 3, duration:40, date: 3.months.from_now, time: Time.now},
  { departure_airport_id: 1, arrival_airport_id: 4, duration:35, date: 3.months.from_now, time: Time.now},
  { departure_airport_id: 1, arrival_airport_id: 5, duration:55, date: 3.months.from_now, time: Time.now},
  { departure_airport_id: 1, arrival_airport_id: 6, duration:60, date: 3.months.from_now, time: Time.now},
  { departure_airport_id: 1, arrival_airport_id: 2, duration:30, date: 3.months.from_now, time: Time.now},

  { departure_airport_id: 2, arrival_airport_id: 1, duration:40, date: 3.months.from_now, time: Time.now},
  { departure_airport_id: 3, arrival_airport_id: 1, duration:50, date: 3.months.from_now, time: Time.now},
  { departure_airport_id: 4, arrival_airport_id: 1, duration:45, date: 3.months.from_now, time: Time.now},
  { departure_airport_id: 5, arrival_airport_id: 1, duration:60, date: 3.months.from_now, time: Time.now},
  { departure_airport_id: 6, arrival_airport_id: 1, duration:60, date: 3.months.from_now, time: Time.now},
  { departure_airport_id: 2, arrival_airport_id: 1, duration:40, date: 3.months.from_now, time: Time.now},
])