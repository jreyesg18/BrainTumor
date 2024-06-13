class Patient < ApplicationRecord
  def self.search(query)
    where("patient_id LIKE ? OR age LIKE ? OR gender LIKE ? OR tumor_type LIKE ? OR tumor_grade LIKE ? OR tumor_location LIKE ? OR treatment LIKE ? OR treatment_outcome LIKE ? OR time_to_recurrence LIKE ? OR recurrence_site LIKE ? OR survival_time LIKE ?",
          "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%")
  end
end

