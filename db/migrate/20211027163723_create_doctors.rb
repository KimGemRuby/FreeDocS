class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :specialty
      t.string :zip_code
      has_many :appointments
      has_many :patient
      has_many :patients, through: :appointments
      
      t.timestamps
    end
  end
end
