class ChangeColumnsInAcademicTerms < ActiveRecord::Migration[6.1]
  def change
    remove_column :academic_terms, :academic_year, if_exists: true
    remove_column :academic_terms, :academic_semester, if_exists: true
    remove_column :academic_terms, :student_id
    add_column :academic_terms, :academic_term, :string
  end
end
