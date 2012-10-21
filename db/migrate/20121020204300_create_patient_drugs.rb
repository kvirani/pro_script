class CreatePatientDrugs < ActiveRecord::Migration
  def change
    create_table :patient_drugs do |t|

      t.belongs_to :patient # patient_id
      t.belongs_to :drug # drug_id

      t.string :breakfast_dose
      t.string :lunch_dose
      t.string :supper_dose
      t.string :bedtime_dose
      t.string :reason

      t.timestamps
    end

  end
end
