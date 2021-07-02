class CreateMajors < ActiveRecord::Migration[6.1]
  def change
    create_table :majors do |t|
      t.string :major_code
      t.text :major_title
      t.references :college, null: false, foreign_key: true

      t.timestamps
    end
  end
end
