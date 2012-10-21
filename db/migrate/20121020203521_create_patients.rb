class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :emr_number
      t.string :first_name
      t.string :last_name
      t.string :date_of_birth
      t.string :phone_number
      t.string :family_doctor_cpso

      t.timestamps
    end
  end
end
