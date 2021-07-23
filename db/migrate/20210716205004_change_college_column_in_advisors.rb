class ChangeCollegeColumnInAdvisors < ActiveRecord::Migration[6.1]
  def change
    change_column :advisors, :college_id, :integer, null: true
  end
end
