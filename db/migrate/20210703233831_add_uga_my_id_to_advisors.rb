class AddUgaMyIdToAdvisors < ActiveRecord::Migration[6.1]
  def change
    add_column :advisors, :ugamyid, :string
  end
end
