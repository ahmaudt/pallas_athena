class CreateCoursePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :course_plans do |t|
      t.references :course, foreign_key: true
      t.references :academic_plan, foreign_key: true
      t.timestamps
    end
  end
end
