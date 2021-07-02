class CreateAdvisors < ActiveRecord::Migration[6.1]
  def change
    create_table :advisors do |t|
      t.string :first_name
      t.string :last_name
      t.references :college, null: false, foreign_key: true

      t.timestamps
    end
  end
end
