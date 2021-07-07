# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@major_1 = Major.create(major_code: 'HDFS', major_title: 'Human Development and Family Science')

# needs to add year to season, then exit loop, and do it again with another year

years = (2010...2122).to_a
term_codes = years.map { |year| year.to_s + "08" }
term_codes = term_codes.map { |code| code.to_i }
terms = ['Fall ', 'Spring ', 'Summer ']

table_term = ""
table_term_year = ""
table_term_code = ""
years.map do |year|
  terms.map do |term|
    if term == "Fall "
      table_term_year = year-=1
      table_term = term + year.to_s
      table_term_code = year.to_s + "08"
      table_term_code = table_term_code.to_i
      table_term = term + year.to_s
      AcademicTerm.create(academic_term: table_term, academic_term_code: table_term_code)
    elsif term == "Spring "
      table_term_year = year+=1
      table_term_code = year.to_s + "02"
      table_term_code = table_term_code.to_i
      table_term = term + year.to_s
      AcademicTerm.create(academic_term: table_term, academic_term_code: table_term_code)
    elsif term == "Summer "
      table_term_year = year.to_s
      table_term_code = year.to_s + "05"
      table_term_code = table_term_code.to_i
      table_term = term + year.to_s
      AcademicTerm.create(academic_term: table_term, academic_term_code: table_term_code)
    end
  end
end

@college_1 = College.create(college_code: 'FACS', college_name: 'College of Family and Consumer Sciences')
@major_1 = Major.create(major_code: 'HDFS', major_title: 'Human Developent and Family Science', college_id: @college_1.id)
@advisor_1 = Advisor.create(first_name: 'Ahmaud', last_name: 'Templeton', college_id: @college_1.id)

