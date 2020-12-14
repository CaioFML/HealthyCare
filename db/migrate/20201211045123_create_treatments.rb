class CreateTreatments < ActiveRecord::Migration[6.0]
  def change
    create_table :treatments do |t|
      t.references :profile, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.string :establishment
      t.integer :type

      t.timestamps
    end
  end
end
