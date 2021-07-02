class CreateColleges < ActiveRecord::Migration[6.1]
  def change
    create_table :colleges do |t|
      t.string :college_code
      t.text :college_name

      t.timestamps
    end
  end
end
