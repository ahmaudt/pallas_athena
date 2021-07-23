class ChangeColumnInAdvisors < ActiveRecord::Migration[6.1]
  def change
    change_column :advisors, :ugamyid, :string, unique: true
  end
end
