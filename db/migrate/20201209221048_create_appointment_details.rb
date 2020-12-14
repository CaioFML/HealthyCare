class CreateAppointmentDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :appointment_details do |t|
      t.references :appointment, null: false, foreign_key: true
      t.references :detailable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
