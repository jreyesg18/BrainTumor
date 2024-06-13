class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.integer :patient_id
      t.integer :age
      t.string :gender
      t.string :tumor_type
      t.string :tumor_grade
      t.string :tumor_location
      t.string :treatment
      t.string :treatment_outcome
      t.integer :time_to_recurrence
      t.string :recurrence_site
      t.integer :survival_time

      t.timestamps
    end
  end
end
