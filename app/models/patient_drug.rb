class PatientDrug < ActiveRecord::Base
  attr_accessible :bedtime_dose, :breakfast_dose, :lunch_dose, :reason, :supper_dose, :drug_id, :strength, :method_of_administration, :discontinued_at

  belongs_to :patient
  belongs_to :drug
end
