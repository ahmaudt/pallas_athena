class AddUgaMyIdToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :ugamyid, :string
  end
end
