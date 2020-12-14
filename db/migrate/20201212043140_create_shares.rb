class CreateShares < ActiveRecord::Migration[6.0]
  def change
    create_table :shares do |t|
      t.integer :profile_shared
      t.integer :status

      t.timestamps
    end
  end
end