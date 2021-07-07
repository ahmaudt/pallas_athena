class ChangeColumnsInAcademicPlans < ActiveRecord::Migration[6.1]
  def change
    remove_column :academic_plans, :advisor_id
  end
end
