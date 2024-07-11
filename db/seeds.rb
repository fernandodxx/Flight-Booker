# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Airport.create([{ code: 'SFO' }, { code: 'NYC' }, { code: 'LAX' }, { code: 'ORD' }, { code: 'ATL' }])

Flight.create([
  { departure_airport: Airport.find_by(code: 'SFO'), arrival_airport: Airport.find_by(code: 'NYC'), start_datetime: '2024-07-10 14:00', duration: 300 },
  { departure_airport: Airport.find_by(code: 'LAX'), arrival_airport: Airport.find_by(code: 'ORD'), start_datetime: '2024-07-11 16:00', duration: 240 },
  { departure_airport: Airport.find_by(code: 'ATL'), arrival_airport: Airport.find_by(code: 'SFO'), start_datetime: '2024-07-12 18:00', duration: 360 }
])

