# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds/load_patients.rb

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'BrainTumor.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'UTF-8')

csv.each do |row|
  Patient.create!(
    patient_id: row['Patient ID'],
    age: row['Age'],
    gender: row['Gender'],
    tumor_type: row['Tumor Type'],
    tumor_grade: row['Tumor Grade'],
    tumor_location: row['Tumor Location'],
    treatment: row['Treatment'],
    treatment_outcome: row['Treatment Outcome'],
    time_to_recurrence: row['Time to Recurrence (months)'],
    recurrence_site: row['Recurrence Site'],
    survival_time: row['Survival Time (months)']
  )
end

puts "Patients seeded successfully!"