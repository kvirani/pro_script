class AddStrengthToPatientDrugs < ActiveRecord::Migration
  def change
    add_column :patient_drugs, :strength, :string
  end
end
