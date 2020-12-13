class CreateExams < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.string :title
      t.date :date
      t.string :establishment
      t.string :description
      t.integer :profile_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
