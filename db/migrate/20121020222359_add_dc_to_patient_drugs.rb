class AddDcToPatientDrugs < ActiveRecord::Migration
  def change
    add_column :patient_drugs, :discontinued_at, :datetime
  end
end
