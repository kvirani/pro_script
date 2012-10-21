class Patient < ActiveRecord::Base
  attr_accessible :date_of_birth, :emr_number, :family_doctor_cpso, :first_name, :last_name, :phone_number

  has_many :patient_drugs
end
