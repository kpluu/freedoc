# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
6.times do
    doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: ["généraliste", "dermatologue", "dentiste", "ORL"].sample, zip_code: Faker::Address.zip_code)
end

12.times do
    patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end 

24.times do
    appointment = Appointment.create!(date: Faker::Date.in_date_period, doctor: doctor, patient: patient)
end

5.times do
    city = City.create!(city: Faker::Address.city)
end