class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :professional
      t.timestamp :date_time
      t.string :specialty
      t.text :complaints
      t.text :diagnostics

      t.timestamps
    end
  end
end
