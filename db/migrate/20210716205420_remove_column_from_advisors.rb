class RemoveColumnFromAdvisors < ActiveRecord::Migration[6.1]
  def change
    remove_column :advisors, :college_id
  end
end
