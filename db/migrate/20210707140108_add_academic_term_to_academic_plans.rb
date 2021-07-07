class AddAcademicTermToAcademicPlans < ActiveRecord::Migration[6.1]
  def change
    add_reference :academic_plans, :advised_term
  end
end
