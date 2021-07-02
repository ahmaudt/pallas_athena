class CreateTermPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :term_plans do |t|
      t.references :student, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
