class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :blood_type
      t.float :weight
      t.integer :height
      t.string :rh_factor
      t.string :name
      t.date :birthday
      t.string :cell_phone

      t.timestamps
    end
  end
end
