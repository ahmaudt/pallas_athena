class CreateStudentRosters < ActiveRecord::Migration[6.1]
  def change
    create_table :student_rosters do |t|
      t.references :advisor, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
