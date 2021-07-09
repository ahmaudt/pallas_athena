class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :course_code
      t.text :course_title
      t.integer :credit_hrs
      t.references :course_term

      t.timestamps
    end
  end
end
