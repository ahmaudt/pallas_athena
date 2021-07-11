class CreateCoursePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :course_plans do |t|

      t.timestamps
    end
  end
end
