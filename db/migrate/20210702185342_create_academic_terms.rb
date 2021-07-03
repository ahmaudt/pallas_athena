class CreateAcademicTerms < ActiveRecord::Migration[6.1]
  def change
    create_table :academic_terms do |t|
      t.string :academic_semester
      t.integer :academic_year
      t.integer :academic_term_code
      t.references :student

      t.timestamps
    end
  end
end
