class CreateAcademicPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :academic_plans do |t|
      t.text :academic_plan_note
      t.references :academic_term, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
