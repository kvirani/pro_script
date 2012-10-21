class AddMethodOfAdministrationToPatientDrugs < ActiveRecord::Migration
  def change
    add_column :patient_drugs, :method_of_administration, :string
  end
end
