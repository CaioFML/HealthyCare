class CreateShares < ActiveRecord::Migration[6.0]
  def change
    create_table :shares do |t|
      t.references :profile, null: false, foreign_key: true
      t.integer :profile_shared
      t.integer :status

      t.timestamps
    end
  end
end