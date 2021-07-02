class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.integer :section
      t.string :course_code
      t.text :course_title
      t.integer :credit_hrs
      t.references :academic_term, null: false, foreign_key: true

      t.timestamps
    end
  end
end
