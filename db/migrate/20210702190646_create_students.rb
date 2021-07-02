class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :preferred_name
      t.string :last_name
      t.references :major, null: false, foreign_key: true
      t.references :advisor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
