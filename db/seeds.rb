# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# needs to add year to season, then exit loop, and do it again with another year
#
#

@college_1 = College.create(college_code: 'FACS', college_name: 'College of Family and Consumer Sciences')
@major_1 = Major.create(major_code: 'HDFS', major_title: 'Human Developent and Family Science',
                        college_id: @college_1.id)
# @advisor_1 = Advisor.create!(ugamyid: 'ahmaud', first_name: 'Ahmaud', last_name: 'Templeton', college_id: @college_1.id,
#                              email: 'ahmaud@gmail.com', password_digest: BCrypt::Password.create('password'))

years = (2010...2122).to_a
terms = ['Fall ', 'Spring ', 'Summer ']
years.map do |year|
  terms.map do |term|
    case term
    when 'Fall '
      year = year -= 1
      table_term_code = "#{year.to_s}08"
      table_term_code = table_term_code.to_i
      table_term = term + year.to_s
      AcademicTerm.create(academic_term: term + year.to_s, academic_term_code: table_term_code)
    when 'Spring '
      year = year += 1
      table_term_code = "#{year.to_s}02"
      table_term_code = table_term_code.to_i
      AcademicTerm.create(academic_term: term + year.to_s, academic_term_code: table_term_code)
    when 'Summer '
      year = year.to_s
      table_term_code = "#{year.to_s}05"
      table_term_code = table_term_code.to_i
      table_term = term + year.to_s
      AcademicTerm.create(academic_term: term + year, academic_term_code: table_term_code)
    end
  end
end

fall_courses = ["202108,AAEC 2580,Appl Microeconomic Principles,3
202108,AAEC 3400,Intro to Agricultural Policy,3
202108,AAEC 4760,Econ of Ag Process and Market,3
202108,AAEC 6580,Micro-app I,4
202108,AAEC 6580L,Micro-app I Lab,0
202108,AAEC 6610,Quant Tech Ag Econ,3
202108,AAEC 3580,Intermediate Econ Principles,4
202108,AAEC 3580L,Intermed Econ Principles Lab,0
202108,AAEC 3690,Agribusiness Finance,4
202108,AAEC 4980,Agribusiness Management,3
202108,AAEC 6610L,Quant Methods Lab,1
202108,AAEC 7000,Master-s Research,9
202108,AAEC 7300,Master-s Thesis,9
202108,AAEC 9000,Doctoral Research,9
202108,AAEC 9300,Doct Dissertation,9
202108,AAEC 3910,Internships,3
202108,AAEC 3040,Agribusiness Marketing,3
202108,AAEC 4720,Applied Intl Develop Econ,3
202108,AAEC 8010,Seminar Ag App Econ,1
202108,AAEC 6640,Food Marketing and Merchandis,3
202108,AAEC 7310,MAB Research Project,3
202108,AAEC 3100,Food and Fiber Marketing,3
202108,AAEC 6730,Agribusiness Accounting,3
202108,AAEC 3020E,Analytical Comp Tools Econ,3
202108,AAEC 6740E,Agribusiness Financial Mgmt,3
202108,AAEC 6630E,Quant Methods for Agribus Mgmt,3
202108,AAEC 8100,Nonmrkt Econ Val,3
202108,AAEC 3980E,Intro Agribusiness Management,3
202108,AAEC 8350,Res and Prof Dev,1
202108,AAEC 3010,Farm Organization Management,3
202108,AAEC 4510,Land Economics,3
202108,AAEC 6510,Land Economics,3
202108,AAEC 8020,Ag and App Econ Topic,3
202108,AAEC 8500,Price Analysis,3
202108,AAEC 8140,Consumer Dem Thy,3
202108,AAEC 8700,Adv Env Ecn-pol Ana,3
202108,AAEC 8710,Adv Ag Dev and Gro,3
202108,AAEC 6960,Internat Ag Trade,3
202108,AAEC 4990R,Undergraduate Thesis,6
202108,AAEC 3020,Analytical and Comp Tools Econ,3
202108,ACCT 1160,Survey of Accounting,3
202108,ACCT 2101,Principles of Accounting I,3
202108,ACCT 2101H,Principles of Accounting I Hon,3
202108,ACCT 2102,Principles of Accounting II,3
202108,ACCT 5000,Intermediate Accounting I,3
202108,ACCT 5100,Managerial Accounting I,3
202108,ACCT 7100,Managerial I,3
202108,ACCT 5010,Intermed Acc II,3
202108,ACCT 5020,Intermediate Accounting III,3
202108,ACCT 5710,Professional Accounting I,1.5
202108,ACCT 5720,Professional Accounting II,1.5
202108,ACCT 7005,Grad Student Sem,3
202108,ACCT 7410,Taxation II,3
202108,ACCT 7415,Tax Policy,3
202108,ACCT 7620,Audit II,3
202108,ACCT 5400,Taxation I,3
202108,ACCT 7400,Taxation I,3
202108,ACCT 5200,Audit Risk and Cntrl,3
202108,ACCT 7200,Audit Risk and Cntrl,3
202108,ACCT 5310,Acct Systems and Data Analytic,3
202108,ACCT 6000,Fin Acc,3
202108,ACCT 9300,Doct Dissertation,12
202108,ACCT 9000,Doctoral Research,12
202108,ACCT 7630,Acct Data Risk and Control,3
202108,ACCT 5410,Taxation II,3
202108,ACCT 7605,Advanced Acct,3
202108,ACCT 5001,Financial Report and Analysis,3
202108,ACCT 7700,Accounting Policy and Research,3
202108,ACCT 7650,Special Topics in Accounting,3
202108,ACCT 7640,Accounting in Practice,3
202108,ACCT 7320,Accounting Systems Foundations,1.5
202108,ACCT 7999,Direct Sty Acc,9
202108,ACCT 5990,Directed Study in Accounting,6
202108,ACCT 7020,Intermediate Accounting III,3
202108,ACCT 7420,Partnership Tax,3
202108,ACCT 9120,Cap Mkt Acc Res,3
202108,ACCT 7660,Professional Ethics,3
202108,ADPR 3100,Principles of Advertising,3
202108,ADPR 3110,Brand Storytelling,3
202108,ADPR 3120,Media Strategy and Activation,3
202108,ADPR 3520,Graphic Communications,3
202108,ADPR 3850,Public Relations,3
202108,ADPR 5140,Advt and Society,3
202108,ADPR 5950,Public Relations Campaigns,3
202108,ADPR 5920,Public Relations Communication,3
202108,ADPR 5740,Advertising-Commun Campaigns,3
202108,ADPR 7950,Public Relations Campaigns,3
202108,ADPR 5710,Advertising Communication Mgmt,3
202108,ADPR 5520,Adv Graphics of Communication,3
202108,ADPR 5910,Public Relations Management,3
202108,ADPR 5760,Digital and Social Comm Strate,3
202108,ADPR 5011,Public Relations Internship,3
202108,ADPR 5010,Advt Internship,3
202108,ADPR 5170,Advan Studies Ad-pr,1
202108,ADPR 3860,Intro Public Affairs Comm,3
202108,ADPR 5110,ADPR Health,3
202108,ADPR 5120,Crisis Communication,3
202108,ADPR 7760,Digital and Social Comm Strate,3
202108,ADPR 3520E,Graphic Communications,3
202108,ADPR 5750,Social Media Analytics,3
202108,ADPR 7740,Advertising-Commun Campaigns,3
202108,ADPR 3515,Foundations of Graphic Comm,3
202108,ADPR 3400,Insights and Analytics,3
202108,ADPR 5741,Integrated ADPR Campaigns,3
202108,ADPR 7741,Integrated ADPR Campaigns,3
202108,ADPR 7750,Social Media Analytics,3
202108,ADPR 3400E,Insights and Analytics,3
202108,ADPR 5990,Seminar in ADPR,3
202108,ADPR 5930E,PR Ethics Diversity Leadership,3
202108,ADPR 7930E,PR Ethics Diversity Leadership,3
202108,ADPR 3850H,Public Relations Honors,3
202108,ADPR 5130,Sports Communication,3
202108,ADSC 3550,Behav Domestic Anim,3
202108,ADSC 2000,Animal Practicum,3
202108,ADSC 2000L,Animal Pract Lab,0
202108,ADSC 2010,Intro Animal and Dairy Science,3
202108,ADSC 2300,Companion Animal Care,3
202108,ADSC 3130,Anim Biotech,3
202108,ADSC 3200,Eval Composit Lvstk,3
202108,ADSC 3200L,Eval Composit Lab,0
202108,ADSC 3610,Pork Production and Management,3
202108,ADSC 3610L,Pork Production and Mgmt Lab,0
202108,ADSC 3700,Sp Prob Ads,6
202108,ADSC 3400,Phys Reprod,3
202108,ADSC 3620,Dairy Cattle Production Mgmt,3
202108,ADSC 3620L,Dairy Cattle Production Mgmt L,0
202108,ADSC 3910,Internship in ADS I,3
202108,ADSC 4370,Monogastric Nutr,3
202108,ADSC 6370,Monogastric Nutr,3
202108,ADSC 4390,Equine Nutrition,3
202108,ADSC 6390,Equine Nutrition,3
202108,ADSC 4430,Equine Exer Phys,3
202108,ADSC 6430,Equine Exer Phys,3
202108,ADSC 4960,Undergrad Research in ADSC I,6
202108,ADSC 3710,Undergrad Teach,3
202108,ADSC 3810,Ads Orientation,1
202108,ADSC 7000,Master-s Research,18
202108,ADSC 7300,Master-s Thesis,9
202108,ADSC 7990,Teach Practicum,2
202108,ADSC 8886,Cur Lit Anim Breed,3
202108,ADSC 8888,Cur Lit Stem Cell,1
202108,ADSC 9000,Doctoral Research,18
202108,ADSC 9300,Doctoral Dissertation,9
202108,ADSC 6360,Ruminant Nutr,3
202108,ADSC 8700,Spec Prob in Ads I,3
202108,ADSC 8710,Spec Prob in Ads II,3
202108,ADSC 4430L,Equine Exer Phys,0
202108,ADSC 6430L,Equine Exer Phys,0
202108,ADSC 4390L,Equine Nutrition L,0
202108,ADSC 6390L,Equine Nutrition L,0
202108,ADSC 6361E,Advanced Ruminant Nutrition,3
202108,ADSC 3920,ADS Internship II,3
202108,ADSC 3210,Lvstk Eval Selec,2
202108,ADSC 3210L,Lvstk Eval Sel Lab,0
202108,ADSC 4970,Undergrad Research in ADSC II,6
202108,ADSC 6371E,Adv Non-Ruminant Nutrition,3
202108,ADSC 8210,Adva Stat Anim Bred,3
202108,ADSC 4310,Quant Feeding Lvsk,4
202108,ADSC 4310L,Quant Feeding Lab,0
202108,ADSC 8884,Curr Lit Nonruminan,1
202108,ADSC 8800,Graduate Seminar,1
202108,ADSC 4980,Undergrad Research in ADSC III,6
202108,ADSC 3660,Aquaculture,3
202108,ADSC 3660L,Aquaculture Lab,0
202108,ADSC 8150,Gastro Microbial Ecol of Rumin,3
202108,ADSC 3270,Adv Dy Catt Eval,2
202108,ADSC 3270L,Adv Dy Eval Lab,0
202108,ADSC 2400,Intro Regenerative Bioscience,3
202108,ADSC 4960R,Undergraduate Research I,6
202108,ADSC 8000,Stat Genetics,3
202108,ADSC 4960R,Undergraduate Research I,3
202108,ADSC 4150,Micro Ecol Rumen,3
202108,ADSC 4820,Sen Sem Ads,1
202108,ADSC 2520,Animal Welfare,3
202108,ADSC 2020,Animals in Society,3
202108,ADSC 3600,Beef Cattle Production Mgmt,3
202108,ADSC 3600L,Beef Cattle Production Mgmt L,0
202108,ADSC 6150,Micro Ecol Rumen,3
202108,ADSC 3180,Meats Judging I,2
202108,ADSC 3180L,Meats Jud I Lab,0
202108,ADSC 8230,Food Chemoreception,3
202108,ADSC 8200,Comp Tech Anim Bree,3
202108,ADSC 6890,Advanced Meat Science,3
202108,ADSC 2500L,Beg Horsemanship,2
202108,ADSC 2810,Veterinary Medicine Profession,2
202108,ADSC 4970R,Undergraduate Research II,6
202108,ADSC 4980R,Undergraduate Research III,6
202108,ADSC 8885,Current Lit Ruminant Nutrition,1
202108,ADSC 8120,Exp Methods in Animal Biotech,3
202108,ADSC 8120L,Exp Method Animal Biotech Lab,0
202108,AENG 4910,Capstone Design I,2
202108,AENG 2100,Principles of Systems Engr,3
202108,AENG 4140,Systems Modeling,3
202108,AENG 6140,Systems Modeling,3
202108,AENG 3540,Physical Unit Operations,3
202108,AESC 6920S,FOCUS Service Learning Exper,3
202108,AESC 2050,Effects of Global Agriculture,3
202108,AESC 4950,Spec Prob in Aesc,3
202108,AESC 3920,Agr Env Sci Intern,3
202108,AESC 4920S,FOCUS Service Learning Exper,3
202108,AESC 6100,Applied Agricultural Data Sci,3
202108,AESC 8220,Adv Topics in Aesc,3
202108,AFAM 2000,Intro African American Studies,3
202108,AFAM 4260,The Black and Green Atlantic,3
202108,AFAM 6260,The Black and Green Atlantic,3
202108,AFAM 4884,21st Century Black Writers,3
202108,AFAM 2820,Race and Ethnicity in America,3
202108,AFAM 3101,Early Afr Ame Exper,3
202108,AFAM 8720,African Am Sem,3
202108,AFAM 4580,Topics Afri Amer Soci and Hlth,3
202108,AFAM 4480,Hist African Amer Dram Theater,3
202108,AFAM 6480,Hist African Amer Dram Theater,3
202108,AFAM 7770,Teach Afam,3
202108,AFAM 8960,Directed Reading,9
202108,AFAM 4850,Dir Maj Proj Aam,9
202108,AFAM 4860,Afr Hispanic Ident,3
202108,AFAM 6860,Afr Hispanic Ident,3
202108,AFAM 3230,Develop African American Lit,3
202108,AFAM 2600,Black Diaspora Lit,3
202108,AFAM 2020,African Am Society,3
202108,AFAM 7500,Grad Intro Afam,3
202108,AFAM 3102,Mod Afr Amer Exper,3
202108,AFAM 4250,African American Seminar,3
202108,AFAM 6250,African American Seminar,3
202108,AFAM 3005,Race Technology and the Body,3
202108,AFAM 4600,Health Among Black Americans,3
202108,AFST 2100,Introduction to Africa,3
202108,AFST 6200,Critical Issues Contemp Africa,3
202108,AFST 3990,Directed Study African Studies,3
202108,AFST 3001,The Swahili and the World I,3
202108,AFST 1200,Intro to Study of African Reli,3
202108,AFST 4260,The Black and Green Atlantic,3
202108,AFST 6260,The Black and Green Atlantic,3
202108,AFST 3820,Reflections on Fighting Hunger,3
202108,AFST 3004,Global Christianity,3
202108,AFST 8960,Direct Read African Studies,9
202108,AFST 2502,Africa Since 1800,3
202108,AFST 2030,Yoruba Culture Civilization,3
202108,AFST 2501,Africa to 1800,3
202108,AFST 3545,Hist of the Sahara,3
202108,AGCM 4000,Spec Prob Ag and Env Sci Comm,3
202108,AGCM 3810,Photo Video in Ag and Env Sci,3
202108,AGCM 3200,Hist and Phil of Comm Ag Sci,3
202108,AGCM 3910,Ag and Env Sci Comm Internship,6
202108,AGCM 3400W,Writing in Ag and Env Science,3
202108,AGCM 8700,Communicating AES Innovation,3
202108,AGCM 8710,AES Communication Theory,3
202108,AGCM 2200,Comm Agric and Environ Science,3
202108,AGCM 5500,Capstone Ag and Env Sci Comm,3
202108,AGED 6340,Dev Com Prog Ag,3
202108,AGED 4360,Inst Strat in Ag Ed,3
202108,AGED 6360,Inst Strat in Ag Ed,3
202108,AGED 4010,Clinical Experience in AGED,3
202108,AGED 4350,Curr Plan in Ag Ed,3
202108,AGED 6350,Curr Plan in Ag Ed,3
202108,AGED 6010,Clinical Experience in AGED,3
202108,AGED 4340,Dev Com Prog Ag,3
202108,AGED 6370,Agricultural Science for Teach,3
202108,AGED 2001,Teaching with Animals,3
202108,AGED 4380,Ag Ed Lab Methods,3
202108,AGED 4000,Direct Proj Educ,3
202108,AGED 3910,Internship in Agricultural Ed,3
202108,AGED 5460,Student Teaching in Ag Ed,6
202108,AGED 7020E,Methods of Instruction,3
202108,AGED 4361,Methods of Elementary Agriscie,3
202108,AGED 6361,Methods of Elementary Agriscie,3
202108,AGED 7460,Student Teaching in Ag Ed,12
202108,AIRS 1001,Foundatns of USAF I,1
202108,AIRS 2001,Air Power History I,1
202108,AIRS 3001,Af Ldrshp Studies I,3
202108,AIRS 4001,Natl Sec Affairs I,3
202108,AIRS 1001L,Leader Lab I GMC,1
202108,AIRS 2001L,Leader Lab I GMC,1
202108,AIRS 3001L,Leader Lab I Poc,1
202108,AIRS 4001L,Leader Lab I Poc,1
202108,ALDR 7000,Master-s Research,12
202108,ALDR 7300,Master-s Thesis,6
202108,ALDR 7110E,Special Problems Ag Leadership,3
202108,ALDR 7100,Directed Study Ag Leadership,3
202108,ALDR 3900S,Leadership,3
202108,ALDR 3910,Intern Leadership,3
202108,ALDR 4080,Agriculture Extension Admin,3
202108,ALDR 6080,Agriculture Extension Admin,3
202108,ALDR 3820,Reflections on Fighting Hunger,3
202108,ALDR 3000,Leadership in Groups and Teams,3
202108,ALDR 9000,Doctoral Research,9
202108,ALDR 8350E,Program Evaluation,3
202108,ALDR 7005,Graduate Student Seminar,3
202108,ALDR 9005,Doctoral Grad Student Seminar,3
202108,ALDR 8510,Leadership in a Global Society,3
202108,AMSL 1010,American Sign Language I,3
202108,AMSL 1020,American Sign Language II,3
202108,AMSL 2010,American Sign Language III,3
202108,AMSL 2020,American Sign Language IV,3
202108,AMSL 4010,AMSL Peer Learning Assistant,3
202108,AMSL 2020E,American Sign Language IV,3
202108,ANNU 8390,Nutrition Seminar,1
202108,ANNU 8340,Proteins Amino Acids Anim Nutr,2
202108,ANTH 1102,Introduction to Anthropology,3
202108,ANTH 2120H,Intro to Anthropology Honors,3
202108,ANTH 3900,Professional Development,3
202108,ANTH 8500,Sem Ecol Anth,3
202108,ANTH 4261,Museum Natural History Intern,3
202108,ANTH 6490,Found Ecol Anth,3
202108,ANTH 6520,Hist Anth Theory,3
202108,ANTH 9005,Doc Grad Stu Sem,3
202108,ANTH 8200,Seminar Archaeology,3
202108,ANTH 2100,Introduction to Africa,3
202108,ANTH 9300,Doctoral Dissertation,12
202108,ANTH 8755,Current Topics in Research,2
202108,ANTH 9000,Doctoral Research,12
202108,ANTH 7000E,Master-s Research,12
202108,ANTH 8000E,Special Topics in Anthropology,12
202108,ANTH 7300,Master-s Thesis,12
202108,ANTH 3030,Afr Lang and Cult,3
202108,ANTH 3001,The Swahili and the World I,3
202108,ANTH 7000,Master-s Research,12
202108,ANTH 8000,Special Topics in Anthropology,15
202108,ANTH 3220,Intro Prehistoric Archaeology,3
202108,ANTH 7300E,Master-s Thesis,12
202108,ANTH 8100,Independent Research in Anthro,15
202108,ANTH 8050,Advanced Topics Anthropology,15
202108,ANTH 4110,Anth and Amrcn Relign,3
202108,ANTH 6110,Anth and Amrcn Relign,3
202108,ANTH 4730L,Human Osteology,4
202108,ANTH 2045,Intro Biological Anthropology,3
202108,ANTH 6075,Economic Anth,3
202108,ANTH 2010,Plants Pathogens and People,3
202108,ANTH 3015,Intro to Classical Archaeology,3
202108,ANTH 4915,Topics in Research,2
202108,ANTH 4960R,Undergraduate Research I,3
202108,ANTH 2045L,Intro to Biological Anthro Lab,1
202108,ANTH 3540,Multicultural Health Care,3
202108,ANTH 4075,Economic Anth,3
202108,ANTH 2800,Food Environment and Culture,3
202108,ANTH 4050,History of Anth,3
202108,ANTH 8630,Anthro Rsrch Design,3
202108,ANTH 6900,Spec Topics-Anthro,3
202108,ANTH 6210L,Zooarchaeology,4
202108,ANTH 8525,Environmental Governance,3
202108,ANTH 6050,History of Anth,3
202108,ANTH 4270,Field Studies in Conservation,1
202108,ANTH 6270,Field Studies in Conservation,1
202108,ANTH 4270,Field Studies in Conservation,2
202108,ANTH 6270,Field Studies in Conservation,2
202108,ANTH 4271,People Planet and Profit,3
202108,ANTH 6271,People Planet and Profit,3
202108,ANTH 9210,Graduate Fieldwork Experience,12
202108,ANTH 4960R,Undergraduate Research I,2
202108,ANTH 4111,Theologically Engaged Anth,3
202108,ANTH 6111,Theologically Engaged Anth,3
202108,ANTH 2002,Tombs and Temples,3
202108,ANTH 2030,Art and Science of Questions,3
202108,ANTH 3230,Material Culture Analysis,3
202108,ANTH 4310,Arch East N Amer,3
202108,ANTH 3300,Cultures of South Asia,3
202108,ANTH 4746,Primate Conservation,3
202108,ANTH 4070,Cultural Ecology,3
202108,ANTH 4340,Archaeometry,3
202108,ANTH 4670,Monumentality,3
202108,ANTH 6670,Monumentality,3
202108,ANTH 6310,Arch East N Amer,3
202108,ANTH 6340,Archaeometry,3
202108,ANTH 6730L,Human Osteology,4
202108,ANTH 6746,Primate Conservation,3
202108,ANTH 6070,Cultural Ecology,3
202108,ANTH 3090,Evol Human Ecosys,3
202108,ARAB 1001,Elem Stand Arb I,4
202108,ARAB 4100,Read and Rsch Arb,3
202108,ARAB 3005,Advanced Standard Arabic I,3
202108,ARAB 4107,Islamic Arabic I,3
202108,ARAB 6107,Islamic Arabic I,3
202108,ARAB 6100,Read and Rsch Arb,3
202108,ARAB 2003,Intermdte Arb I,3
202108,ARAB 4308,Islamic Calligraphic Art,3
202108,ARAB 6308,Islamic Calligraphic Art,3
202108,ARCH 1001,Cross Registration,0
202108,ARED 5470,Iss and Prac,3
202108,ARED 7460,Student Teaching in Art Ed,9
202108,ARED 7470,Iss and Prac,3
202108,ARED 9300,Doctoral Dissertation,9
202108,ARED 9000,Doctoral Research,9
202108,ARED 9600,Educational Research in Art Ed,9
202108,ARED 4350S,Elementary Curriculum Art Ed,3
202108,ARED 6350S,Elementary Curriculum Art Ed,3
202108,ARED 5460,Student Teaching in Art Ed,9
202108,ARED 3070,Visual Culture and Diversity,3
202108,ARED 8440,D.s. in Art Ed,3
202108,ARED 7370,Curr Theoprac in Ae,3
202108,ARED 9630,Wrt Crt Art Edu,3
202108,ARED 7650,App Project Art Edu,12
202108,ARED 8430,Topics in Art Ed,3
202108,ARED 8460,Theoretical Perspective Art Ed,3
202108,ARED 2110S,Critical Contemp Issues in Ed,3
202108,ARED 7230,Special Problems in Art Ed I,3
202108,ARGD 2010,Graphic Design Survey,3
202108,ARGD 3060,Type and Image,3
202108,ARGD 3310,Technique Topic Science Illust,3
202108,ARGD 3330,Color Sci Ill,3
202108,ARGD 4060,Design Center,3
202108,ARGD 3030,Typography,3
202108,ARGD 4020,Environ and Experien Graph Des,3
202108,ARGD 4080,Sp Prob in Design,3
202108,ARGD 3070E,History of Graphic Design,3
202108,ARGD 3340,Dir Stu Sci Ill,3
202108,ARGD 2030,Introduction to Typography,3
202108,ARGD 4190,Digital Platforms I,3
202108,ARHI 7000,Master-s Research,12
202108,ARHI 7300,Master-s Thesis,12
202108,ARHI 2300,Art History I,3
202108,ARHI 2311H,Art History I Honors,3
202108,ARHI 2400,Art History II,3
202108,ARHI 4995,Museum Internship,3
202108,ARHI 3065,Mod Art,3
202108,ARHI 3530,Modern Photography,3
202108,ARHI 3002,Greek Art and Architecture,3
202108,ARHI 3054,18c European Art,3
202108,ARHI 4100,Early Medieval Art,3
202108,ARHI 6100,Early Medieval Art,3
202108,ARHI 8990,Seminar American,3
202108,ARHI 4510,Europe: 1886-1918,3
202108,ARHI 6510,Europe: 1886-1918,3
202108,ARHI 4530,19th C Photography,3
202108,ARHI 6530,19th C Photography,3
202108,ARHI 4200,15th Century Italy,3
202108,ARHI 6200,15th Century Italy,3
202108,ARHI 8400,Byzantine Art,3
202108,ARHI 4008,Roman Sculpture,3
202108,ARHI 6008,Roman Sculpture,3
202108,ARHI 8120,DS Art History,3
202108,ARHI 6950,Independent Study,3
202108,ARHI 6970,Art History Field Study,3
202108,ARHI 3022,Byzantine Art,3
202108,ARHI 3100,Asian Art,3
202108,ARHI 4000,Hell Grk Art,3
202108,ARHI 4410,Early American Art,3
202108,ARHI 4916,Topics 18th and 19th-Cent Art,3
202108,ARHI 6000,Hell Grk Art,3
202108,ARHI 6410,Early American Art,3
202108,ARHI 6916,Topics 18th and 19th-Cent Art,3
202108,ARHI 8580,Seminar Renaissance,3
202108,ARHI 8920,Seminar 20th Cen,3
202108,ARHI 8950,Sem in Cont Art,3
202108,ARHI 8110,Special Problems,3
202108,ARHI 4950,Independent Study,3
202108,ARHI 3020,Renaissance Art,3
202108,ARID 3330,Lighting Design,3
202108,ARID 2110,Studio I Single Fam Res Design,3
202108,ARID 3120,Studio III,3
202108,ARID 3125,Internship Preparation,1
202108,ARID 4110,Studio V,4
202108,ARID 4080,Dir Stu in Int Des,3
202108,ARID 2020,Concepts Studio,3
202108,ARID 3320,Interior Finishes and Material,3
202108,ARID 3210,Design History I,3
202108,ARID 4350,Interior Design Practicum,3
202108,ARID 3220,Design History II,3
202108,ARST 1040,Proseminar in Art,1
202108,ARST 2600,Intro Jewelry and Metals,3
202108,ARST 1050,Drawing I,3
202108,ARST 1060,Color-Composition,3
202108,ARST 1080,Three-Dimensional Design,3
202108,ARST 2000,Introduction to Figure Drawing,3
202108,ARST 2010,Drawing and Visuality,3
202108,ARST 2100,Intro Painting and Visuality,3
202108,ARST 3010,Advanced Drawing,3
202108,ARST 3140,Painting Studio Concepts,3
202108,ARST 4020,Figure Drawing Anatomy,3
202108,ARST 3200,Black and White Photography,3
202108,ARST 4200,Adv Photo Expanded Media,3
202108,ARST 2400,Fundamentals of Sculpture,3
202108,ARST 4380,Dir Stu in Print,3
202108,ARST 7380,Dir Stu in Prtmkg,3
202108,ARST 7980,Dr St Maj Std Area,3
202108,ARST 2500,Introduction to Ceramics,3
202108,ARST 3500,Intermed Ceramics,3
202108,ARST 4500,Advanced Ceramics,3
202108,ARST 3550,Intermed Pottery,3
202108,ARST 4580,Dir Stu in Ceramics,3
202108,ARST 2700,Textile Foundations,3
202108,ARST 3700,Weaving I,3
202108,ARST 3730,Screen-Printing,3
202108,ARST 3760,Advanced Studio Practices,3
202108,ARST 4700,CAD for Textiles,3
202108,ARST 2810,Hypermedia,3
202108,ARST 6800,Special Topics in Art and Tech,3
202108,ARST 3610,Jewelry Movement,3
202108,ARST 4600,Advanced Jewelry,3
202108,ARST 3620,Jewelry Fabrication and Set,3
202108,ARST 4680,Dir Stu in Jew-met,3
202108,ARST 7680,Dir Stu in Jewelry,3
202108,ARST 4780,Dir Stu in Fab Dis,3
202108,ARST 7780,Dir Stu in Fabric,3
202108,ARST 7180,Dir Stu in Painting,3
202108,ARST 7080,Dir Stu in Drawing,3
202108,ARST 7280,Dir Stu in Photo,3
202108,ARST 4880,Dir Stu in Dig Med,3
202108,ARST 7580,Dir Stu in Cer,3
202108,ARST 4140,Advanced Studio Concepts,3
202108,ARST 4080,Dir Stu in Drawing,3
202108,ARST 3422,Sculpture-Space I,3
202108,ARST 4280,Dir Stu in Photo,3
202108,ARST 4180,Dir Stu in Painting,3
202108,ARST 4620,BFA Proj Jwly Mtlwk,3
202108,ARST 7620,Jewelry and Metalwork,3
202108,ARST 3305,Printmaking: Relief,3
202108,ARST 3315,Printmaking: Etching,3
202108,ARST 3335,Printmaking:  Screen Printing,3
202108,ARST 4930,Internship in Art,3
202108,ARST 4915,Thematic Inquiry,3
202108,ARST 6915,Thematic Inquiry,3
202108,ARST 8000,General Art,3
202108,ARST 7880,Directed Study in Art X,3
202108,ARST 2350,Introduction to Printmaking,3
202108,ARST 4315,Introduction to Book Arts,3
202108,ARST 4350,Letterpress,3
202108,ARST 6350,Letterpress,3
202108,ARST 4345,Advanced Print Studio,3
202108,ARST 6345,Advanced Print Studio,3
202108,ARST 2550,Ceramics Introductory Pottery,3
202108,ARST 3250,Constructed Image Photography,3
202108,ARST 4201,Adv Photo Expanded Media II,3
202108,ARST 4210,Special Topics in Photography,3
202108,ARST 7210,Special Topics,3
202108,ARST 3210,Color Photography,3
202108,ARST 2020,Ideation and Methodologies,3
202108,ARST 3205,Video Concepts and Practice,3
202108,ARST 4610,Advanced Metalwork,3
202108,ARST 7480,Sculpture Dir Study,3
202108,ARST 4480,Sculpture Dir Study,3
202108,ARST 9210,Grad Exit Studio,3
202108,ARST 3800,Transmedia,3
202108,ARST 4100,Painting - Dir Stu,3
202108,ARST 4420,Sculpture Space II,3
202108,ARST 6500,Advanced Ceramics,3
202108,ARST 1050H,Drawing I Honors,3
202108,ARST 7900,Graduate Research Studio,3
202108,ARST 6315,Introduction to Book Arts,3
202108,ARST 3810,Cad and Fabrication I,3
202108,ARST 3830,Digital Video I,3
202108,ARST 3470,Wood - Sculpture,3
202108,ARST 4995,Capstone Exhibition,3
202108,ARST 7630,Jewelry,3
202108,ARST 7640,Metalwork,3
202108,ARST 7650,Metalwork,3
202108,ARST 2205,Intro Photo and Image Culture,1
202108,ARST 2205L,Intro Photo Image Culture Lab,2
202108,ARST 4250,Constructed Image,3
202108,ARST 3130,Intro to Figure Painting,3
202108,ARST 3150,Figure Painting,3
202108,ARST 4830,Digital Video II,3
202108,ARST 2005,Sculpt Draw Figure,3
202108,ARST 7000,Master-s Research,3
202108,ARST 6980,Directed Study Art and Design,3
202108,ARST 7510,Tech Prob Cer,3
202108,ARST 3630,Jewelry the Multiple,3
202108,ARST 3670,Material Topics Enameling,3
202108,ARST 4810,Cad and Fabrication,3
202108,ARST 6810,Cad and Fabrication,3
202108,ARST 3400,Construct I,3
202108,ARST 3498,The Object,3
202108,ARST 7230,Grad Photography I,3
202108,ARST 7240,Grad Photo II,3
202108,ARST 6020,Fig Drawing-anat,3
202108,ARST 3640,Jewelry Hist and Trad Tech,3
202108,ARST 3325,Printmaking: Lithography,3
202108,ARST 3115,Paint Color and Application,3
202108,ARST 3345,Digital Printmaking,3
202108,ARST 3410,Construct II,3
202108,ARST 7110,Painting,3
202108,ARST 7530,Ind Res Cer,3
202108,ARST 2110,Interm Painting,3
202108,ARST 3110,Transp Watercolor,3
202108,ARST 2210,Intro Photo and Image Culture,3
202108,ARTI 4950,Dir Reading Cog Sci,9
202108,ARTI 3550,Intro to Cognitive Science,3
202108,ARTI 7007,Intern AI Bus-ind,3
202108,ARTI 4540,Symbolic Prog,3
202108,ARTI 7000,Master-s Research,9
202108,ARTI 7300,Master-s Thesis,9
202108,ARTI 8000,Topics in Artificial Intell,3
202108,ARTI 8800,Directed Reading Artif Intel,5
202108,ARTI 4530,Introduction to Robotics,4
202108,ARTI 6530,Introduction to Robotics,4
202108,ARTI 6950,Faculty Research Seminar,1
202108,ARTI 4960R,Undergraduate Research I,6
202108,ARTS 7990,Teaching Practicum,3
202108,ARTS 9010,Dir Study Art Hist,9
202108,ARTS 9005,Doc Grad Stu Sem,3
202108,ARTS 9000,Doctoral Research,12
202108,ARTS 7005,Grad Student Sem,3
202108,ARTS 9300,Doctoral Dissertation,12
202108,ARTS 2000,Art Appreciation,3
202108,ARTS 2050,Cult Div Am Art,3
202108,ARTS 8900,Graduate Exit Seminar,3
202108,ARTS 2100E,Strategic Visual Thinking,3
202108,ARTS 2100,Strategic Visual Thinking,3
202108,ARTS 8100,Grad Sem Art,3
202108,ASTR 1010,Astronomy of the Solar System,3
202108,ASTR 1110,Intro Astronomy for Majors I,3
202108,ASTR 1110H,Introduction to Astronomy Hon,3
202108,ASTR 8210,Astronomy Seminar,1
202108,ASTR 1010L,Astronomy of Solar System Lab,1
202108,ASTR 1020L,Stellar and Galactic Astro Lab,1
202108,ASTR 1110L,Intro to Astronomy Lab Honors,1
202108,ASTR 2030L,Intro Astronomical Observation,1
202108,ASTR 1020,Stellar and Galactic Astronomy,3
202108,ASTR 3010,Astro Observ I,3
202108,ASTR 4330,Astronomy Seminar,1
202108,ASTR 6330,Astronomy Seminar,1
202108,ASTR 4960R,Undergraduate Research I,6
202108,ASTR 1660,History of Astron,3
202108,ASTR 4020,Astr II Galaxies,3
202108,ASTR 6020,Astr II Galaxies,3
202108,ATSC 1112,Intro to Weather and Climate,3
202108,ATSC 1112L,Intro Weather and Climate Lab,1
202108,ATSC 3120,Weather Analysis and Forecast,3
202108,ATSC 3120L,Weather Analysis Forecast Lab,0
202108,ATSC 4910,Capstone in ATSC,1
202108,ATSC 4112,Atmospheric Dynamics,3
202108,ATSC 6112,Atmospheric Dynamics,3
202108,ATSC 4121,Weather Forecasting Seminar,1
202108,ATSC 6121,Weather Forecasting Seminar,1
202108,ATSC 4155,Hydrometeorology,3
202108,ATSC 6155,Hydrometeorology,3
202108,ATSC 4970R,Undergraduate Research II,3
202108,ATSC 4140,Satellite Meteor and Climatol,3
202108,ATSC 6140,Satellite Meteor and Climatol,3
202108,ATSC 4160,Applied Climatology Urban Envi,3
202108,ATSC 6160,Applied Climatology Urban Envi,3
202108,ATSC 4150,Physical Climatology,3
202108,ATSC 6150,Physical Climatology,3
202108,ATSC 3135,Hidden Figures Atmospher Sci,3
202108,ATSC 3990,Internship in ATSC,3
202108,ATTR 6510,Clin Eval Treat Spine Trunk,4
202108,ATTR 6520,Clin Eval Treat Brain,3
202108,ATTR 6200,Clinical Medicine I,3
202108,ATTR 7010,Evidence-Based Practice I,1
202108,ATTR 7810,Clinical Education II,3
202108,BCHE 2910,Intro to Biochem Engr Design,3
202108,BCHE 3145,Equilibrium Thermodynamics,3
202108,BCHE 4910,Capstone Design I,2
202108,BCHE 3520,Mass Transport and Rate Phenom,3
202108,BCHE 4655,Meta Engr Syn Bio,3
202108,BCHE 6655,Meta Engr Syn Bio,3
202108,BCHE 4550,Bioprocess Des and Simulation,3
202108,BCHE 6550,Bioprocess Des and Simulation,3
202108,BCHE 8970,Bioengineering Seminar,1
202108,BCHE 4520,Biochemical Separation Process,3
202108,BCHE 6520,Biochemical Separation Process,3
202108,BCHE 7000,Master-s Research,9
202108,BCHE 7010,Project Msresearch,6
202108,BCHE 4960R,Undergraduate Research I,6
202108,BCHE 8150,Kinetics Reactor Design,3
202108,BCHE 4970R,Undergraduate Research II,2
202108,BCHE 4960R,Undergraduate Research I,2
202108,BCHE 6030L,Bioprocess Technology,4
202108,BCMB 8070,Research Discussion,1
202108,BCMB 8080,Current Literature in BCMB,1
202108,BCMB 9000,Doctoral Research,15
202108,BCMB 9300,Doct Dissertation,15
202108,BCMB 3100,Intro Biochem and Molec Biol,4
202108,BCMB 4010,Biochem and Molecular Biol I,4
202108,BCMB 6010,Biochem and Molecular Biol I,4
202108,BCMB 4110,Physical Biochemistry,3
202108,BCMB 6110,Physical Biochemistry,3
202108,BCMB 4120,Human Biochemistry,4
202108,BCMB 6120,Human Biochemistry,4
202108,BCMB 6000,Biochem and Mol Biol,3
202108,BCMB 8060,Bioc and Mol Biol Sem,2
202108,BCMB 4190,Introductory NMR,3
202108,BCMB 8210,Comp Methods,3
202108,BCMB 6190,Introductory NMR,3
202108,BCMB 8189,NMR Spectroscopy,3
202108,BCMB 4030L,Bioprocess Technology,4
202108,BCMB 7000,Master-s Research,12
202108,BCMB 7300,Master-s Thesis,10
202108,BCMB 8213,Adv Genetics Cell Bio Biochem,2
202108,BCMB 8214,Adv Genetics Cell Bio Biochem,2
202108,BCMB 3150,Special Topics,3
202108,BCMB 4030H,Bioprocess Technology Honors,4
202108,BCMB 8180,Bioimaging Methods,3
202108,BCMB 4965L,Team-Based Research,2
202108,BCMB 4960R,Undergraduate Research I,4
202108,BCMB 4960R,Undergraduate Research I,6
202108,BCMB 4970R,Undergraduate Research II,6
202108,BCMB 4980R,Undergraduate Research III,4
202108,BCMB 4970R,Undergraduate Research II,4
202108,BCMB 4980R,Undergraduate Research III,6
202108,BCMB 4990R,Undergraduate Thesis,6
202108,BCMB 4990R,Undergraduate Thesis,4
202108,BCMB 4965R,Team-Based Research,2
202108,BCMB 8990,Prob Biocandmol Biol,5
202108,BCMB 7000,Master-s Research,4
202108,BCMB 8150,Cell Signaling,3
202108,BHSI 7000,Master-s Research,12
202108,BHSI 8040,Lab Group Meeting,1
202108,BHSI 7800,Mbb Internship,9
202108,BHSI 9000,Doctoral Research,18
202108,BHSI 9300,Doctoral Dissertation,12
202108,BHSI 8900,Sem in Neuroscience Immunology,1
202108,BHSI 8030,Neuro Immunology Literature,1
202108,BHSI 9100,Neuroscience Teaching Intern,10
202108,BINF 8060,Binf Sem,1
202108,BINF 8970,Curr Topics Resch,2
202108,BINF 9000,Doctoral Research,18
202108,BINF 9300,Doct Dissertation,12
202108,BINF 8210,Comp Methods,3
202108,BINF 8061,Directed Study Research Comm,1
202108,BINF 7000,Master-s Research,12
202108,BINF 7300,Master-s Thesis,9
202108,BINF 7990,Directed Study,4
202108,BINF 8900L,Bioinformatics Lb R,3
202108,BINF 8500,Bioinformatics Algorithms,3
202108,BINF 8600,Introduction to Grant Writing,1
202108,BINF 8940,App Genome Analysis,3
202108,BINF 4550,Bioinformatics and Omics,3
202108,BINF 6550,Bioinformatics and Omics,3
202108,BINF 7800,Internship for Bioinformatics,3
202108,BINF 8980,Case Studies Systems Biology,4
202108,BIOE 3720,Engineering Physiology,3
202108,BIOE 4625,Tissue Engineering,3
202108,BIOE 4740,Biomaterials,3
202108,BIOE 6740,Biomaterials,3
202108,BIOE 6720,Biomedical Device Design,3
202108,BIOE 8530,Advanced Biomedical Instrument,3
202108,BIOE 4910,Capstone Design I,2
202108,BIOE 4720,Biomedical Device Design,3
202108,BIOE 4760,Biomechanics,3
202108,BIOE 6760,Biomechanics,3
202108,BIOE 4960R,Undergraduate Research I,4
202108,BIOE 4960R,Undergraduate Research I,6
202108,BIOE 8510,Syst Mode of Phys and Pharm,3
202108,BIOE 4780,Regulations and Ethics in BME,3
202108,BIOE 6780,Regulations and Ethics in BME,3
202108,BIOE 8980,Adv Topics in Biological Engr,3
202108,BIOE 4960R,Undergraduate Research I,2
202108,BIOE 4970R,Undergraduate Research II,3
202108,BIOE 4980R,Undergraduate Research III,3
202108,BIOE 2100,Bioengineering Prof Persona,3
202108,BIOE 4750,Biomedical Engineering Lab,3
202108,BIOL 1103,Concepts in Biology,3
202108,BIOL 1104,Organismal Biology,3
202108,BIOL 4940,Biology Internship,3
202108,BIOL 4960,Undergrad Research in Biology,4
202108,BIOL 1107,Principles of Biology I,3
202108,BIOL 3110L,Basic Skills in the Laboratory,4
202108,BIOL 1108,Principles of Biology II,3
202108,BIOL 4980,Undergrad Research in Biology,4
202108,BIOL 4050,Mammalogy,3
202108,BIOL 6050,Mammalogy,3
202108,BIOL 4050L,Mammalogy Lab,1
202108,BIOL 6050L,Mammalogy Lab,1
202108,BIOL 4261,Museum Natural History Intern,3
202108,BIOL 7040,Electron Microscopy,3
202108,BIOL 7050L,Electron Micro Lab,3
202108,BIOL 3900,Readings in Bio,2
202108,BIOL 1103L,Concepts in Biology Laboratory,1
202108,BIOL 1104L,Organismal Biology Laboratory,1
202108,BIOL 1108L,Principles of Biology II Lab,1
202108,BIOL 1107L,Principles of Biology I Lab,1
202108,BIOL 4910,Advanced Topics,1
202108,BIOL 4970,Undergrad Research in Biology,4
202108,BIOL 3900H,Readings in Bio H,1
202108,BIOL 2108H,Principle of Biology II Honors,3
202108,BIOL 2108L,Principles of Biology II Lab H,1
202108,BIOL 3910,Topics in Biology,1
202108,BIOL 3900,Readings in Bio,3
202108,BIOL 2103H,Basic Concepts in Biology Hon,3
202108,BIOL 4990R,Undergraduate Thesis,3
202108,BIOL 4990R,Undergraduate Thesis,4
202108,BIOL 4960R,Undergraduate Research I,4
202108,BIOL 4960R,Undergraduate Research I,3
202108,BIOL 4970R,Undergraduate Research II,4
202108,BIOL 4980R,Undergraduate Research III,4
202108,BIOL 4980R,Undergraduate Research III,2
202108,BIOL 4970R,Undergraduate Research II,3
202108,BIOL 4970R,Undergraduate Research II,2
202108,BIOL 4980R,Undergraduate Research III,3
202108,BIOL 4200W,Science and Health Writing,3
202108,BIOL 4300W,Scientific Research Writing,3
202108,BIOL 3900,Readings in Bio,1
202108,BIOL 1113E,Concepts in Bio Lab Online,1
202108,BIOL 3700W,Animal Behavior,3
202108,BIOL 2107H,Principles of Biology I Honors,3
202108,BIOS 4380,Survival Analysis,3
202108,BIOS 6380,Survival Analysis,3
202108,BIOS 8110,Categorical Data,3
202108,BIOS 2010,Elementary Biostatistics,4
202108,BIOS 3000,Intermed Biostat for Pub Hlth,3
202108,BIOS 8010,Regression and Anova,3
202108,BIOS 7020,Intro Biostat II,3
202108,BIOS 7010E,Introductory Biostatistics I,3
202108,BIOS 7010,Introductory Biostatistics I,3
202108,BIOS 8050,Intermed Math Stat,3
202108,BIOS 8130,Multivariate Design,3
202108,BIOS 9000,Doctoral Research,18
202108,BIOS 8910,Problems in Biostat,3
202108,BIOS 8200,Biosatistical Consulting I,2
202108,BIOS 8310,Advanced Biostatistical Infere,3
202108,BIOS 9100,Biostatistics Graduate Seminar,1
202108,BIOS 8030,Longitudinal Data Analysis,3
202108,BIOS 8060E,Modern Applied Data Analysis,3
202108,BIOS 9300,Doct Dissertation,12
202108,BTEC 3000,Ethics and Comm in Biotech,2
202108,BTEC 3910,BTEC Internship,3
202108,BTEC 4960,Indepen Rsch in Appl Biotech,4
202108,BUSN 4000,Predictive Model Optimization,3
202108,BUSN 7990,Directed Study in Business,3
202108,BUSN 7800,Business Internship,3
202108,BUSN 4650,Diversity in a Global Environ,3
202108,BUSN 7900,Strategy Ex and Career Success,3
202108,BUSN 3700,Principles of FinTech,3
202108,BUSN 7990,Directed Study in Business,2
202108,BUSN 7900,Strategy Ex and Career Success,1.5
202108,BUSN 7990,Directed Study in Business,9
202108,BUSN 4000E,Predictive Model Optimization,3
202108,BUSN 4900,Comm for Business Effective,3
202108,BUSN 5000,Intro to Data Science for Busn,3
202108,BUSN 3000,App Stat and Data Analy Bus,3
202108,BUSN 3000H,App Stat and Data Analy Bus H,3
202108,BUSN 4400,Bus Sys Tech Innovation,3
202108,BUSN 5001,Special Topics in Business,3
202108,CBIO 2210,Anat and Physiol II,4
202108,CBIO 3400,Cell Biology,4
202108,CBIO 3410L,Lab in Cellular and Devel Biol,4
202108,CBIO 4100,Immunology,4
202108,CBIO 4990,FY Seminar Cell Bio,1
202108,CBIO 2210L,Anat and Phys Lab II,0
202108,CBIO 2200L,Anatomy and Physiology Lab I,0
202108,CBIO 2200,Anatomy and Physiology I,4
202108,CBIO 6100,Immunology,4
202108,CBIO 9000,Doctoral Research,18
202108,CBIO 7000,Master-s Research,18
202108,CBIO 9300,Doct Dissertation,15
202108,CBIO 9030,Current Lit Cellular Biology,1
202108,CBIO 9040,Laboratory Group Meeting,1
202108,CBIO 7300,Master-s Thesis,15
202108,CBIO 4980,Research in Cellular Biology,4
202108,CBIO 4310,Neural Development,3
202108,CBIO 6310,Neural Development,3
202108,CBIO 9070,Current Topics in Cellular Bio,1
202108,CBIO 8920L,Cellular Bio Res,2
202108,CBIO 9010,Prob Cell Biol,3
202108,CBIO 3600,Developmental Biology,4
202108,CBIO 3010,Functional Human Anatomy,4
202108,CBIO 3010L,Functional Human Anatomy Lab,0
202108,CBIO 4040,Laboratory Group Meeting,1
202108,CBIO 8213,Adv Genetics Cell Bio Biochem,2
202108,CBIO 8214,Adv Genetics Cell Bio Biochem,2
202108,CBIO 4960,Directed Reading or Research,4
202108,CBIO 8480,Adv Topics Cell Bio,5
202108,CBIO 3710,Principles of Physiology,3
202108,CBIO 7360,CB Teaching Intern,1
202108,CBIO 4980R,Undergraduate Research III,4
202108,CBIO 4970R,Undergraduate Research II,6
202108,CBIO 4980R,Undergraduate Research III,6
202108,CBIO 4960R,Undergraduate Research I,6
202108,CBIO 4990R,Undergraduate Thesis,6
202108,CBIO 4960R,Undergraduate Research I,2
202108,CBIO 4500,Medical Parasitology,3
202108,CBIO 6500,Medical Parasitology,3
202108,CBIO 4100D,Immunology Discussion Group,0
202108,CBIO 6100D,Immunology Discussion Group,0
202108,CBIO 4200,Biomed Research Health Disease,3
202108,CHEM 9300,Doct Dissertation,10
202108,CHEM 9005,Doc Grad Stu Sem,3
202108,CHEM 9000,Doctoral Research,15
202108,CHEM 8930,Intro Quantum Chem,3
202108,CHEM 7300,Master-s Thesis,10
202108,CHEM 8100,Intro Grad Seminar,1
202108,CHEM 7005,Grad Student Sem,3
202108,CHEM 7000,Master-s Research,15
202108,CHEM 6000,Res Grp Mtg,1
202108,CHEM 4113,Adv Org Chem III,3
202108,CHEM 3300,Mod Instr Analysis,3
202108,CHEM 3211,Modern Physical Chemistry I,3
202108,CHEM 3110,Fundamentals of Physical Chem,3
202108,CHEM 1211,Freshman Chem I,3
202108,CHEM 1212,Freshman Chemistry II,3
202108,CHEM 1311H,Adv Freshm Chem I,3
202108,CHEM 2100,Elem Organic Chem,3
202108,CHEM 2211,Mod Organic Chem I,3
202108,CHEM 2212,Mod Org Chem II,3
202108,CHEM 2300,Quant Analyt Chem,3
202108,CHEM 2311H,Adv Org Chem I,3
202108,CHEM 2411,Adv Org Chem I,3
202108,CHEM 8310,Rxn Mechanisms,3
202108,CHEM 1211L,Freshm Chem Lab I,1
202108,CHEM 1212L,Freshman Chemistry Lab II,1
202108,CHEM 3511,Experimental Methods I,3
202108,CHEM 6190,Introductory NMR,3
202108,CHEM 8189,NMR Spectroscopy,3
202108,CHEM 1311L,Adv Prin Chem Lab I,1
202108,CHEM 1411L,Adv Mod Chem Lab I,1
202108,CHEM 2100L,Elem Org Chem Lab,1
202108,CHEM 2311L,Adv Org Lab I,1
202108,CHEM 2411L,Adv Org Lab I,1
202108,CHEM 2212L,Mod Org Chem Lab II,1
202108,CHEM 2211L,Mod Org Chem Lab I,1
202108,CHEM 2300L,Quantitat Analytical Chem Lab,1
202108,CHEM 1210,Basics of Chemistry,4
202108,CHEM 8340,Org Spectroscopy,3
202108,CHEM 8210,Group Theory,3
202108,CHEM 8120,Inorg Grad Seminar,1
202108,CHEM 8130,Org Grad Seminar,1
202108,CHEM 8140,Phys Grad Seminar,1
202108,CHEM 8150,Analyt Grad Seminar,1
202108,CHEM 1110,Elem Chemistry,3
202108,CHEM 1110L,Elem Chem Lab,1
202108,CHEM 1411,Adv Modern Chem I,3
202108,CHEM 4190,Introductory NMR,3
202108,CHEM 4100,Spec Top Org Chem,3
202108,CHEM 8860,Adv Analytical Chem,3
202108,CHEM 4970R,Undergraduate Research II,6
202108,CHEM 4990R,Undergraduate Thesis,3
202108,CHEM 4960R,Undergraduate Research I,4
202108,CHEM 4970R,Undergraduate Research II,3
202108,CHEM 4970R,Undergraduate Research II,4
202108,CHEM 4960R,Undergraduate Research I,6
202108,CHEM 4980R,Undergraduate Research III,6
202108,CHEM 3511L,Experimental Methods I Lab,0
202108,CHEM 8240,Trans Metal Chem,3
202108,CHEM 8390,Spec Topics Organic,4
202108,CHEM 8810,Mass Spectrometry,3
202108,CHEM 8970,Combustion Science,3
202108,CHEM 8920,Thermo and Stat Mech,3
202108,CHEM 8890,Spec Topics Analyt,4
202108,CHEM 8350,Phys-bio Org Chem,3
202108,CHEM 8230,Main Group Chem,3
202108,CHEM 8290,Spec Topics Inorg,4
202108,CHEM 8420,Polymer Science I,3
202108,CHEM 4615,Soft Materials,3
202108,CHNS 3010,Advanced Chinese I,3
202108,CHNS 1001,Elementary Chinese I,4
202108,CHNS 2001,Intermediate Chinese I,3
202108,CHNS 3990,Directed Study,9
202108,CHNS 4110,Adv Chinese III,3
202108,CHNS 6110,Adv Chinese III,3
202108,CLAS 1030,Medical Terminology,3
202108,CLAS 1010H,Roman Culture Honors,3
202108,CLAS 1020H,Classical Mythology (Honors),3
202108,CLAS 1010,Roman Culture,3
202108,CLAS 3000,Intro to Classical Europe,3
202108,CLAS 1020,Classical Mythology,3
202108,CLAS 8000,Proseminar,1
202108,CLAS 8020,Roman Civilization,3
202108,CLAS 1000,Greek Culture,3
202108,CLAS 4100,Ancient Roman Cities,3
202108,CLAS 6100,Ancient Roman Cities,3
202108,CLAS 4160,History of Late Antiquity,3
202108,CLAS 6160,History of Late Antiquity,3
202108,CLAS 4260,Lit of the Classical Tradition,3
202108,CLAS 6260,Lit of the Classical Tradition,3
202108,CLAS 4300,Selected Topics in Ancient Civ,3
202108,CLAS 3015,Intro to Classical Archaeology,3
202108,CLAS 4170,Env History of Greece and Rome,3
202108,CLAS 6170,Env History of Greece and Rome,3
202108,CLAS 4960R,Undergraduate Research I,3
202108,CLAS 1000H,Greek Culture Honors,3
202108,CLAS 3050,Ancient Sexuality,3
202108,CLAS 4395,Legacy of Classical Antiquity,3
202108,CLAS 6395,Legacy of Classical Antiquity,3
202108,CLAS 4360,Intro to Ancient Daily Life,3
202108,CLAS 6360,Intro to Ancient Daily Life,3
202108,CLAS 4610,Sanskrit I,3
202108,CLAS 6610,Sanskrit I,3
202108,CLAS 3002,Greek Art and Architecture,3
202108,CLAS 4008,Roman Sculpture,3
202108,CLAS 4960R,Undergraduate Research I,6
202108,CLAS 4370,The Roman Theatre,3
202108,CLAS 6370,The Roman Theatre,3
202108,CLAS 4380,Death Antiquity and Its Legacy,3
202108,CLAS 6380,Death Antiquity and Its Legacy,3
202108,CLAS 4410,Rhetoric and Democracy,3
202108,CLAS 6300,Selected Topics in Ancient Civ,3
202108,CLAS 4270,Good and Evil in Antiquity,3
202108,CLAS 6270,Good and Evil in Antiquity,3
202108,CLEX 1001,Child Life Student Exchange,20
202108,CMLT 2600,Black Diaspora Lit,3
202108,CMLT 2100,Introduction to Africa,3
202108,CMLT 2210,Western Lit Ancient to Modern,3
202108,CMLT 2212,World Lit Early Mod to Present,3
202108,CMLT 2400,Asian-American Lit,3
202108,CMLT 2500,Comparative Ethnic Amer Lit,3
202108,CMLT 2800,Literature and Medicine,3
202108,CMLT 7000,Master-s Research,6
202108,CMLT 7300,Master-s Thesis,3
202108,CMLT 8980,Readings in CMLT,3
202108,CMLT 9000,Doctoral Research,9
202108,CMLT 9005,Doc Grad Stu Sem,3
202108,CMLT 9300,Doct Dissertation,9
202108,CMLT 3190,Myth in Culture,3
202108,CMLT 4010,Approaches in CMLT,3
202108,CMLT 3001,The Swahili and the World I,3
202108,CMLT 7005,Grad Student Sem,3
202108,CMLT 4630,Holocaust Lit- Film,3
202108,CMLT 6630,Holocaust Lit- Film,3
202108,CMLT 4260,The Black and Green Atlantic,3
202108,CMLT 6260,The Black and Green Atlantic,3
202108,CMLT 4210,Literature and Cinema,3
202108,CMLT 6210,Literature and Cinema,3
202108,CMLT 3250,Children-s Literature,3
202108,CMLT 3220,Women and Writing in East Asia,3
202108,CMLT 2410H,Asian-American Lit,3
202108,CMLT 3210,Ecocriticism,3
202108,CMLT 4200,Literature and the Visual Arts,3
202108,CMLT 6200,Literature and the Visual Arts,3
202108,CMLT 4600,Survey of East Asian Lit I,3
202108,CMLT 8500,Lit and Philosophy,3
202108,CMLT 2610H,Black Diaspora Lit,3
202108,CMLT 3250E,Children-s Literature,3
202108,CMLT 2220,Western Lit Mod to Present,3
202108,CMLT 2510H,Ethnic American Literature Hon,3
202108,CMLT 3080,Playing with Robots,3
202108,CMLT 3150,Intro to Modern African Lit,3
202108,CMLT 3650,East Asian Civilization II,3
202108,CMLT 4220,East Asian Cinema,3
202108,CMLT 6220,East Asian Cinema,3
202108,CMLT 4545,Comp Postcolonial Studies,3
202108,CMLT 6600,Survey of East Asian Lit I,3
202108,CMLT 4610,Survey of East Asian Lit II,3
202108,CMLT 4680,Law and Culture in East Asia,3
202108,CMLT 6680,Law and Culture in East Asia,3
202108,CMLT 8030,Literary Genres,3
202108,CMLT 2030,Yoruba Culture Civilization,3
202108,CMLT 6545,Comp Postcolonial Studies,3
202108,CMLT 6610,Survey of East Asian Lit II,3
202108,CMSD 3010,Anatomy and Physiology Speech,3
202108,CMSD 4030,Rehab Audiology,3
202108,CMSD 6600,Scientific Thinking CMSD,3
202108,CMSD 6640,Multicul Issue Slp,2
202108,CMSD 6650,Augmentative Alternative Comm,2
202108,CMSD 6740,Speech Sound Disord,3
202108,CMSD 6800,Neurobiology of Communication,3
202108,CMSD 6840,Neuro Spch Disorder,2
202108,CMSD 3120,Language Develop,3
202108,CMSD 3030,Hearing Science,3
202108,CMSD 5000,Prof and Clin Prin for CMSD,3
202108,CMSD 6000,Special Problems in CSD,2
202108,CMSD 4000,Special Prob in CMSD,6
202108,CMSD 7140,Aud Practicum,1
202108,CMSD 7042,SLP Practicum II,4
202108,CMSD 6540,Lang Assess Interven Presch Ch,3
202108,CMSD 7700,Clinic Intern SLP,9
202108,CMSD 4000,Special Prob in CMSD,3
202108,CMSD 4230,Concussion and Cog Rehab,3
202108,CMSD 7650,Applied Proj CMSD,6
202108,CMSD 6110E,Anat Phys Speech and Hearing,3
202108,CMSD 8005,Directed Study CMSD,9
202108,CMSD 9000,Doctoral Research,9
202108,CMSD 9300,Doctoral Dissertation,9
202108,CMSD 6760,Fluency Disorders,2
202108,CMSD 6850,Aphasia,3
202108,CMSD 4800,Neurobiology of Communication,3
202108,CMSD 8050,Sem Lang Acq-dis,3
202108,CMSD 6150E,Speech and Language Disorders,3
202108,CMSD 6000,Special Problems in CSD,6
202108,CMSD 8990,Research Sem in CMSD,6
202108,CMSD 4000E,Special Prob in CMSD,6
202108,CMSD 4000E,Special Prob in CMSD,1
202108,CMSD 4220,Explore Research CSD,3
202108,CMSD 4600,Scientific Thinking CMSD,3
202108,CMSD 5010E,SLP Observations,1
202108,CMSD 7200,Comp Exams in CMSD,1
202108,CMSD 9005,Doc Grad Stu Sem,3
202108,CMSD 6170E,Professional SLP,1
202108,COFA 5001,Urban Tree Management I,3
202108,COFA 7001,Urban Tree Management I,3
202108,COFA 3900,COFA Internship,3
202108,COFA 5010,Urban Tree Management II,4
202108,COFA 7010,Urban Tree Management II,4
202108,COFA 5010L,Urban Tree Mgmt II Lab,0
202108,COFA 7010L,Urban Tree Mgmt II Lab,0
202108,COMM 1500,Interpersonal Communication,3
202108,COMM 2360,Rhet and Pop Culture,3
202108,COMM 2550H,Persp Interp Commun,3
202108,COMM 3300,Intro to Rhetorical Criticism,3
202108,COMM 3700,Empirical Research Method Comm,3
202108,COMM 8000,Comm Stud Colloq,1
202108,COMM 8010,Sem Pub Comm Ed,3
202108,COMM 8011,Sem Ip Comm Ed,3
202108,COMM 8020,Intro Grad,1
202108,COMM 7000,Master-s Research,5
202108,COMM 7000,Master-s Research,4
202108,COMM 9000,Doctoral Research,3
202108,COMM 9300,Doctoral Dissertation,7
202108,COMM 9000,Doctoral Research,4
202108,COMM 9000,Doctoral Research,8
202108,COMM 9000,Doctoral Research,7
202108,COMM 9000,Doctoral Research,5
202108,COMM 9000,Doctoral Research,6
202108,COMM 9300,Doctoral Dissertation,8
202108,COMM 9300,Doctoral Dissertation,3
202108,COMM 9300,Doctoral Dissertation,6
202108,COMM 9300,Doctoral Dissertation,9
202108,COMM 4930,Directed Study,3
202108,COMM 4910,Internship in Communication,3
202108,COMM 4920,Debate Practicum,3
202108,COMM 8050,Res Practicum,1
202108,COMM 7000,Master-s Research,6
202108,COMM 9000,Doctoral Research,9
202108,COMM 7000,Master-s Research,3
202108,COMM 8990,Dir Study Spec Tops,3
202108,COMM 7000,Master-s Research,7
202108,COMM 7200,Masters Comp Prep,3
202108,COMM 7200,Masters Comp Prep,6
202108,COMM 4350,Sci Comm,3
202108,COMM 6350,Sci Comm,3
202108,COMM 7300,Master-s Thesis,7
202108,COMM 3340,Visual and Material Rhetoric,3
202108,COMM 7300,Master-s Thesis,5
202108,COMM 8300,Sem Rhet Crit,3
202108,COMM 3200,Business and Professional Comm,3
202108,COMM 4540,Interpersonal Conflict,3
202108,COMM 1110,Intro to Public Speaking,3
202108,COMM 8330,Topic Rhet Theo,3
202108,COMM 8500,Sem Interpersonal Comm Theory,3
202108,COMM 2150H,Perspective on Public Comm Hon,3
202108,COMM 4340,Comm Rel,3
202108,COMM 4800,Intercultural Communication,3
202108,COMM 4900,Special Topics in Comm,3
202108,COMM 3100,Advanced Public Communication,3
202108,COMM 7300,Master-s Thesis,6
202108,COMM 4320,Political Camp Comm,3
202108,COMM 8210,Sem Clas Rhet,3
202108,COMM 8550,Adv Topics Interpersonal Comm,3
202108,COMM 3510,Nonverb Comm Close Relations,3
202108,COMM 4200,Intro Rhet Theory,3
202108,COMM 4920,Debate Practicum,1
202108,COMM 8250,Critical Theories of Discourse,3
202108,COMM 8310,Topics Public Ad,3
202108,COMM 8520,Com Soc Influence,3
202108,COMM 8700,Soc Sci Res Meth,3
202108,COMM 1800,Cultl Divrs in Comm,3
202108,COMM 2400,Oral Decision Making,3
202108,COMM 2520,Introduction to Interviewing,3
202108,COMM 2600,Comm Relationships,3
202108,COMM 3310,Case Studies in Public Comm,3
202108,COMM 3320,Environmental Communication,3
202108,COMM 4360,Communication Social Movements,3
202108,COMM 4390,Rhetoric and the Common Good,3
202108,COMM 4410,Rhetoric and Democracy,3
202108,COMM 4840,Ethnicity Race and Family,3
202108,COMM 4610,Health Communication,3
202108,COMM 6610,Health Communication,3
202108,COMM 6540,Interpersonal Conflict,3
202108,COMM 7300,Master-s Thesis,3
202108,CRSS 4340,Weed Science,3
202108,CRSS 6340,Weed Science,3
202108,CRSS 6340L,Weed Sci Lab,1
202108,CRSS 4340L,Weed Sci Lab,1
202108,CRSS 2010,Crop Science,3
202108,CRSS 3060,Soils and Hydrology,3
202108,CRSS 3060L,Soils Hydrol Lab,1
202108,CRSS 3270,Turf Management,3
202108,CRSS 3540,Soil Morphology and Interpret,3
202108,CRSS 3910,Crop Science Internship,3
202108,CRSS 3920,Ess Internship,3
202108,CRSS 3930,Turfgrass Management Intern,3
202108,CRSS 4590,Soil Fert Plant Nut,3
202108,CRSS 4500,Intro to Gene Technology,3
202108,CRSS 6500,Intro to Gene Technology,3
202108,CRSS 4590L,Soil Fert Nut Lab,1
202108,CRSS 6590,Soil Fert Plant Nut,3
202108,CRSS 6590L,Soil Fert Nut Lab,1
202108,CRSS 4610,Soil Microbiology,3
202108,CRSS 6610,Soil Microbiology,3
202108,CRSS 4610L,Soil Microbio Lab,0
202108,CRSS 6610L,Soil Microbio Lab,0
202108,CRSS 7000,Master-s Research,18
202108,CRSS 7300,Master-s Thesis,9
202108,CRSS 7990,Teach Practicum,3
202108,CRSS 4740,Integrated Pest Management,3
202108,CRSS 6740,Integrated Pest Management,3
202108,CRSS 9000,Doctoral Research,18
202108,CRSS 9300,Doct Dissertation,9
202108,CRSS 9990,Teach Practicum,3
202108,CRSS 1020,Introduction Water Resources,3
202108,CRSS 4430,Plant Physiology,3
202108,CRSS 6430,Plant Physiology,3
202108,CRSS 4140,Plant Breeding,3
202108,CRSS 6140,Plant Breeding,3
202108,CRSS 6050,Nut Energy Eff GIS,4
202108,CRSS 6130,Intern Crop Protect Pest Mgmt,1
202108,CRSS 3530,Field Study in Turfgrass Mgmt,1
202108,CRSS 4010,Princ Sust Mgmt,3
202108,CRSS 6010,Princ Sust Mgmt,3
202108,CRSS 8010,Research Methods Crops,3
202108,CRSS 8210,Sp Prob CRSS,3
202108,CRSS 8140,Adv Plant Breeding,3
202108,CRSS 8900,Pbgg Emerging Topic,3
202108,CRSS 3030,Prin Precision Agr,3
202108,CRSS 4050,Nut Energy Eff GIS,4
202108,CRSS 8000,Soil Phys Chemistry,3
202108,CRSS 8520,Adv Soil Fert,3
202108,CRSS 3270L,Turf Mgmt Lab,1
202108,CRSS 8860,Pbgg Comm Seminar,1
202108,CRSS 8861,PBGG Research Seminar,1
202108,CRSS 6220,Topics in Crop Soil,4
202108,CRSS 8873,Transgenic Breedg,1
202108,CRSS 4960,Undergraduate Research in CRSS,3
202108,CRSS 8650,Nutr Cycling Models,3
202108,CRSS 4125,Organic Agricultural Systems,4
202108,CRSS 6125,Organic Agricultural Systems,4
202108,CRSS 3050,Water Quality,4
202108,CRSS 4800,Agric Biotech,3
202108,CRSS 6800,Agric Biotech,3
202108,CRSS 8872,Qtl Analysis,1
202108,CRSS 8220,Adv Topics in CRSS,3
202108,CRSS 1200,Freshman Transfer Student Sem,1
202108,CSCI 1100,Topics in Computing,3
202108,CSCI 1301,Intro Computing and Program,4
202108,CSCI 2610,Discrete Mathematics for CSCI,4
202108,CSCI 2670,Intro to Theory of Computing,4
202108,CSCI 3030,Computing Ethics and Society,3
202108,CSCI 4050,Software Engineering,4
202108,CSCI 8990,Research Seminar,1
202108,CSCI 6670,Combinatorics,3
202108,CSCI 1302,Software Development,4
202108,CSCI 1730,Systems Programming,4
202108,CSCI 4730,Operating Systems,4
202108,CSCI 6730,Operating Systems,4
202108,CSCI 4810,Computer Graphics,4
202108,CSCI 6810,Computer Graphics,4
202108,CSCI 7005,Grad Student Sem,3
202108,CSCI 9005,Doc Grad Stu Sem,3
202108,CSCI 2720,Data Structures,4
202108,CSCI 4950,Directed Study,4
202108,CSCI 5007,Intern Comp Sci Busi Indus,3
202108,CSCI 6950,Directed Study,4
202108,CSCI 7000,Master-s Research,6
202108,CSCI 7007,Intern Comp Sci Busi Indus,3
202108,CSCI 7100,Technical Report,6
202108,CSCI 7300,Master-s Thesis,6
202108,CSCI 9000,Doctoral Research,12
202108,CSCI 9300,Doct Dissertation,12
202108,CSCI 1301L,Intro Computing Program Lab,0
202108,CSCI 2150,Intro Scientif Comp,4
202108,CSCI 2150L,Lab Scientif Comp,0
202108,CSCI 4950,Directed Study,2
202108,CSCI 4300,Web Programming,4
202108,CSCI 4720,Computer Architecture Organiza,4
202108,CSCI 4760,Computer Networks,4
202108,CSCI 4470,Algorithms,4
202108,CSCI 6470,Algorithms,4
202108,CSCI 6050,Software Engineering,4
202108,CSCI 1100L,Topics in Computing Lab,0
202108,CSCI 4380,Data Mining,4
202108,CSCI 6380,Data Mining,4
202108,CSCI 3360,Data Science I,4
202108,CSCI 4550,Artif Intelligence,3
202108,CSCI 6550,Artif Intelligence,3
202108,CSCI 4560,Evolutionary Computation Apps,4
202108,CSCI 6560,Evolutionary Computation Apps,4
202108,CSCI 4370,Database Management,4
202108,CSCI 6370,Database Management,4
202108,CSCI 4670,Combinatorics,3
202108,CSCI 4800,Human-Comp Interact,4
202108,CSCI 6800,Human-Comp Interact,4
202108,CSCI 4060,Mobile Software Development,4
202108,CSCI 6060,Mobile Software Development,4
202108,CSCI 4530,Introduction to Robotics,4
202108,CSCI 6530,Introduction to Robotics,4
202108,CSCI 4250,Cyber Security,4
202108,CSCI 6250,Cyber Security,4
202108,CSCI 7200,Master-s Project,6
202108,CSCI 4210,Simulation and Modeling,4
202108,CSCI 6210,Simulation and Modeling,4
202108,CSCI 4360,Data Science II,4
202108,CSCI 6360,Data Science II,4
202108,CSCI 6720,Comp Sys Architect,4
202108,CSCI 6760,Computer Networks,4
202108,CSCI 8250,Advanced Cyber Security,4
202108,CSCI 8945,Advanced Representation Learn,4
202108,CSCI 8965,Internet of Things Security,4
202108,CSCI 6900,Special Topics,3
202108,CSCI 4960,Faculty Mentored Research,4
202108,CSCI 4260,Data Security and Privacy,4
202108,CSCI 6260,Data Security and Privacy,4
202108,CSCI 8370,Advanced Database,4
202108,CSCI 8790,Adv Data Intsv Comp,4
202108,CSCI 8795,Advanced Topics in Cloud Compu,4
202108,CSCI 8850,Adv Bio Image Analy,4
202108,CSCI 8955,Advanced Data Analytics,4
202108,CSCI 1300,Intro to Python Programming,4
202108,CSCI 1300L,Intro Python Programming Lab,0
202108,CSCI 1360,Informatics and Data Analytics,4
202108,CSCI 4900,Special Topics,4
202108,CSCI 8380,Adv Info Sys,4
202108,CSCI 8730,Adv Topics in OS,4
202108,CSCI 8780,Adv Distributed Sys,4
202108,CSCI 8860,Biomed Info,4
202108,CSCI 8000,Adv Special Topics in CSCI,4
202108,CSCI 4600,Reinforcement Learning,3
202108,CSCI 6600,Reinforcement Learning,3
202108,CSEE 2220,Fundamentals of Logic Design,3
202108,CSEE 4910,Capstone Design I,2
202108,CSEE 4620,Biomedical Imaging,3
202108,CSEE 6620,Biomedical Imaging,3
202108,CSEE 4270,Design of Digital Systems,3
202108,CSEE 4960R,Undergraduate Research I,6
202108,CSEE 4960R,Undergraduate Research I,2
202108,CSEE 4970R,Undergraduate Research II,2
202108,CSEE 4900,Spec Topics in CSEE,3
202108,CSEE 8840,Advanced Image Analysis,3
202108,CSEE 8310,Security CPS,3
202108,CSEE 4290,Computer Architecture,3
202108,CSEE 6290,Computer Architecture,3
202108,CSEE 8300,Principles of CPS,3
202108,CVLE 4330,Advanced Structural Analysis,3
202108,CVLE 4530,Design Reinforced Concrete St,3
202108,CVLE 4910,Capstone Design I,2
202108,CVLE 6330,Advanced Structural Analysis,3
202108,CVLE 3610,Structural Design,3
202108,CVLE 2710,Numerical Method for Engineers,2
202108,CVLE 4470,Pavement Design,3
202108,CVLE 6470,Pavement Design,3
202108,CVLE 4660,Sustainable Building Design,3
202108,CVLE 6660,Sustainable Building Design,3
202108,CVLE 4960R,Undergraduate Research I,6
202108,CVLE 3460L,Civil Engr Lab Hydraulics,1
202108,CVLE 3470L,Civil Engr Lab Structural,1
202108,CVLE 8110,Environmental River Mechanics,3
202108,CVLE 4220,Highway Design Traffic Safety,3
202108,CVLE 6220,Highway Design Traffic Safety,3
202108,CVLE 8470,Adv Pavement System Design,3
202108,DANC 2010,Dance Appreciation,3
202108,DANC 1604,Jazz Dance Found,1
202108,DANC 1601,Tap Dance Found I,1
202108,DANC 1607,Ballroom Found I Lead Male,1
202108,DANC 1606,Ballet Found I,2
202108,DANC 1605,Contemp Found I,2
202108,DANC 3653,Contemp Dance III,2
202108,DANC 4654,Contemp Dance IV,2
202108,DANC 3663,Ballet III,2
202108,DANC 4664,Ballet IV,2
202108,DANC 2662,Ballet II,2
202108,DANC 2652,Contemp Dance II,2
202108,DANC 2000,Prod Assign I,1
202108,DANC 2850,Pre-Prof Perf I,2
202108,DANC 2900,Young Choreographer-s Lab I,1
202108,DANC 3200,Teaching Practicum in Dance I,1
202108,DANC 3210,Teaching Practicum in Dance II,1
202108,DANC 3220,Teaching Practicum Dance III,1
202108,DANC 3850,Pre-Prof Perf II,2
202108,DANC 3900,Young Choreographer-s Lab II,1
202108,DANC 4000,Independent Study,6
202108,DANC 4754,Contemporary Dance IV,2
202108,DANC 4764,Ballet IV,2
202108,DANC 4800,Choreo Project,1
202108,DANC 4900,Chor Proj-conc Prod,3
202108,DANC 5460,Student Teaching in Dance Ed,12
202108,DANC 1608,Ballroom Foun I  Follow Female,1
202108,DANC 2642,Jazz Dance II,1
202108,DANC 2672,Pointe II,1
202108,DANC 3643,Jazz Dance III,1
202108,DANC 4030,Clas Ballet Forms,2
202108,DANC 3400,Intro to Dance Composition,3
202108,DANC 3810E,Writing in Dance,1
202108,DANC 2030,The Pilates Method I,1
202108,DANC 3030,The Pilates Method II,1
202108,DANC 1671,Pointe I,1
202108,DANC 4643,Jazz Dance III,1
202108,DANC 4700,Dance Education and Pedagogy,3
202108,DANC 3010,Lma and Fundamentals,2
202108,DANC 3672,Pointe II,1
202108,DANC 4672,Pointe II,1
202108,DANC 4850,Pre-Prof Perf III,2
202108,DANC 5850,Pre-Prof Perf IV,2
202108,DANC 2060,Aerial Yoga Trapeze I,1
202108,DANC 3060,Aerial Yoga Trapeze II,1
202108,DANC 3000,Product Assign II,1
202108,DANC 2250,Performance Company II,2
202108,DANC 3250,Performance Company III,2
202108,DANC 4250,Performance Company IV,2
202108,DANC 2620,West African Dance Forms,1
202108,DANC 1616,Ballet Foundations II,2
202108,DESD 1001,Destination Dawgs,20
202108,DIGI 2000,Introduction to GIS,1
202108,DIGI 4960R,Undergraduate Research I,3
202108,DMAN 7100,Managing Disaster 1,3
202108,DMAN 7400,Managing Disaster 3,3
202108,DMAN 7005,Grad Student Sem,3
202108,DMAN 8900,Spec Topics Dis Man,3
202108,DMAN 9005,Doc Grad Stu Sem,3
202108,DMAN 3100,Disasters and Society,3
202108,DMAN 3300,Internatl Aspects of Disaster,3
202108,ECHD 6020,Interpersonal Relationships,3
202108,ECHD 6030,Intervention I,4
202108,ECHD 7000,Master-s Research,6
202108,ECHD 7005,Grad Student Sem,3
202108,ECHD 7010,Indiv Appraisal,3
202108,ECHD 7040,Couns Thry and Skills,3
202108,ECHD 7060,Cross-Culturl Cnslg,3
202108,ECHD 7090,Strctrd Grp Intrvns,3
202108,ECHD 7400,Fndns Col Stu Aff,3
202108,ECHD 7410,Col Stu Aff Intrvns,3
202108,ECHD 7420,Theories Col St Dev,3
202108,ECHD 7460,Issues Stud Aff Adm,3
202108,ECHD 7600,Mental Health Counseling,3
202108,ECHD 7850,Internship School Counseling,12
202108,ECHD 7860,Internship Mental Health Couns,12
202108,ECHD 8010,History of Psychology,3
202108,ECHD 8990,Research Seminar in ECHD,3
202108,ECHD 9000,Doctoral Research,12
202108,ECHD 9005,Doc Grad Stu Sem,3
202108,ECHD 9070,Preparing Students to Teach,3
202108,ECHD 9300,Doctoral Dissertation,12
202108,ECHD 9460,Issues in Saa,3
202108,ECHD 9610,Th of Couns Psych,3
202108,ECHD 9710,Ethics Prof Issues,3
202108,ECHD 9760,Practicum in Couns Psychology,6
202108,ECHD 9770,Doctoral Assessment Practicum,3
202108,ECHD 9850,Teaching Internship in CHDS,6
202108,ECHD 9860,Internship in Counseling Psych,12
202108,ECHD 2050,Academic and Career Planning,2
202108,ECHD 3020,Intro Couns and HDS,3
202108,ECHD 3050,Career and Life Planning,2
202108,ECHD 9420,Adv Thry Col St Dev,3
202108,ECHD 9450,Staffing Practices,3
202108,ECHD 9410,Org Dev and Cnsltn,3
202108,ECHD 3170,Drug and Alcohol Abuse Issues,3
202108,ECHD 4020,Interpersonal Relationships,3
202108,ECHD 9830,Admin Intern Stu Affairs Admin,6
202108,ECHD 8000,Appld Proj Couns Hum Dev Serv,3
202108,ECHD 4000,Spec Prob Couns Hum Dev Serv,3
202108,ECHD 6380,Human Devel and Mental Health,3
202108,ECHD 9920,Res Methods in Couns Psych,3
202108,ECHD 3030,Diversity Help Skil,3
202108,ECHD 7840,Intern College Student Affairs,9
202108,ECHD 9650,Consltn Human Systm,3
202108,ECHD 4380,Human Devel and Mental Health,3
202108,ECHD 3130,Program and Event Management,3
202108,ECHD 8850,Adv Intern Sch Cnsl,12
202108,ECHD 9750,Intern in Couns Ed and Supervi,3
202108,ECHD 4660,US Latino-a Mental Health Intr,3
202108,ECHD 3130L,Program and Event Manage Lab,1
202108,ECHD 9400,Seminar Student Affairs Admin,3
202108,ECHD 7940,Rsrch Col Stu Aff,3
202108,ECHD 3170E,Drug and Alcohol Abuse Issues,3
202108,ECHD 3050E,Career and Life Planning,2
202108,ECHD 8610,Fund Behavioral Neuroscience,3
202108,ECHD 6050S,Serv-Learn School Counseling,3
202108,ECHD 9720,Counslng Practicum,3
202108,ECHD 2050E,Academic and Career Planning,2
202108,ECHD 9970,Educ Rsch Couns Hum Dev Serv,3
202108,ECHD 4010,Devel Exper of Gender in U.S.,3
202108,ECHD 7080,Intro Group Counslg,3
202108,ECHD 7920,Rsrch in Counslng,3
202108,ECHD 9930,Diversity in Student Affaris,3
202108,ECHD 9500,Adv Theories CHD,3
202108,ECHD 9080,Adv Group Work Thry,3
202108,ECHD 8170,Drug and Alcohol Thry,3
202108,ECHD 4420,Working with College Students,3
202108,ECHD 4400E,Intro to Student Affairs,3
202108,ECHD 5950,App Reseach and Human Services,3
202108,ECHD 9060,Adv Mltcltrl Cnsl,3
202108,ECHD 7470,Equity Diversity Inclusion SA,3
202108,ECHD 4537,Peer Ldr On Campus,3
202108,ECHD 1537,Campus Leadership,1
202108,ECHD 6660,US Latino-a Mental Health Intr,3
202108,ECHD 8150,Child and Fam Cnslg,3
202108,ECHD 9430,Environ Assessment,3
202108,ECHD 9680,Counseling Psych Supervision,3
202108,ECHD 4420E,Working with College Students,3
202108,ECHD 8680,Edu Cnslg Suprvsn,3
202108,ECHD 8020,Seminar in Candhds,3
202108,ECOL 1000,Ecological Basis Environ Issue,3
202108,ECOL 3530,Conservation Biology,3
202108,ECOL 1000L,Environmental Issues Lab,1
202108,ECOL 3500,Ecology,3
202108,ECOL 3505H,Ecology Honors,4
202108,ECOL 4240,Physiological Ecol,4
202108,ECOL 4240L,Physiol Ecol Lab,0
202108,ECOL 4950,Senior Seminar,1
202108,ECOL 8060,Ecol Seminar Series,1
202108,ECOL 8400,Conserv Ecol and Sustain Devel,2
202108,ECOL 4000,Population and Community Ecol,3
202108,ECOL 6000,Population and Community Ecol,3
202108,ECOL 1000H,Ecol Basis Environ Issue Hon,3
202108,ECOL 3505L,Ecology Lab Honors,0
202108,ECOL 4590,Soil Fert Plant Nut,3
202108,ECOL 6590,Soil Fert Plant Nut,3
202108,ECOL 1200,Natural History of Georgia,3
202108,ECOL 8330,Landscape Ecology,3
202108,ECOL 4261,Museum Natural History Intern,3
202108,ECOL 8000,Topics Mod Ecol,3
202108,ECOL 4050,Ichthyology,4
202108,ECOL 6050,Ichthyology,4
202108,ECOL 4050L,Ichthyology Lab,0
202108,ECOL 6050L,Ichthyology Lab,0
202108,ECOL 4310,Freshwater Ecosystems,4
202108,ECOL 6310,Freshwater Ecosystems,4
202108,ECOL 4310L,Freshwater Ecosystems Lab,0
202108,ECOL 6310L,Freshwater Ecosystems Lab,0
202108,ECOL 3400,Prof Dev Careers Ecology,1
202108,ECOL 3100,Tropical Field Ecol,4
202108,ECOL 3100L,Trop Field Ecol Lab,0
202108,ECOL 3900H,Directed Reading H,3
202108,ECOL 7000,Master-s Research,18
202108,ECOL 7300,Master-s Thesis,18
202108,ECOL 9000,Doctoral Research,18
202108,ECOL 9300,Doctoral Dissertation,18
202108,ECOL 8050,Lab Group Meeting,1
202108,ECOL 8310,Population Ecology,3
202108,ECOL 3050L,Apprenticeship Ecol,3
202108,ECOL 4940,Internship Ecology,4
202108,ECOL 3900,Directed Reading,3
202108,ECOL 4990,Senior Thesis,3
202108,ECOL 8990,Problems in Ecology,3
202108,ECOL 6290,Environmental Arch,3
202108,ECOL 3480,Spcl Topics Ecology,3
202108,ECOL 8990,Problems in Ecology,2
202108,ECOL 6080,Conserv Sust Dev I,4
202108,ECOL 8020L,Research Modeling,3
202108,ECOL 3820,Evolutionary Medicine,3
202108,ECOL 4290,Environmental Arch,3
202108,ECOL 4520,Plant Animal Interactions,3
202108,ECOL 6520,Plant Animal Interactions,3
202108,ECOL 8510,Fundamentals of Disease Biol I,4
202108,ECOL 4640,Cognitive Ecology,3
202108,ECOL 3910,Undergraduate Ecology Seminar,2
202108,ECOL 6640,Cognitive Ecology,3
202108,ECOL 4960R,Undergraduate Research I,3
202108,ECOL 4970R,Undergraduate Research II,4
202108,ECOL 2200,Water Sustain Anthropocene,3
202108,ECOL 4271,People Planet and Profit,3
202108,ECOL 6271,People Planet and Profit,3
202108,ECOL 4960R,Undergraduate Research I,6
202108,ECOL 8140,Professional Development,2
202108,ECOL 4540,Behavioral Ecology,3
202108,ECOL 6540,Behavioral Ecology,3
202108,ECOL 3500L,Ecology Laboratory,1
202108,ECOL 3550,Ecological Data Literacy,3
202108,ECOL 8750,Endangered Species Practicum,4
202108,ECOL 4960R,Undergraduate Research I,4
202108,ECON 2100,Economics Environ Quality,3
202108,ECON 2105,Principles of Macroeconomics,3
202108,ECON 2106,Principles of Microeconomics,3
202108,ECON 2200,Economic Development of U.S.,3
202108,ECON 4010,Intermediate Microeconomics,3
202108,ECON 4020,Intermediate Macroeconomics,3
202108,ECON 5900,Senior Thesis,2
202108,ECON 8000,Math for Econ,3
202108,ECON 8010,Microeconomics I,3
202108,ECON 8040,Macroeconomics I,3
202108,ECON 8070,Stats Econometrics,3
202108,ECON 7000,Master-s Research,3
202108,ECON 7300,Master-s Thesis,6
202108,ECON 8980,Econ Seminar,3
202108,ECON 9000,Doctoral Research,12
202108,ECON 9300,Doctoral Dissertation,12
202108,ECON 4800,Internship Cooperative Educ,3
202108,ECON 5900H,Senior Thesis (Honors),3
202108,ECON 5960H,Tutorial Honors,3
202108,ECON 4060,Economic Analysis of Sport,3
202108,ECON 7950,Comp Strategy,3
202108,ECON 5900S,Senior Thesis SL,2
202108,ECON 6750,Introduction to Econometrics,3
202108,ECON 4040E,International Business Environ,3
202108,ECON 4750,Introduction to Econometrics,3
202108,ECON 4300,Public Sector Econ,3
202108,ECON 4600,Labor Economics,3
202108,ECON 4160,Urban Economics,3
202108,ECON 4450,Ecn Analysis of Law,3
202108,ECON 8060,Macroeconomics III,3
202108,ECON 8410,Labor Econ I,3
202108,ECON 4350,Industrial Econ,3
202108,ECON 8110,Econometrics I,3
202108,ECON 2106H,Principles of Microeconomics H,3
202108,ECON 4950,Competitive Strategy,3
202108,ECON 5970H,Tutorial Honors,9
202108,ECON 4960R,Undergraduate Research I,6
202108,ECON 8990,Direct Study,3
202108,ECON 4000,Economics of Human Resources,3
202108,ECON 4250,Econ of Education,3
202108,ECON 4200,Econ Growth and Dev,3
202108,ECON 4040,International Business Environ,3
202108,ECON 4650,Ecn of Org-mgmt,3
202108,ECON 4460,Sports Economics,3
202108,ECON 4310,Health Economics,3
202108,ECON 2105H,Principles of Macroeconomics H,3
202108,ECON 8850,Topics in Economics,3
202108,ECON 4150,Environmental Economics,3
202108,ECON 4100,Monetary Economics,3
202108,ECON 7010,Econ Analysis for Bus Leaders,3
202108,ECON 8050,Macroeconomics II,3
202108,ECON 6350,Industrial Econ,3
202108,ECON 7710,Intro Causal Infer Bus Analyt,1.5
202108,ECON 7720,Machine Learn and Predict,1.5
202108,ECON 4360,Game Theory,3
202108,ECSE 1100,Intro to ECSE,3
202108,ECSE 2170H,Fund of Circuit Analysis Hon,3
202108,ECSE 1100H,Intro to ECSE Honors,3
202108,ECSE 2170,Fundamentals of Circuit Analys,3
202108,ECSE 4235,Embedded Systems II,3
202108,ECSE 2170L,Fundamental Circuit Analys Lab,0
202108,ECSE 4230,Embedded Systems I,3
202108,ECSE 4410,Pattern Recognition,3
202108,ECSE 6410,Pattern Recognition,3
202108,EDAP 7005,Grad Student Sem,3
202108,EDAP 9000,Doctoral Research,9
202108,EDAP 9005,Doc Grad Stu Sem,3
202108,EDAP 9300,Doct Dissertation,9
202108,EDAP 9700,Intern Ed Admin Pol,9
202108,EDAP 8115,Inst Ldrshp for Stu Suc,3
202108,EDAP 8613,Res Edap III Bldg,3
202108,EDAP 9020,Ed Finance Policy,3
202108,EDAP 4170E,Ed Law and Prof Eth,3
202108,EDAP 6170E,Ed Law and Prof Eth,3
202108,EDAP 7803,Clin Pract in Ed Ldrship III,3
202108,EDAP 8130,Trends Issues Edap,3
202108,EDAP 7802,Clin Pract in Ed Ldrship II,3
202108,EDAP 8210,Ed Policy Analysis,3
202108,EDAP 8450,High-Needs Schools,3
202108,EDAP 8400,Change Leadership,3
202108,EDAP 8410,Community Engagement,3
202108,EDAP 7020E,Inst Ldrshp Sch Imp,3
202108,EDAP 7801,Clin Pract in Ed Ldrship I,3
202108,EDAP 7650,Applied Proj Edap,3
202108,EDAP 7000,Master-s Research,9
202108,EDAP 8220,Federal Ed Policy,3
202108,EDAP 8150E,Lrn Com and Prof Dev,3
202108,EDAP 9040,Curriculum Theory,3
202108,EDAP 8000,Sped Prob in Edap,4
202108,EDAP 8210E,Ed Policy Analysis,3
202108,EDAP 9030E,Theor Base Ed Pol,3
202108,EDAP 8220E,Federal Ed Policy,3
202108,EDAP 7600,Data Analysis for Practitioner,3
202108,EDEC 9000,Doctoral Research,9
202108,EDEC 9300,Doct Dissertation,9
202108,EDEC 9600,Rsch Ely Chldod Edu,9
202108,EDEC 9600,Rsch Ely Chldod Edu,3
202108,EDEL 9000,Doctoral Research,9
202108,EDEL 9300,Doct Dissertation,9
202108,EDEL 9600,Research in Elem Ed,3
202108,EDEL 4010,Orientation to Elementary Ed,3
202108,EDEL 4010L,Orientation to EDEL Lab,1
202108,EDEL 4020,Principles and Practices EDEL,3
202108,EDEL 6025,Principles and Practices EDEL,3
202108,EDEL 4020L,Princ and Pract in EDEL Lab,3
202108,EDEL 4030,Integr Curr Pract in EDEL,3
202108,EDEL 6030,Integrated Curr Prac EDEL,3
202108,EDEL 4030L,Integr Curr Pract in EDEL Lab,3
202108,EDEL 4040,Spec Topics EDEL Ed,3
202108,EDEL 7040,Induction to Teaching,3
202108,EDEL 5460,Student Teaching in EDEL,15
202108,EDEL 6020,Practicum in EDEL,1
202108,EDEL 6021,Pre-Clinical Field,3
202108,EDEL 7010,Trends and Issues in EDEL,3
202108,EDEL 7020,Theory and Curriculum in EDEL,3
202108,EDEL 7460,Student Teaching in EDEL,15
202108,EDEL 8400,Feminist Perspectives in EDEL,3
202108,EDEL 7020E,Theory and Curriculum in EDEL,3
202108,EDEL 5460,Student Teaching in EDEL,18
202108,EDEL 6000,Special Problems in Elem Educ,3
202108,EDEL 4000,Special Problems Elementary Ed,3
202108,EDEL 4010L,Orientation to EDEL Lab,2
202108,EDEL 4015,Creative Arts Elem Education,3
202108,EDEL 6015,Creative Arts Elem Education,3
202108,EDEL 4015L,Creative Arts ECE Lab,1
202108,EDEL 4015L,Creative Arts ECE Lab,2
202108,EDEL 8030,Rsch Pers Early Child and EDEL,3
202108,EDEL 7010E,Trends and Issues in EDEL,3
202108,EDEL 8030E,Rsch Pers Early Child and EDEL,3
202108,EDEL 6050,Learning Ecologies II,3
202108,EDEL 6050L,Learning Ecologies II Lab,3
202108,EDES 6550,His Blt Envirnmnt I,3
202108,EDES 4650,City Planning,3
202108,EDES 6650,City Planning,3
202108,EDES 9000,Doctoral Research,12
202108,EDES 6270,Environmental Design Uses GIS,3
202108,EDES 8911,Special Studies,6
202108,EDES 8912,Special Studies,6
202108,EDES 9300,Doctoral Dissertation,12
202108,EDES 8910,Special Studies,6
202108,EDES 9020,Independent Project Research,3
202108,EDES 8010,History and Theory in EDP,4
202108,EDES 8020,Research Techniques in EDP,3
202108,EDHI 8010,Higher Ed in the US,3
202108,EDHI 8990,Research Intro,3
202108,EDHI 9500,Policy Studies,3
202108,EDHI 9050,Org and Govern in Higher Edu,3
202108,EDHI 8410,Econ App Higher Ed,3
202108,EDHI 8910,Quan Mth HEd I,3
202108,EDHI 8910L,Quan Mth HEd I Lab,1
202108,EDHI 7650,Applied Project,3
202108,EDHI 9005,Doc Grad Stu Sem,3
202108,EDHI 9000,Doctoral Research,9
202108,EDHI 9300,Doct Dissertation,9
202108,EDHI 7650,Applied Project,18
202108,EDHI 9700,Internship,6
202108,EDHI 9630,Crit of Literature,6
202108,EDHI 6700,Admin Practicum in Higher Ed,3
202108,EDHI 9060,Social Theory and Higher Ed,3
202108,EDHI 9200,Leadership in Hied,3
202108,EDHI 6990,App Research in Higher Ed,3
202108,EDHI 8700,State Systems,3
202108,EDHI 8890,Seminar Higher Ed,3
202108,EDHI 8930,Qualitative Research in HE I,3
202108,EDHI 8400,Finance Higher Ed,3
202108,EDHI 9210,Strat and Mgmt in HE,3
202108,EDIT 6190,Design Thinking and Dev Tools,3
202108,EDIT 9600,Educational Research in EDIT,6
202108,EDIT 9005,Doc Grad Stu Sem,3
202108,EDIT 9300,Doct Dissertation,6
202108,EDIT 9000,Doctoral Research,6
202108,EDIT 2000,Intro to Computers for Teacher,3
202108,EDIT 4000,Spec Prob Inst Tech,6
202108,EDIT 4020,Innov Through Design and Tech,3
202108,EDIT 6170E,Intro to Instructional Design,3
202108,EDIT 7500E,Proj Prob Place-BasedLearning,3
202108,EDIT 8190,Design and Development Tools,3
202108,EDIT 4100S,Mentoring Through Technology,3
202108,EDIT 8990,Doctoral Seminar,3
202108,EDIT 5100E,Assistive and Learning Tech,3
202108,EDIT 7520E,Online Teaching and Learning,3
202108,EDIT 2000E,Intro to Computers for Teacher,3
202108,EDIT 9990,Doctoral Topical Seminar,3
202108,EDIT 6190E,Design Thinking and Dev Tools,3
202108,EDIT 7650E,Appl Project in Instruct Tech,3
202108,EDIT 7460E,Internship in It,3
202108,EDIT 6600E,Diversity Technology Learning,3
202108,EDIT 7170E,Advanced Instructional Design,3
202108,EDIT 6000,Spec Prob in Instruct Tech,6
202108,EDIT 6400E,Teach Learn Technol,3
202108,EDIT 6000,Spec Prob in Instruct Tech,1
202108,EDIT 7350E,Eval and Analytics in Inst Des,3
202108,EDIT 8100E,Foundations of LDT,3
202108,EDIT 6000,Spec Prob in Instruct Tech,3
202108,EDIT 6000E,Spec Prob Inst Tech,3
202108,EDLP 8100,Intro Educ Law and Policy,3
202108,EDMG 9000,Doctoral Research,9
202108,EDMG 9300,Doctoral Dissertation,9
202108,EDMG 9600,Research in Middle Grades Ed,9
202108,EDMG 5010,Community in Middle Grades Ed,3
202108,EDMG 5035,The Middle Grades Curriculum,3
202108,EDMG 7035,The Middle Grades Curriculum,3
202108,EDMG 7060S,Theory and Practice of SL,3
202108,EDMG 7010,Community in Middle Grades Ed,3
202108,EDMG 5035L,Middle Grades Curriculum Lab,3
202108,EDMG 7035L,Middle Grades Curriculum Lab,3
202108,EDMG 9080,Middle Grades Curriculum,3
202108,EDMG 4000,Special Prob Middle Grades Ed,6
202108,EDMG 7050E,Crit Constructions of YA,3
202108,EDMG 7300E,Equity Inquiry Stance in EDMG,3
202108,EDMG 5460,Student Teach in Middle Grades,18
202108,EDSE 2000,Survey of Special Education,3
202108,EDSE 2000E,Survey of Special Education,3
202108,EDSE 3020E,Char of Indiv with Mild Disab,3
202108,EDSE 3050,Class Behav Mgmt for Ind Disab,3
202108,EDSE 3050E,Class Behav Mgmt for Ind Disab,3
202108,EDSE 4010E,Instructing Children with ASD,3
202108,EDSE 4020,Students Special Needs PreK-5,3
202108,EDSE 4030,Students Special Needs Gr 6-12,3
202108,EDSE 4030E,Students Special Needs Gr 6-12,3
202108,EDSE 4220,Instr Student High Incidence,3
202108,EDSE 4220E,Instr Student High Incidence,3
202108,EDSE 4120,Instr Ind with Mod to Sev Disa,3
202108,EDSE 4050,Managing Severe Behavior,3
202108,EDSE 4230E,Adv Instr Method Mild Disabil,3
202108,EDSE 5120E,Dyslexia and Other Learn Disab,3
202108,EDSE 5150E,Read Interven for Special Ed,3
202108,EDSE 5180,Develop Curricul for Child 3-5,3
202108,EDSE 5400,Collabor Among Fam and Prof,3
202108,EDSE 5400E,Collabor Among Fam and Prof,3
202108,EDSE 6020,Students Special Needs PreK-5,3
202108,EDSE 6030,Students Special Needs Gr 6-12,3
202108,EDSE 6030E,Students Special Needs Gr 6-12,3
202108,EDSE 7020E,AST of Dyslexia and Other LD,3
202108,EDSE 7100,Found Assess ECSE,3
202108,EDSE 7120E,Dyslexia and Other Learn Disab,3
202108,EDSE 7110E,Seminar ID and DD,3
202108,EDSE 7150E,Read Interven for Special Ed,3
202108,EDSE 7180,Develop Curricul for Child 3-5,3
202108,EDSE 7220,Instr Student High Incidence,3
202108,EDSE 7230,Adv Applied Behavior Analysis,3
202108,EDSE 7610,Sem Autism Spectrum Disorders,3
202108,EDSE 4230,Adv Inst Meth Indiv High Incid,3
202108,EDSE 5250E,Assmnt Intervtion Strug Wrtrs,3
202108,EDSE 7250E,Assmnt Intervtion Strug Wrtrs,3
202108,EDSE 9600,Issues and Trends Special Ed,3
202108,EDSE 7460,Internship in Special Ed,12
202108,EDSE 9000,Doctoral Research,9
202108,EDSE 9300,Doctoral Dissertation,12
202108,EDSE 5020E,AST of Dyslexia and Other LD,3
202108,EDSE 7220E,Instr Student High Incidence,3
202108,EDSE 9930,Intern College Teach Spec Ed,12
202108,EDSE 8000,Directed Study in Special Ed,12
202108,EDSE 7000,Master-s Research,9
202108,EDSE 4440,Practicum in Special Education,3
202108,EDSE 7440,Practicum in Special Education,3
202108,EDSE 7440,Practicum in Special Education,12
202108,EDSE 4440,Practicum in Special Education,9
202108,EDSE 4000,Directed Study in Special Ed,12
202108,EDSE 7460,Internship in Special Ed,3
202108,EDSE 7650,Applied Project in Special Ed,3
202108,EDSE 7000,Master-s Research,1
202108,EDSE 6010E,Instructing Children with ASD,3
202108,EDSE 6000,Directed Study in Special Ed,12
202108,EDSE 7650,Applied Project in Special Ed,12
202108,EDSE 5460,Student Teaching in Special Ed,18
202108,EDSE 4440E,Practicum in Special Education,3
202108,EDUC 2110,Critical Contemporary Issues,3
202108,EDUC 2120,Socio-Cultur Perspect on Diver,3
202108,EDUC 2120E,Socio-Cultur Perspect on Diver,3
202108,EDUC 4200,COE Transfer Seminar,1
202108,EDUC 2110E,Critical Contemporary Issues,3
202108,EDUC 7040,History of Education in the US,3
202108,EDUC 8150E,Educ and Cultural Knowledge,3
202108,EDUC 8999,COE Research,1
202108,EDUC 8070,Youth Comm Based Ed Resch,3
202108,EDUC 8111,Race Class and Education,3
202108,EDUC 4100,Special Topics Educ,3
202108,EDUC 6100,Special Topics Educ,3
202108,EDUC 8990,Grant Development,3
202108,EDUC 9110,Adv Sem Gap Ed,3
202108,EETH 4000,Seminar,1
202108,EETH 6000,Seminar,1
202108,EETH 4010,Undergrad Research,3
202108,EETH 8010,Grad Research,3
202108,EETH 4220,Environ Ethics,3
202108,EHSC 3060,Intro Environ Health Science,3
202108,EHSC 3910,Internship in EHS,3
202108,EHSC 3700,Undergrad Research EHS,3
202108,EHSC 4100,Industrial Hygiene,3
202108,EHSC 4150,Solid and Hazardous Waste Mgmt,3
202108,EHSC 4350,Environmental Chemistry,3
202108,EHSC 4490,Environmental Toxicology,3
202108,EHSC 4910,EHS Senior Seminar,1
202108,EHSC 7000,Master-s Research,18
202108,EHSC 7005,Grad Student Sem,3
202108,EHSC 7300,Master-s Thesis,9
202108,EHSC 8030,Env Pub Hlth Res,1
202108,EHSC 8150,Envir Hlth Seminar,1
202108,EHSC 8460,Environmental Genomics,3
202108,EHSC 8460L,Environmental Genomics,0
202108,EHSC 8800,Special Problems,3
202108,EHSC 9000,Doctoral Research,18
202108,EHSC 9005,Doc Grad Stu Sem,3
202108,EHSC 9300,Doct Dissertation,12
202108,EHSC 4100L,Industrial Hygiene Lab,0
202108,EHSC 4350L,Environmental Chemistry Lab,0
202108,EHSC 4320,Food Safety Control Programs,3
202108,EHSC 6320,Food Safety Control Programs,3
202108,EHSC 4320L,Food Safety Control Prog Lab,0
202108,EHSC 6320L,Food Safety Control Prog Lab,0
202108,EHSC 7490,Principles of Toxicology,3
202108,EHSC 3701,Undergrad Resrch Water Qual,3
202108,EHSC 3702,Undergrad Resrch Environ Genom,3
202108,EHSC 3703,Undergrad Resrch Env Microbio,3
202108,EHSC 3705,Undergrad Res Expo Assess Envi,3
202108,EHSC 3707,Undergrad Res Biomark Chemopre,3
202108,EHSC 3708,Undergrad Resrch Occup Toxicol,3
202108,EHSC 4960R,Undergraduate Research I,6
202108,EHSC 8010,Adv Topics EHS I,3
202108,EHSC 7310,Public Health Microbiology,3
202108,EHSC 7010E,Fundamentals of EHSC,3
202108,EHSC 8310,Aquatic Microbiol Hlth Environ,3
202108,EHSC 8310L,Aquatic Microbiol Hlth Env Lab,0
202108,EHSC 2020,Orientation to EHS,1
202108,EHSC 7010,Fundamentals of EHSC,3
202108,EHSC 1101,Biology for a Healthy World,3
202108,EHSC 7080,Adv Environmental Air Quality,3
202108,ELEE 4910,Capstone Design I,2
202108,ELEE 4750,Power System Analysis,3
202108,ELEE 4210,Linear Systems,3
202108,ELEE 6210,Linear Systems,3
202108,ELEE 4260,Introduction to Nanoelectronic,3
202108,ELEE 8310,MEMS Design,3
202108,ELEE 2040,Program for Engrs,3
202108,ELEE 3270,Electronics I,3
202108,ELEE 4020,Electromagnetics,3
202108,ELEE 4145,Principles of Lasers Photonics,3
202108,ELEE 4230,Sensors and Transducers,3
202108,ELEE 4270,Electronics II,3
202108,ELEE 6230,Sensors and Transducers,3
202108,ELEE 4545,Entrepreneurship,3
202108,ELEE 8410,Advanced Motor Drives,3
202108,ELEE 4960R,Undergraduate Research I,3
202108,ELEE 4960R,Undergraduate Research I,6
202108,ELEE 4745,Power Electronics,3
202108,ELEE 6145,Principles of Lasers Photonics,3
202108,ELEE 4280,Intro to Robotics Engineering,3
202108,ELEE 6280,Intro to Robotics Engineering,3
202108,ELEE 8220,Nonlinear Control Systems,3
202108,ELEE 8240,Instrumentation Programming,3
202108,EMAT 7005,Grad Student Sem,3
202108,EMAT 9005,Doc Grad Stu Sem,3
202108,EMAT 9000,Doctoral Research,9
202108,EMAT 9300,Doct Dissertation,9
202108,EMAT 3400,Child-s Math Learn,3
202108,EMAT 3410,Math Teach Curriculum PreK-5,3
202108,EMAT 5280,Teach Middle Grade Number Syst,3
202108,EMAT 7280,Teach Middle Grade Number Syst,3
202108,EMAT 9600,Rsch Math Edu,9
202108,EMAT 6420,Math Methods PreK-8,3
202108,EMAT 6990,Rsch Sem in Math Ed,6
202108,EMAT 9700,Internship Math Edu,9
202108,EMAT 5320,Teaching Middle Grades Algebra,3
202108,EMAT 7320,Teaching Middle Grades Algebra,3
202108,EMAT 4850,Teach Secondary School Math II,3
202108,EMAT 4850L,Field Experience II,1
202108,EMAT 7300,Master-s Thesis,9
202108,EMAT 4950,Professional Sem in Teach Math,3
202108,EMAT 5460,Student Teach Secondary Math,15
202108,EMAT 6850,Teach Secondary School Math II,3
202108,EMAT 6850L,Field Experience II,1
202108,EMAT 6950,Professional Sem in Teach Math,3
202108,EMAT 7460,Student Teach Secondary Math,15
202108,EMAT 6410,Math Learning in PreK-Grade 8,3
202108,EMAT 7700,Internship Math Ed,15
202108,EMAT 7650,App Proj Math Edu,3
202108,EMAT 4860,Connections Secondary Math II,3
202108,EMAT 6860,Connections Secondary Math II,3
202108,EMAT 7000,Master-s Research,9
202108,EMAT 4600,Problem Solving in Mathematics,3
202108,EMAT 6600,Problem Solving in Mathematics,3
202108,EMAT 8040,Critical Issues in Math Ed,3
202108,EMAT 9640,Analysis Rsch EMT,3
202108,EMAT 6730,Hist Math Tchg and Learn in US,3
202108,EMAT 4420,Math Methods PreK-8,3
202108,EMAT 8990,Resch Sem Math Edu,6
202108,EMAT 4000,Special Problems Math Ed,6
202108,EMAT 6000,Special Problems Math Ed,6
202108,EMAT 6420E,Math Methods Prek-8,3
202108,EMAT 6710,Research on Teach Learn Math,3
202108,EMAT 8010,Adv Stud Math Curr,3
202108,EMAT 9800,Practicum Math Edu,9
202108,EMBA 7010,Economic Analysis,3
202108,EMBA 7100,Decision Making,3
202108,EMBA 7410,Org Behavior,3
202108,EMBA 7710,Legal Environment,3
202108,EMBA 7550,Strategic Mgt,3
202108,EMBA 7800,Entrepreneurship,3
202108,EMBA 7750,Service Ops Mgt,3
202108,EMBA 7990,Directed Study,3
202108,EMBA 7450,Info Tech Strat,3
202108,EMBA 7990,Directed Study,6
202108,EMBA 7400,Negotiations,3
202108,EMST 3110,Writing Entertainment Media,3
202108,EMST 3010,Med Entertain and Pop Culture,3
202108,EMST 4110,Screenwriting,3
202108,EMST 5010,Media Ent Industry Internship,3
202108,EMST 5170,Adv Studies Media Entertain,3
202108,EMST 5990,Seminar in Media Arts,3
202108,EMST 3010H,Med Entertain and Pop Cultur H,3
202108,EMST 4200,Cinematography,3
202108,EMST 4120,Producing for the Screen,3
202108,EMST 3150,Entertainment Media Industries,3
202108,EMST 4320,Media Audiences,3
202108,EMST 4210,Sound and Picture Editing,3
202108,EMST 4240,Visual FX and Color,3
202108,EMST 4230,Directing for the Screen,3
202108,EMST 6120,Producing for the Screen,3
202108,EMST 4280,Production Capstone,3
202108,EMST 3320,Entertainment Media Analysis,3
202108,EMST 4330,Media Theory,3
202108,EMST 3210,Production Basics,3
202108,EMST 4440,Representation in Ent,3
202108,EMST 4430,International Media Ent,3
202108,EMST 6110,Screenwriting,3
202108,EMST 4310,Television Histories,3
202108,EMST 6330,Media Theory,3
202108,EMST 6010,Directing I,3
202108,EMST 7110,Writing for the Screen III,3
202108,EMST 7010,Directing III,3
202108,EMST 6042,Camera and Lighting II,3
202108,EMUS 5460,Senior Practicum,12
202108,EMUS 9000,Doctoral Research,18
202108,EMUS 9300,Doctoral Dissertation,18
202108,EMUS 7460,Internship Mus Ed,13
202108,EMUS 8990,Research Seminar in Music Ed,3
202108,EMUS 8220,Philosophy Practice Mus Ed,3
202108,EMUS 7640E,Action Research in Music Ed I,3
202108,EMUS 7100E,Music Ed Pedagogy,3
202108,EMUS 7650E,Applied Project in Music Ed,3
202108,ENED 7010,Preparing to be Engr Educator,3
202108,ENGL 1101,English Composition I,3
202108,ENGL 1102,English Comp II,3
202108,ENGL 4060,Old English,3
202108,ENGL 3300,Women in Literature,3
202108,ENGL 2340,Am Lit Since 1865,3
202108,ENGL 2400,Multicult Am Lit,3
202108,ENGL 4864,Hist Theory Novel,3
202108,ENGL 2320,Eng Lit Since 1700,3
202108,ENGL 3800W,Intro Creative Writ,3
202108,ENGL 1060H,Comp and Multicul Lit Honors,3
202108,ENGL 1050H,Composition and Lit Honors,3
202108,ENGL 3100,Intro to British Culture I,3
202108,ENGL 6800,Forms and Craft,3
202108,ENGL 3800H,Intro Creat Writ H,3
202108,ENGL 4800W,Advanced Creative Writing,3
202108,ENGL 3590W,Tech and Prof Comm,3
202108,ENGL 6911,Teaching Practicum,3
202108,ENGL 6060,Old English,3
202108,ENGL 9000,Doctoral Research,6
202108,ENGL 9300,Doctoral Dissertation,6
202108,ENGL 7000,Master-s Research,6
202108,ENGL 7300,Master-s Thesis,6
202108,ENGL 4840,Internship in Literary Media,3
202108,ENGL 6910,Apprenticeship in College Engl,1
202108,ENGL 4842,Intern Professional Tech Comm,3
202108,ENGL 4670,Twentieth-Century Brit Novel,3
202108,ENGL 4890,Criticism and Culture,3
202108,ENGL 2390H,Multicul Am Lit H,3
202108,ENGL 4660,Twentieth-Century British Poet,3
202108,ENGL 4820,Literary Theory,3
202108,ENGL 8750,Sem Southern Lit,3
202108,ENGL 4700,Early American Literature,3
202108,ENGL 4834,ePortfolio Workshop,1
202108,ENGL 3530,Victorian Studies,3
202108,ENGL 3880S,Civil Rights Lit and Culture,3
202108,ENGL 4520,Nineteenth-Century Brit Novel,3
202108,ENGL 3801W,Intrmed Cw Topics,3
202108,ENGL 4886,Text Corp Analysis,3
202108,ENGL 6886,Text Corp Analysis,3
202108,ENGL 2310,Eng Lit to 1700,3
202108,ENGL 3610H,Introduction to Fiction Honors,3
202108,ENGL 2330,Am Lit to 1865,3
202108,ENGL 3007,Spy Fiction,3
202108,ENGL 3250,Latinx Literature,3
202108,ENGL 3440,Literature and Philosophy,3
202108,ENGL 3850S,Writing and Community,3
202108,ENGL 4080,Language and Complex Systems,3
202108,ENGL 6080,Language and Complex Systems,3
202108,ENGL 4290,Topics Medieval Lit,3
202108,ENGL 6290,Mediev Lit Topics,3
202108,ENGL 4010,American English,3
202108,ENGL 6010,American English,3
202108,ENGL 4320,Shakespeare I: Selected Works,3
202108,ENGL 4340,Renaissance Drama,3
202108,ENGL 4400,Rest 18th-C Drama,3
202108,ENGL 4721,Mark Twain,3
202108,ENGL 4780,Twentieth-Century Amer Novel,3
202108,ENGL 4832W,Writing for the Web,3
202108,ENGL 4866,Novel After 1900,3
202108,ENGL 4885,Intro to Hum Comp,3
202108,ENGL 4897,Science Fiction,3
202108,ENGL 6830,Theory Topics,3
202108,ENGL 6885,Intro to Hum Comp,3
202108,ENGL 8550,Sem Victorian Lit,3
202108,ENGL 8710,Sem American Writer,3
202108,ENGL 8730,Multicult Seminar,3
202108,ENGL 8800,Sem Creat Writing,3
202108,ENGL 3460,Literature and Utopia,3
202108,ENGL 4300,Elizabethan Poetry,3
202108,ENGL 4790,Topics in American Literature,3
202108,ENGL 6790,Am Lit Topics,3
202108,ENGL 6920,Apprentice College Engl Pedago,1
202108,ENGL 4430,18th Cen Eng Novel,3
202108,ENGL 8960,Directed Reading,3
202108,ENGL 2380H,Am Lit Since 1865 H,3
202108,ENGL 3050H,Introduction to Poetry Honors,3
202108,ENGL 3230,Develop African American Lit,3
202108,ENGL 3410,Literature and Media,3
202108,ENGL 3500,Jane Austen-s World,3
202108,ENGL 3600W,Advanced Composition,3
202108,ENGL 3610,Introduction to Fiction,3
202108,ENGL 4490,Topics 18-Century Literature,3
202108,ENGL 4500,Romantic Literature,3
202108,ENGL 4510,19th-Cen Brit Prose,3
202108,ENGL 4710,American Renaissance,3
202108,ENGL 4740,Southern Literature,3
202108,ENGL 4760,Contemp Amer Lit,3
202108,ENGL 4791,American Autobiography,3
202108,ENGL 4884,21st Century Black Writers,3
202108,ENGL 4005,Hist Eng Lang,3
202108,ENGL 6005,Hist Eng Lang,3
202108,ENGL 4821,Poetics,3
202108,ENGL 4826,Style Language Genre Cognition,3
202108,ENGL 6826,Style  Language Genre Cognit,3
202108,ENGL 4875,Aesthetics and Politics,3
202108,ENGL 4895,Literature and Other Arts,3
202108,ENGL 6710,Am Writing 1820-65,3
202108,ENGL 8600,Sem Modern Lit,3
202108,ENGL 8720,African Am Sem,3
202108,ENGL 8900,Rhetorical Theory,3
202108,ENGL 4540,Victorian Poetry,3
202108,ENGL 4913,Intern Writ Center Pedagogy,3
202108,ENGL 6913,Intern Writ Center Pedagogy,3
202108,ENGL 4912S,Writing Center Theory Practice,3
202108,ENGL 6912S,Writing Center Theory Practice,3
202108,ENGL 1102E,English Comp II,3
202108,ENGL 4960R,Undergraduate Research I,6
202108,ENGL 4690,Twentieth-Century British Lit,3
202108,ENGL 4505,Jane Austen,3
202108,ENGL 4650,Modern Drama,3
202108,ENGL 4680,Modern Irish Literature,3
202108,ENGR 1140,Computational Engr Methods,2
202108,ENGR 2110,Eng Decision Making,3
202108,ENGR 2120,Engineering Statics,3
202108,ENGR 2130,Dynamics,3
202108,ENGR 2140,Strength of Materials,3
202108,ENGR 3160,Fluid Mechanics,3
202108,ENGR 4350,Intro Finite Element Analysis,3
202108,ENGR 6350,Intro Finite Element Analysis,3
202108,ENGR 1920,Introduction to Engineering,1
202108,ENGR 9000,Doctoral Research,9
202108,ENGR 9010,Project-Focused Doctoral Res,6
202108,ENGR 7000,Master-s Research,9
202108,ENGR 8103,Computational Engr,3
202108,ENGR 8950,Grad Seminar,1
202108,ENGR 7010,Project Msresearch,6
202108,ENGR 3910,Cooperative Work Experience,12
202108,ENGR 7300,Master-s Thesis,9
202108,ENGR 1120,Engineering Graphics Design,2
202108,ENGR 3150,Heat Transfer,3
202108,ENGR 3140,Engineering Thermodynamics,3
202108,ENGR 2170,Applied Circuit Analysis,3
202108,ENGR 9300,Doct Dissertation,9
202108,ENGR 7300,Master-s Thesis,3
202108,ENGR 2090,Probability and Stat for Engr,3
202108,ENGR 1140H,Computational Engr Methods Hon,2
202108,ENGR 2120H,Engineering Statics Honors,3
202108,ENGR 1120H,Eng Graphics and Design Honors,2
202108,ENGR 8110,Informatics Engr Environ Sci,3
202108,ENGR 2170L,Applied Circuit Analysis Lab,0
202108,ENGR 8910,Foundations for Engr Research,3
202108,ENGR 7900,Graduate Internship,10
202108,ENGR 6990,Advanced Topics in Engineering,3
202108,ENGR 8990,Adv Topics Engr,3
202108,ENGR 8900,Directed Study in Engineering,3
202108,ENGR 4960R,Undergraduate Research I,3
202108,ENGR 8180,Advanced Mass Transfer,3
202108,ENGR 4670,Quality Engineering,3
202108,ENGR 6670,Quality Engineering,3
202108,ENGR 8910E,Foundations for Engr Research,3
202108,ENGR 6900,Directed Study in Engineering,3
202108,ENGR 4900,Spec Topics in Engr,3
202108,ENGR 8930,Optim Theory and Engr Applicat,3
202108,ENTO 2010,Insects and the Environment,3
202108,ENTO 3140,Insect Nat History,4
202108,ENTO 3140L,Insect Nat Hist Lab,0
202108,ENTO 4740,Integrated Pest Management,3
202108,ENTO 6740,Integrated Pest Management,3
202108,ENTO 7000,Master-s Research,18
202108,ENTO 3740,Insect Pest Mgt,4
202108,ENTO 3740L,Insect Pest Mgt Lab,0
202108,ENTO 4261,Museum Natural History Intern,3
202108,ENTO 6130,Crop Protection,1
202108,ENTO 8010,Insect Taxonomy,5
202108,ENTO 8010L,Insect Taxonomy Lab,0
202108,ENTO 9000,Doctoral Research,18
202108,ENTO 4960,Undergraduate Research in Ento,4
202108,ENTO 4000,General Ent,4
202108,ENTO 4000L,General Ent Lab,0
202108,ENTO 6000,General Ent,4
202108,ENTO 7300,Master-s Thesis,9
202108,ENTO 9300,Doct Dissertation,9
202108,ENTO 6000L,General Ent Lab,0
202108,ENTO 8070,Research Discussion,1
202108,ENTO 8900,Probs in Entomology,9
202108,ENTO 8900,Probs in Entomology,1
202108,ENTO 8570,Molecular Ent,2
202108,ENTO 3000E,Undergrad Entomology Seminar,1
202108,ENTO 3900,Special Problems in Entomology,3
202108,ENTO 8000E,Entomology Seminar,1
202108,ENTO 4960R,Undergraduate Research I,6
202108,ENTO 4970R,Undergraduate Research II,4
202108,ENTO 4125,Organic Agricultural Systems,4
202108,ENTO 6125,Organic Agricultural Systems,4
202108,ENTO 4360,Ornamental Pest Management,3
202108,ENTO 6360,Ornamental Pest Management,3
202108,ENTO 4500E,Biological Control,3
202108,ENTO 6500E,Biological Control,3
202108,ENTO 3910,Entomology Internship,3
202108,ENTO 2010E,Insects and the Environment,3
202108,ENTO 8500,Insect Ecology,2
202108,ENTO 3010,Bees and Beekeeping,3
202108,ENTO 4300S,Insect Outreach,3
202108,ENTO 6300S,Insect Outreach,3
202108,ENTO 3000,Undergrad Entomology Seminar,1
202108,ENTO 8000,Entomology Seminar,2
202108,ENTO 4980R,Undergraduate Research III,6
202108,ENTR 5500,Intro to Entrepreneurship,3
202108,ENTR 5505,Fund Entrepreneurial Venture,3
202108,ENTR 5525,Manage Entrepreneurial Venture,3
202108,ENTR 7320,Innovative Business Projects,3
202108,ENTR 7510,Business Plans,3
202108,ENTR 7500,Intro to Entrepreneurship,3
202108,ENTR 7505,Entrepreneurial Finance,3
202108,ENTR 7525,Manage Entrepreneurial Venture,3
202108,ENTR 7990,Directed Study in ENTR,3
202108,ENTR 5990,Directed Study in ENTR,3
202108,ENTR 5090,Design Thinking,3
202108,ENTR 7090,Critical Design Thinking,3
202108,ENTR 5320,Innovative Business Projects,3
202108,ENTR 5000,Special Topics in ENTR,3
202108,ENVE 4230,Energy in Nature Civil Engin,3
202108,ENVE 4250,Energy Syst Envr,3
202108,ENVE 4530,Energy Env Policy,3
202108,ENVE 4910,Capstone Design I,2
202108,ENVE 6230,Energy in Nature Civil Engin,3
202108,ENVE 3320,Env Engineering Urban Systems,3
202108,ENVE 3210,Energy Analysis I,3
202108,ENVE 3320L,Env Engr Urb Lab,1
202108,ENVE 6530,Energy Env Policy,3
202108,ENVE 6250,Energy Systems and Environment,3
202108,ENVE 3510,Model Stat Analy,3
202108,ENVE 4470,Environ Engineering Unit Ops,3
202108,ENVE 4410,Open Channel Hydraulics,3
202108,ENVE 4435,Natural Resources Engineering,3
202108,ENVE 6435,Natural Resources Engineering,3
202108,ENVE 6410,Open Channel Hydraulics,3
202108,ENVE 6470,Environ Engineering Unit Ops,3
202108,ENVE 8450,Engineering Rapid Change,3
202108,ENVE 4960,Undergraduate Research in ENVE,3
202108,ENVM 4800,Water Resource Econ and Mgmt,3
202108,ENVM 6800,Water Resource Econ and Mgmt,3
202108,ENVM 3910,Internships,3
202108,ENVM 4650,Environmental Economics,3
202108,ENVM 6650,Environmental Economics,3
202108,EPID 7010,Introduction to Epidemiology I,3
202108,EPID 4070,Fundamentals of Epidemiology,3
202108,EPID 7100,Topics in Epid,1
202108,EPID 9000,Doctoral Research,18
202108,EPID 4960,Epidemiology Research,4
202108,EPID 4970,Epidemiology Research,4
202108,EPID 7010E,Introduction to Epidemiology I,3
202108,EPID 9300,Doct Dissertation,12
202108,EPID 8910,Problems in Epidem,3
202108,EPID 7500,Intro Coding in R for Pub Hlth,3
202108,EPID 8010,Cohort Designs,3
202108,EPID 8120,Screening and Prevention,3
202108,EPID 9100,Epidemiology Doctoral Seminar,1
202108,EPID 8400,Epi Chronic Disease,3
202108,EPID 8500,Infectious Disease,3
202108,EPID 7020,Intro to Epidemiology II,3
202108,EPID 7000,Master-s Research,18
202108,EPID 4960R,Undergraduate Research I,3
202108,EPID 8510E,Systems Infectious Disease Epi,3
202108,EPID 7800,Fundamentals of Public Health,1
202108,EPID 4990,Epidemiology Research,4
202108,EPID 2100,Data Literacy in Public Health,3
202108,EPID 8060E,Modern Applied Data Analysis,3
202108,EPID 4970R,Undergraduate Research II,6
202108,EPID 8130,Syst Reviews and Ma,3
202108,EPSY 8140,Dev Psychopathology Schooling,3
202108,EPSY 7330,Indiv-Acad-Interv,3
202108,EPSY 8720,Pract in Sch Psych,9
202108,EPSY 9720,Adv Intern Sch Psy,9
202108,EPSY 4010,Research-Based Exp in Ed Psyc,3
202108,EPSY 6720,Master Prac Sch Psy,9
202108,EPSY 2130,Exploring Learning Teaching,3
202108,EPSY 6000,Indep Study Ed Psy,6
202108,EPSY 7000,Master-s Research,9
202108,EPSY 7005,Grad Student Sem,3
202108,EPSY 7300,Master-s Thesis,9
202108,EPSY 9000,Doctoral Research,6
202108,EPSY 9005,Doc Grad Stu Sem,3
202108,EPSY 9300,Doct Dissertation,9
202108,EPSY 6010E,Develop for Educ,3
202108,EPSY 7230E,Strategies - Gifted,3
202108,EPSY 7250E,Prog Curr Dev Gift,3
202108,EPSY 7110,Charac Gifted Child,3
202108,EPSY 7720,Pract Psychoeducat,6
202108,EPSY 6800E,Cognition,3
202108,EPSY 7710E,Practicum in Gifted,3
202108,EPSY 9710E,Internship Gifted,3
202108,EPSY 2130H,Exploring Learn and Teach Hon,3
202108,EPSY 7650E,App Proj Ed Psych,3
202108,EPSY 8650E,App Edu Specialist Proj EPSY,3
202108,EPSY 6990E,Master-s Seminar in Ed Psych,6
202108,EPSY 8010,History of Psychology,3
202108,EPSY 7200,Social Emotional Assessment,3
202108,EPSY 4960R,Undergraduate Research I,6
202108,EPSY 7060,Assessment of Gifted Children,3
202108,EPSY 7240,Creativity Instruct,3
202108,EPSY 4061E,Motivational Foundations Edu,3
202108,EPSY 8140L,Dev Psychopathology Lab,3
202108,EPSY 4000,Indep Study Ed Psy,6
202108,EPSY 8990,Doc Seminar Ed Psy,6
202108,EPSY 7650,App Proj Ed Psych,3
202108,EPSY 8420,Autism Spectrum Disorders,9
202108,EPSY 8750,Pract College Tch,3
202108,EPSY 6300,Intro Sch Psych,3
202108,EPSY 8550,Multicultural Social Justice,3
202108,EPSY 6990,Master-s Seminar in Ed Psych,6
202108,EPSY 8160,Spec Top Ed Psych,3
202108,EPSY 3200,Child Develop and Teach in Sci,3
202108,EPSY 4061,Motivational Foundations Educ,3
202108,EPSY 8060,Adv Sem Mot Edu,3
202108,EPSY 7160E,Nurturing Independent Learners,3
202108,EPSY 5120E,Autism Spectrum Disorders,3
202108,EPSY 2130E,Explore Learning and Teaching,3
202108,EPSY 4970R,Undergraduate Research II,6
202108,ERSH 8770,Multilevel Modeling,3
202108,ERSH 8320,App Corr and Regres Mth Educ,3
202108,ERSH 8310,App Anova in Edu,3
202108,ERSH 8610,Theory Ed Meas,3
202108,ERSH 6300,Applied Statistical Methods Ed,3
202108,ERSH 8750,Structural Equation Modeling,3
202108,ERSH 6200E,Mthds Rsch in Edu,3
202108,ERSH 6200,Mthds Rsch in Edu,3
202108,ERSH 9210,Quant Dsgn in Ed,3
202108,ERSH 4200E,Mthds Rsch in Edu,3
202108,ERSH 8360,Cat Data Ana in Ed,3
202108,ERSH 8640,Computerized Adaptive Testing,3
202108,ERSH 8620,Item Respons Theory,3
202108,ERSH 7800,Topics in Educational Research,3
202108,ERSH 4600E,Applied Educational Assessment,3
202108,ERSH 6600E,Applied Educational Assessment,3
202108,ERSH 6510E,Applied Quantitative Analysis,1
202108,ESCI 4420,Science for Elementary Ed,3
202108,ESCI 3450,Practicum Sci Ed,3
202108,ESCI 4450,Science Curriculum,3
202108,ESCI 4460,Methods Sci Teach,3
202108,ESCI 6450,Science Curriculum,3
202108,ESCI 6460,Methods Sci Teach,3
202108,ESCI 4480,Tech for Sci Tch,3
202108,ESCI 6480,Tech for Sci Tch,3
202108,ESCI 7005,Grad Student Sem,3
202108,ESCI 9005,Doc Grad Stu Sem,3
202108,ESCI 9000,Doctoral Research,9
202108,ESCI 9300,Doct Dissertation,15
202108,ESCI 9600,Ed Res Science Ed,9
202108,ESCI 4430,Science Curric for Mid Grades,3
202108,ESCI 4410,Phys Sci for Mid School Teach,3
202108,ESCI 6410,Phys Sci for Mid School Teach,3
202108,ESCI 4470,Special Topics Science Teach,3
202108,ESCI 6470,Special Topics Science Teach,3
202108,ESCI 8990,Research Seminar,6
202108,ESCI 6990E,Research Seminar in Science Ed,3
202108,ESCI 6430,Science Curric for Mid Grades,3
202108,ESCI 6420,Science for PreK-8th Grade,3
202108,ESCI 7650,App Proj Sci Ed,3
202108,ESCI 8210,Multicultural Educ Research,3
202108,ESCI 8100,Internatnal Sci Ed,3
202108,ESCI 9700,Internship Sci Ed,9
202108,ESCI 6000,Spec Prob Sci Ed,6
202108,ESCI 7040E,Strat for Mid Sec Sch Sci Teac,3
202108,ESCI 9630,Ed Literature Sci,3
202108,ESCI 9740,Sci Studies and Scied,3
202108,ESOC 6350,Soc St Curric,3
202108,ESOC 6360,Soc St Methods,3
202108,ESOC 9000,Doctoral Research,9
202108,ESOC 9300,Doct Dissertation,9
202108,ESOC 9600,Rsch Soc Sci Edu,9
202108,ESOC 4450L,Senior Field Exp in Soc Sci Ed,3
202108,ESOC 3420,Elementary Social Studies,3
202108,ESOC 4455,Senior Fld Exp in Soc Stu Ed,3
202108,ESOC 6370,Social Studies Teach and Learn,3
202108,ESOC 4350,Soc St Curric,3
202108,ESOC 4360,Soc St Methods,3
202108,ESOC 4370,Social Studies Teach and Learn,3
202108,ESOC 9700,Intern in Soc Sc Ed,9
202108,ESOC 5060,Teach World History,3
202108,ESOC 7060,Teach World History,3
202108,ESOC 4112,History for History Teachers,3
202108,ESOC 8990,Rsch Sem Soc Sci,3
202108,ESOC 8045,Special Topics Sse,3
202108,ESOC 5040,Teaching Politics Govt Citizen,3
202108,ESOC 7040,Teaching Politics Govt Citizen,3
202108,ETAP 9110,ETAP Doctoral Orientation,3
202108,ETAP 9005,Doctoral Grad Student Seminar,3
202108,ETAP 2200,Education Around the World,3
202108,ETAP 7610,Classroom Mgmt Cultur Resp,3
202108,ETAP 7060S,Theory and Practice of SL,3
202108,ETAP 7500,Action Research,3
202108,ETAP 7330,Equity in Education,3
202108,ETAP 9000,Doctoral Research,9
202108,ETAP 9300,Doctoral Dissertation,9
202108,ETAP 9600,Educational Research in ETAP,9
202108,ETAP 6990,Rsch Sem,3
202108,ETAP 8990,Research Seminar in ETAP,6
202108,ETAP 8565,Theoretical Frameworks,3
202108,ETAP 8240,Pedagogies of Teacher Educ,3
202108,ETAP 7500E,Action Research,3
202108,ETAP 8045,Special Topics in ETAP,3
202108,ETAP 7045,Special Top Ed Theory and Prac,3
202108,ETAP 7600E,Hip Hop Pedagogy,3
202108,ETAP 5610,Classroom Mgmt Cultur Resp,3
202108,ETAP 8570,Postmod Turn Theories Methods,3
202108,ETAP 8045E,Special Topics in ETAP,3
202108,ETAP 7045E,Special Top Ed Theory and Prac,3
202108,ETAP 9630,Critique Ed Res Lit,3
202108,ETAP 7310,Critical Stds in ETAP,3
202108,ETAP 8150,Fam-Sch-Com Interac,3
202108,ETES 5010E,Tech and Society,3
202108,ETES 7010E,Tech and Society,3
202108,FACS 2000E,Intro Family and Consumer Sci,1
202108,FACS 2000,Intro Family and Consumer Sci,1
202108,FACS 5910,FACS Internship,3
202108,FACS 7910,FACS Internship,3
202108,FACS 2001,Leadership in FACS,1
202108,FANR 1200,Natural History of Georgia,3
202108,FANR 3000,Field Meas,2
202108,FANR 3000L,Field Meas Lab,2
202108,FANR 3200L,Ecology Natural Resources Lab,1
202108,FANR 3300,Econ of Renew Res,2
202108,FANR 3300D,Econ of Renew Res D,0
202108,FANR 3400,Society and Nat Res,2
202108,FANR 3400D,Society and Nat Res,0
202108,FANR 3800,Spatial Analysis,2
202108,FANR 3800L,Spatial Lab,1
202108,FANR 4350,Conservation Genetics,3
202108,FANR 5950,Special Topics in FANR,1
202108,FANR 6750,Exp Methods Forest and NR Res,4
202108,FANR 3060,Soils and Hydrology,3
202108,FANR 3060L,Soils Hydrol Lab,1
202108,FANR 6350,Conservation Genetics,3
202108,FANR 6750D,Exp Methods Forest and NR Res,0
202108,FANR 7000,Master-s Research,18
202108,FANR 7300,Master-s Thesis,12
202108,FANR 8200,Scientific Research,3
202108,FANR 9000,Doctoral Research,18
202108,FANR 9300,Doct Dissertation,12
202108,FANR 4261,Museum Natural History Intern,3
202108,FANR 1100E,Natural Resources Conservation,3
202108,FANR 3950,Prof Commun Develop,3
202108,FANR 4500S,Senior Project in FANR Manage,4
202108,FANR 8900,Univ Teach Nat Res,3
202108,FANR 1500,Funds of Sust Dev,3
202108,FANR 8060,FANR Seminar Series,1
202108,FANR 4990R,Senior Thesis,4
202108,FANR 9990,Teaching Practicum,3
202108,FANR 8300,Sci Comm For and NR,3
202108,FANR 8300L,Sci Com F and Nr Lab,0
202108,FANR 8400,Adv Spatial Analysis Natl Res,4
202108,FANR 4950,Directed Studies,2
202108,FANR 4960R,Undergraduate Research I,4
202108,FANR 3200W,Ecology of Natural Resources,3
202108,FANR 2010,Intro Nat Res Stat,4
202108,FANR 2010L,Intro Nat Res Stat Lab,0
202108,FANR 4960R,Undergraduate Research I,2
202108,FANR 9200,Applied Research,2
202108,FANR 4970R,Undergraduate Research II,2
202108,FANR 4960R,Undergraduate Research I,3
202108,FANR 5950,Special Topics in FANR,3
202108,FANR 4950,Directed Studies,1
202108,FANR 4990R,Senior Thesis,1
202108,FANR 4960R,Undergraduate Research I,1
202108,FANR 4990R,Senior Thesis,2
202108,FANR 4970R,Undergraduate Research II,1
202108,FANR 4271W,People Planet and Profit,3
202108,FANR 6271W,People Planet and Profit,3
202108,FANR 9990,Teaching Practicum,1
202108,FANR 1100,Natural Resources Conservation,3
202108,FANR 8500,Agent Based Modeling Ecology,3
202108,FANR 5950,Special Topics in FANR,2
202108,FANR 4950,Directed Studies,3
202108,FANR 9200,Applied Research,3
202108,FANR 4980R,Undergraduate Research III,2
202108,FCID 2000,Transnatl Europe,1
202108,FCID 4200,Interdisciplinary Sustain Sem,1
202108,FCID 4920S,FOCUS Service Learning Exper,3
202108,FCID 6200,Interdisciplinary Sustain Sem,1
202108,FCID 4500,Sustainability Capstone,3
202108,FCID 5010,Introduction to Museum Studies,3
202108,FCID 7010,Introduction to Museum Studies,3
202108,FCID 5015,Museum Internship,3
202108,FCID 6920S,FOCUS Service Learning Exper,3
202108,FCID 7015,Museum Internship,3
202108,FDNS 2100,Human Nutrition and Food,3
202108,FDNS 2400,Careers Science Med and Health,1
202108,FDNS 3600,Food Principles,3
202108,FDNS 3600L,Food Principles Lab,1
202108,FDNS 4050,Optimal Nutrition Life Span,3
202108,FDNS 6050,Optimal Nutrition Life Span,3
202108,FDNS 4070,Research Methods,1
202108,FDNS 6070,Research Methods,1
202108,FDNS 4100,Micronutrient Nutrition,3
202108,FDNS 6100,Micronutrient Nutrition,3
202108,FDNS 4500,Med Nutr Therapy I,3
202108,FDNS 6500,Med Nutr Therapy I,3
202108,FDNS 4510,Human Life Cycle Nutrition,3
202108,FDNS 6510,Human Life Cycle Nutrition,3
202108,FDNS 4610,Procurement Fin Mgt,1
202108,FDNS 6610,Procurement Fin Mgt,1
202108,FDNS 4630,Cultural Aspects of FDNS,3
202108,FDNS 6630,Cultural Aspects of FDNS,3
202108,FDNS 4645,Functional Nutritional Foods,2
202108,FDNS 6645,Functional Nutritional Foods,2
202108,FDNS 7911,Dietetics Supv Prac Prof Dev,2
202108,FDNS 5910,Dietetics Practicum,3
202108,FDNS 6400,Adv Macronutrients,3
202108,FDNS 8900,Seminar in Fdn,6
202108,FDNS 7600,Health Intervention,4
202108,FDNS 4900,Seminar in Foods and Nutrition,1
202108,FDNS 9000,Doctoral Research,12
202108,FDNS 7000,Master-s Research,12
202108,FDNS 2100E,Human Nutrition and Food,3
202108,FDNS 4050E,Optimal Nutrition Life Span,3
202108,FDNS 6050E,Optimal Nutrition Life Span,3
202108,FDNS 7950E,School Nutrition Field Exp I,1
202108,FDNS 3010,Spec Prob in Fdn,12
202108,FDNS 6240E,Nutrition Obesity Lifespan,3
202108,FDNS 4660S,FDNS Education Methods,3
202108,FDNS 6660S,FDNS Education Methods,3
202108,FDNS 8150,Food and Nutritional Biochem,3
202108,FDNS 5930,Culinary Sci Nutrition Intern,6
202108,FDNS 4647,Sensory Evaluation of Food,3
202108,FDNS 6647,Sensory Evaluation of Food,3
202108,FDNS 6640E,Food Sanitation and Safety,3
202108,FDNS 2050E,Intro to Sport Nutri and Welln,3
202108,FDNS 9300,Doctoral Dissertation,12
202108,FDNS 7300,Master-s Thesis,12
202108,FDNS 6770E,Managing School Nutrition Prog,4
202108,FDNS 5010,Nutri Sci Research,9
202108,FDNS 6580,Grad Food Nutr Top,3
202108,FDNS 7011,Directed Study in FDN,12
202108,FDNS 8530,Nutrition Disease Processes I,3
202108,FDNS 6250E,Diet and Disease Nutrition Ed,3
202108,FDNS 4640E,Food Sanitation and Safety,3
202108,FDNS 7011E,Directed Study in FDN,12
202108,FDNS 8230,Adv Nutri in Phys Act Exercise,3
202108,FDNS 3100,Macronutrients Energy Balance,3
202108,FDST 9000,Doctoral Research,18
202108,FDST 9300,Doctoral Dissertation,10
202108,FDST 7000,Master-s Research,18
202108,FDST 7300,Master-s Thesis,10
202108,FDST 3910,FS Internship,3
202108,FDST 8910,Fd Sci Internship,3
202108,FDST 8500,Food Science Seminar,1
202108,FDST 6500,Proseminar Food Sci,1
202108,FDST 2010,Food Issues and Choices,3
202108,FDST 4040,Food Chemistry,4
202108,FDST 4040L,Food Chemistry Lab,0
202108,FDST 6040,Food Chemistry,4
202108,FDST 6040L,Food Chemistry Lab,0
202108,FDST 7020E,Multidisciplinary Topics Foods,3
202108,FDST 4030,Food Microbiology,4
202108,FDST 6030,Food Microbiology,4
202108,FDST 4030L,Food Microbiology Lab,0
202108,FDST 6030L,Food Microbiology Lab,0
202108,FDST 4013,Food Processing III,3
202108,FDST 6013,Food Processing III,3
202108,FDST 4013L,Food Proc III Lab,0
202108,FDST 6013L,Food Proc III Lab,0
202108,FDST 4011,Food Processing I,3
202108,FDST 6011,Food Processing I,3
202108,FDST 4011L,Food Proc I Lab,0
202108,FDST 6011L,Food Proc I Lab,0
202108,FDST 4320,Food Safety Control Programs,3
202108,FDST 6320,Food Safety Control Programs,3
202108,FDST 4320L,Food Safety Control Prog Lab,0
202108,FDST 6320L,Food Safety Control Prog Lab,0
202108,FDST 4800,Spec Prob in FS,3
202108,FDST 8150,Food and Nutritional Biochem,3
202108,FDST 7007E,Directed Project Food Science,3
202108,FDST 4120,Food Fermentations,3
202108,FDST 6120,Food Fermentations,3
202108,FDST 4120L,Food Fermentations Lab,0
202108,FDST 6120L,Food Fermentations Lab,0
202108,FDST 4400,Exper Senior Proj Food Science,3
202108,FDST 7150E,Food Ingredients and Function,3
202108,FDST 4647,Sensory Evaluation of Food,3
202108,FDST 6647,Sensory Evaluation of Food,3
202108,FDST 7160E,Sensory Eval for Food Prof,3
202108,FDST 7120E,Food Fermentation Technology,3
202108,FDST 2050,Food in History and Culture,3
202108,FDST 4250,Princ Food Prod Develop,2
202108,FDST 4250L,Princ Food Prod Develop Lab,0
202108,FDST 6250,Princ Food Prod Develop,2
202108,FDST 6250L,Princ Food Prod Develop Lab,0
202108,FDST 8010,Food Lipids,3
202108,FDST 7030E,Food Biochemical Reactions,3
202108,FDST 7070E,Functional Foods,3
202108,FDST 7250E,Food Product Development,3
202108,FDST 8800,Spec Prob in Fd Sci,3
202108,FDST 7180E,Marketing of Value-Added Foods,3
202108,FDST 8100,Food Carbohydrates,3
202108,FDST 2010E,Food Issues and Choices,3
202108,FDST 8330,Pop Genetics Plant Assoc Micro,3
202108,FDST 4960R,Undergraduate Research I,6
202108,FDST 7900E,Topics in Food Technology,3
202108,FHCE 2100,Introduction to Consumer Econ,3
202108,FHCE 3010,Directed Study in FHCE,12
202108,FHCE 3100,Consumer Decision Making,3
202108,FHCE 3150,Consumer Economics Theory,3
202108,FHCE 3200,Intro to Pers Finan,3
202108,FHCE 3350,Intro Res Prop Mgmt,3
202108,FHCE 4200,Wealth Management I,3
202108,FHCE 4220,Estate Planning,3
202108,FHCE 4230,Family Tax Planning,3
202108,FHCE 4300,Adv Hsg Theories,3
202108,FHCE 6300,Adv Hsg Theories,3
202108,FHCE 4320,Res Prop Mgmt Law,3
202108,FHCE 6320,Res Prop Mgmt Law,3
202108,FHCE 5100,Consumer Policy,3
202108,FHCE 7100,Consumer Policy,3
202108,FHCE 5150,Cons An Evidence Based Policy,3
202108,FHCE 7150,Cons An Evidence Based Policy,3
202108,FHCE 5200,Financial Counsel Client Comm,3
202108,FHCE 5250,Capstone in Financial Planning,3
202108,FHCE 5900,Professional Career Readiness,1
202108,FHCE 5910,FHCE Internship,9
202108,FHCE 7910,FHCE Internship,9
202108,FHCE 7020,Research Development I,2
202108,FHCE 8000,Research Methods in FHCE I,3
202108,FHCE 8100,Thr Hh and Cons Beh I,3
202108,FHCE 3010,Directed Study in FHCE,3
202108,FHCE 4000,Cons An Evidence Based Strateg,3
202108,FHCE 6000,Cons An Evidence Based Strateg,3
202108,FHCE 6200E,Advanced Wealth Management I,3
202108,FHCE 8200E,Financial Plan and Analysis,3
202108,FHCE 9000,Doctoral Research,15
202108,FHCE 9300,Doctoral Dissertation,9
202108,FHCE 6220E,Advanced Estate Planning,3
202108,FHCE 7200E,Adv Fina Counsel Clien Comm,3
202108,FHCE 7005,Grad Student Sem,3
202108,FHCE 9010,Directed Study Fhce,12
202108,FHCE 1110,Cons in Our Society,3
202108,FHCE 5350S,Housing Counseling,3
202108,FHCE 7350S,Housing Counseling,3
202108,FHCE 6200,Advanced Wealth Management I,3
202108,FHCE 6220,Advanced Estate Planning,3
202108,FHCE 6230,Advanced Family Tax Planning,3
202108,FHCE 7200,Adv Fin Counsel and Clien Com,3
202108,FHCE 7010,Dir Stdy in Fhce,12
202108,FHCE 7960,Quantitative Internship FHCE,4
202108,FHCE 5960,Quantitative Internship FHCE,4
202108,FHCE 9005,Doc Grad Stu Sem,3
202108,FHCE 4100,Consumer Well-Being,3
202108,FHCE 3300E,Housing Contemporary Society,3
202108,FHCE 5950,Research Internship in FHCE,4
202108,FHCE 7950,Research Internship in FHCE,4
202108,FHCE 7250,Capstone Adv Financial Plan,3
202108,FHCE 8150,Households Cons Econ Fin Beh,3
202108,FHCE 6100,Consumer Well-Being,3
202108,FHCE 5310,Affordable Housing Management,3
202108,FHCE 7310,Affordable Housing Management,3
202108,FHCE 5205S,Clinical Pract Financial Plan,3
202108,FHCE 7205S,Clinical Pract Financial Plan,3
202108,FHCE 4210,Retirement Plan Empl Benefits,3
202108,FHCE 4051,Social Entrepren Soc Imp Comm,3
202108,FHCE 5160,Capstone in Consumer Economics,3
202108,FHCE 7160,Capstone in Consumer Economics,3
202108,FHCE 8901,Research Seminar Series FHCE,1
202108,FHCE 6205E,Advanced Wealth Management II,3
202108,FHCE 6210E,Adv Retire Plan Empl Benefits,3
202108,FHCE 6051,Social Entrepren Soc Imp Comm,3
202108,FHCE 4010,Intro to Social Entrepreneur,3
202108,FHCE 6010,Intro to Social Entrepreneur,3
202108,FHCE 8550,Money and Relationships,3
202108,FHCE 3260,Computer Apps for Finan Plan,3
202108,FHCE 3200E,Intro to Pers Finan,3
202108,FHCE 8200,Fin Plan Analysis,3
202108,FHCE 4400E,Family Demographics and Policy,3
202108,FHCE 6400E,Family Demographics and Policy,3
202108,FHCE 6900,Seminar in Fhce,3
202108,FHCE 4205,Wealth Management II,3
202108,FHCE 8900,Seminar in Fhce,12
202108,FHCE 8025E,Res Eval and Theory FHCE,3
202108,FHCE 7250E,Capstone in Adv Financial Plan,3
202108,FHCE 7000,Master-s Research,15
202108,FHCE 4400,Family Demographics and Policy,3
202108,FHCE 6400,Family Demographics and Policy,3
202108,FHCE 2100E,Introduction to Consumer Econ,3
202108,FHCE 3100E,Consumer Decision Making,3
202108,FHCE 5900E,Professional Career Readiness,1
202108,FHCE 3150E,Consumer Economics Theory,3
202108,FILM 5900,Film Theory,3
202108,FILM 7900,Film Theory,3
202108,FILM 2120,Introduction to Cinema,3
202108,FILM 5700,Internship in Film-Media,3
202108,FILM 4680,Intro to DV Product,3
202108,FILM 6680,Intro to DV Product,3
202108,FILM 4260,History of Cinema II,3
202108,FILM 6260,History of Cinema II,3
202108,FILM 4250,History of Cinema I,3
202108,FILM 6250,History of Cinema I,3
202108,FILM 4650,French Film History,3
202108,FILM 6650,French Film History,3
202108,FILM 4600,Women and Film,3
202108,FILM 6600,Women and Film,3
202108,FILM 2000,On Set Film Production,6
202108,FILM 2020,Electric and Lighting,6
202108,FILM 2040,Editing for Film and TV,6
202108,FILM 6000,Proseminar Film and TV Writing,4
202108,FILM 6045,Post Production I,3
202108,FILM 4640,Lat Am Film-Med,3
202108,FILM 6640,Lat Am Film-Med,3
202108,FILM 2130,American Directors of Color,3
202108,FILM 4270,History of Cinema III,3
202108,FILM 6270,History of Cinema III,3
202108,FILM 4620,Genre Cinema,3
202108,FILM 6620,Genre Cinema,3
202108,FILM 5640,Directing for the Cinema,3
202108,FILM 7640,Directing for the Cinema,3
202108,FILM 2050,Special Effects Makeup,6
202108,FINA 3000,Financial Management,3
202108,FINA 4200,Corporate Finance Theory,3
202108,FINA 9000,Doctoral Research,9
202108,FINA 4000,Financial Institutions Markets,3
202108,FINA 4210,Applied Corporate Finance,3
202108,FINA 4310,Survey of Investments,3
202108,FINA 4320,Derv Security Mkts,3
202108,FINA 4800,Intern and-or Coop Education,3
202108,FINA 4810,International Finance,3
202108,FINA 9300,Doctoral Dissertation,12
202108,FINA 3001,Financial Management,3
202108,FINA 3000H,Financial Management Honors,3
202108,FINA 6810,International Finance,3
202108,FINA 6320,Derv Security Mkts,3
202108,FINA 7010,Financial Management,3
202108,FINA 7310,Investments,3
202108,FINA 4050,Capitalism,3
202108,FINA 4420,Private Equity,3
202108,FINA 4920E,Financial Modeling,3
202108,FINA 4340,Fixed Income Secur and Analysi,3
202108,FINA 7100,Corporate Fin Mgmt,3
202108,FINA 5990,Directed Study,1
202108,FINA 4205,Mergers and Acquisitions,3
202108,FINA 6420,Private Equity,3
202108,FINA 3001E,Financial Management,3
202108,FINA 4310E,Survey of Investments,3
202108,FINA 9210,Emp Resch in Invest,3
202108,FINA 6340,Fixed Income Secur and Analysi,3
202108,FINA 4150S,Investment and Portfolio Mgmt,1.5
202108,FINA 3001H,Financial Management Honors,3
202108,FINA 4400,Behavioral Finance,3
202108,FINA 4210H,Applied Corporate Finance Hon,3
202108,FINA 8990,Dir Study in Fin,9
202108,FINA 6205,Mergers and Acquisitions,3
202108,FINA 5000,Special Topics in Finance,3
202108,FINA 4800H,Intern and-or Coop Ed Hon,3
202108,FISH 4200,Aquatic Biology,3
202108,FISH 4200L,Aquatic Biology Lab,1
202108,FISH 4500,Fish Physiology,3
202108,FISH 4500L,Fish Phys Lab,1
202108,FISH 5360,Fisheries Mgt,3
202108,FISH 5360L,Fisheries Mgt Lab,1
202108,FISH 6200,Aquatic Biology,3
202108,FISH 6200L,Aquatic Biology Lab,1
202108,FISH 6500,Fish Physiology,3
202108,FISH 6500L,Fish Phys Lab,1
202108,FISH 7360,Fisheries Mgt,3
202108,FISH 7360L,Fisheries Mgt Lab,1
202108,FISH 4310,Freshwater Ecosystems,4
202108,FISH 6310,Freshwater Ecosystems,4
202108,FISH 4310L,Freshwater Ecosystems Lab,0
202108,FISH 6310L,Freshwater Ecosystems Lab,0
202108,FISH 3900,Fisheries Internship,1
202108,FISH 3900,Fisheries Internship,2
202108,FISH 3900,Fisheries Internship,3
202108,FISH 8360,Quant Con Sci,3
202108,FISH 8390L,Est Fish Wildl Lab,0
202108,FISH 8390,Est Fish Wildl Pop,3
202108,FISH 3000W,Intro to Fish Wildlife Mgmt,2
202108,FISH 3001,Fish and Wildlife Policy,1
202108,FISH 7980,Fisheries Problems,2
202108,FISH 8980,Fisheries Problems,2
202108,FISH 8980,Fisheries Problems,3
202108,FISH 8300,Wildlife Seminar,1
202108,FORS 3010,Dendrology,2
202108,FORS 3010L,Dendrology Lab,1
202108,FORS 4010,Silviculture,4
202108,FORS 4010L,Silviculture Lab,0
202108,FORS 4610,Forest Mensuration,4
202108,FORS 4610L,For Mensuration Lab,0
202108,FORS 4700,Forest Economics,3
202108,FORS 4700L,Forest Economics L,0
202108,FORS 5720,Harvest and Roads,3
202108,FORS 5720L,Harvest and Roads Lab,0
202108,FORS 7780,Timberland Acc,3
202108,FORS 6010,Silviculture,4
202108,FORS 6010L,Silviculture Lab,0
202108,FORS 6610,Forest Mensuration,4
202108,FORS 6610L,For Mensuration Lab,0
202108,FORS 6700,Forest Economics,3
202108,FORS 6700L,Forest Economics L,0
202108,FORS 7720,Harvest and Roads,3
202108,FORS 7720L,Harvest and Roads Lab,0
202108,FORS 7690,Applied GIS For Res Mgmt,3
202108,FORS 7690L,Applied GIS For Res Mgmt Lab,0
202108,FORS 3900,Forestry Internship,3
202108,FORS 4530,Wood Properties Utilization,3
202108,FORS 6530,Wood Properties Utilization,3
202108,FORS 4030,Region Silviculture,3
202108,FORS 6030,Region Silviculture,3
202108,FORS 5670,Forest Info Systems,3
202108,FORS 7670,Forest Info Systems,3
202108,FORS 8010,Fors Bus Seminar,1
202108,FORS 8220,Adv Forest Entomol,3
202108,FORS 8220L,Adv For Entomol Lab,0
202108,FORS 8450,Adv Forest Planning,3
202108,FORS 8035,Secondary Xylem Struct Funct,3
202108,FORS 8035L,Secondary Xylem Struc Func Lab,0
202108,FORS 7980,Forestry Problems,3
202108,FORS 4650,Forestry Field Camp,4
202108,FORS 6650,Forestry Field Camp,4
202108,FORS 4270,Field Studies in Conservation,3
202108,FORS 6270,Field Studies in Conservation,3
202108,FORS 4270,Field Studies in Conservation,2
202108,FORS 6270,Field Studies in Conservation,2
202108,FORS 7070,Forestry Consulting,3
202108,FORS 7630,Intensive For Mgmt,3
202108,FORS 7710,Adv For Economics,3
202108,FORS 8050,For Stand Dynamics,3
202108,FORS 8140,Professional Development,2
202108,FORS 8230,Tree Resistance Mechanisms,3
202108,FORS 8230D,Tree Resistance Mechanisms,0
202108,FORS 8980,Forestry Problems,3
202108,FORS 8460,Mgmt and Model Forest Carbon,3
202108,FORS 8980,Forestry Problems,1
202108,FREN 3010,Culture and Communication I,3
202108,FREN 3090,Intro to French Linguistics,3
202108,FREN 1001,Elementary French,4
202108,FREN 1002,Elementary French,4
202108,FREN 1110,Accelerated Elementary French,4
202108,FREN 2001,Intermediate French,3
202108,FREN 2002,Intermediate French,3
202108,FREN 2030,Practical French Conversation,1
202108,FREN 6120,French Culture Lang and Lit,3
202108,FREN 4120,French Culture Lang and Lit,3
202108,FREN 4150,Business French,3
202108,FREN 3020,Culture and Communication II,3
202108,FREN 3080,French Cultural Studies,3
202108,FREN 3030,Texts and Contexts,3
202108,FREN 4070,New Narrative Paths,3
202108,FREN 6910,History French Lang,3
202108,FREN 3080E,French Cultural Studies,3
202108,FREN 4050,Early French Lit and Culture,3
202108,FREN 4080,Studies French Lit and Culture,3
202108,FREN 6500,19th Cent Fren Lit,3
202108,FREN 8700,Francophone Studies,3
202108,FREN 8800,Sem Fr Linguistics,3
202108,FREN 3150,French for Intl Affairs,3
202108,FREN 8010,Selected Topics,3
202108,FSTY 1038,Field Study-Wash Semester Prog,0
202108,FSTY 1006,Field Study-DC Sem in Practice,0
202108,FSTY 1049,Field Study-Atl Sem in Prac,0
202108,FSTY 1018,Field Study-Forest Field Camp,0
202108,FSTY 1042,Field Study-Fld Molec Wild Res,0
202108,FSTY 1017,Field Study-Recre Tour Leisure,0
202108,FSTY 1064,Field Study-Wash Sem Pro Alt H,0
202108,FYOS 1001,First Year Odyssey,1
202108,GENE 9000,Doctoral Research,18
202108,GENE 8070,Lab Group Meeting,1
202108,GENE 3200,Genetics,4
202108,GENE 3000,Evolutionary Biology,4
202108,GENE 3210L,Experimental Genetics,3
202108,GENE 4950,Capstone Seminar in Genetics,1
202108,GENE 4310,Neural Development,3
202108,GENE 6310,Neural Development,3
202108,GENE 4200,Advanced Genetics,3
202108,GENE 6200,Advanced Genetics,3
202108,GENE 8880,Res Comm,1
202108,GENE 3200D,Genetics Discussion Group,0
202108,GENE 3000D,Evolutionary Biol Discus Group,0
202108,GENE 8150,Fundamentals Evolutionary Gene,4
202108,GENE 7300,Master-s Thesis,10
202108,GENE 8213,Adv Genetics Cell Bio Biochem,2
202108,GENE 8214,Adv Genetics Cell Bio Biochem,2
202108,GENE 8921,Tech Molec Genetics,1
202108,GENE 4220L,Genetic Modeling Laboratory,3
202108,GENE 8930,Adv Mol Gn,3
202108,GENE 4230L,Evolutionary Biology Lab,3
202108,GENE 8940,App Genome Analysis,3
202108,GENE 4970R,Undergraduate Research II,3
202108,GENE 4990R,Undergraduate Thesis,1
202108,GENE 4970R,Undergraduate Research II,4
202108,GENE 7000,Master-s Research,10
202108,GENE 4960R,Undergraduate Research I,4
202108,GENE 4980R,Undergraduate Research III,3
202108,GENE 4980R,Undergraduate Research III,4
202108,GENE 4960R,Undergraduate Research I,3
202108,GENE 3000H,Honors Evolutionary Biology,4
202108,GENE 8550,Evolution and Development,3
202108,GENE 9300,Doct Dissertation,10
202108,GENE 8300,Scientific Research Writing,1
202108,GENE 4550,Evolution and Development,3
202108,GENE 6550,Evolution and Development,3
202108,GENE 4840,Advanced Topics in Genetics,4
202108,GEOG 1200,Natural History of Georgia,3
202108,GEOG 9005,Doc Grad Stu Sem,3
202108,GEOG 7005,Grad Student Sem,3
202108,GEOG 7000,Masters Research,9
202108,GEOG 9000,Doctoral Research,9
202108,GEOG 7300,Master-s Thesis,9
202108,GEOG 9300,Doct Dissertation,9
202108,GEOG 8590,Dir Prob Geog Techn,3
202108,GEOG 8690,Dir Prob Human Geog,3
202108,GEOG 1101,Human Geography,3
202108,GEOG 1103,Cultural Geography of the US,3
202108,GEOG 1111,Intro to Physical Geography,3
202108,GEOG 1112,Intro to Weather and Climate,3
202108,GEOG 1113,Introduction to Landforms,3
202108,GEOG 2250H,Resources Society and Environ,3
202108,GEOG 3010,General Geomorphology,3
202108,GEOG 3120,Weather Analysis and Forecast,3
202108,GEOG 3120L,Weather Analysis Forecast Lab,0
202108,GEOG 3630,Intro to Urban Geography,3
202108,GEOG 3990,Internship in Geog,3
202108,GEOG 4300,Data Science in Geography,3
202108,GEOG 4330,Aerial Photos Image Interpret,3
202108,GEOG 4330L,Aerial Photos Image Inter Lab,0
202108,GEOG 4350,Remote Sensing of Environment,3
202108,GEOG 4350L,Remote Sensing Environment Lab,0
202108,GEOG 4370,Geographic Information Science,3
202108,GEOG 1111L,Intro Physical Geography Lab,1
202108,GEOG 4370L,Geographic Info Science Lab,0
202108,GEOG 1112L,Intro Weather and Climate Lab,1
202108,GEOG 8900,Proseminar in Geogr,1
202108,GEOG 8810,Sem Human Env Rel,3
202108,GEOG 1113L,Intro Landfms Lab,1
202108,GEOG 4121,Weather Forecasting Seminar,1
202108,GEOG 6121,Weather Forecasting Seminar,1
202108,GEOG 6300,Data Science in Geography,3
202108,GEOG 6330,Aerial Photos Image Interpret,3
202108,GEOG 6330L,Aerial Photos Image Inter Lab,0
202108,GEOG 6350,Remote Sensing of Environment,3
202108,GEOG 6350L,Remote Sensing Environment Lab,0
202108,GEOG 6370,Geographic Information Science,3
202108,GEOG 6370L,Geographic Info Science Lab,0
202108,GEOG 2011,Intro GIS,3
202108,GEOG 2011L,Intro GIS Lab,0
202108,GEOG 8290,Dir Prob Phys Geogr,3
202108,GEOG 1130,Intro Wrld Geog,3
202108,GEOG 3620,Globalization and Modern World,3
202108,GEOG 4112,Atmospheric Dynamics,3
202108,GEOG 6112,Atmospheric Dynamics,3
202108,GEOG 4460,Field Methods Remote Sensing,3
202108,GEOG 6460,Field Methods Remote Sensing,3
202108,GEOG 1125,Resources Society and Environ,3
202108,GEOG 4590,Programming for GIS,3
202108,GEOG 6590,Programming for GIS,3
202108,GEOG 4590L,Programming for GIS Lab,0
202108,GEOG 6590L,Programming for GIS Lab,0
202108,GEOG 6921,Dir Topics Ind Rsch,3
202108,GEOG 8620,Space Place Capitalism,3
202108,GEOG 4921,Dir Topics Ind Rsch,3
202108,GEOG 4960R,Undergraduate Research I,3
202108,GEOG 3180,Global Climate Change,3
202108,GEOG 4631,Race and City,3
202108,GEOG 6631,Race and City,3
202108,GEOG 6910,Geographic Research Methods,3
202108,GEOG 8570,Seminar in GIS,3
202108,GEOG 4271,People Planet and Profit,3
202108,GEOG 6271,People Planet and Profit,3
202108,GEOG 8680,Sem Fem Geog,3
202108,GEOG 8390,Dir Prob Quant Geog,3
202108,GEOG 4155,Hydrometeorology,3
202108,GEOG 6155,Hydrometeorology,3
202108,GEOG 6370E,Introduction to GIS,3
202108,GEOG 4920,Special Problems,3
202108,GEOG 6920,Special Problems,3
202108,GEOG 4632,Urban Social Movements,3
202108,GEOG 4910,Capstone in Geography,1
202108,GEOG 8630,Sem Urban Geography,3
202108,GEOG 8920,Soc Theory in Geog,3
202108,GEOG 6632,Urban Social Movements,3
202108,GEOG 8120,Sem Climatology,3
202108,GEOG 4140,Satellite Meteor and Climatol,3
202108,GEOG 6140,Satellite Meteor and Climatol,3
202108,GEOG 4150,Physical Climatology,3
202108,GEOG 6150,Physical Climatology,3
202108,GEOG 4960R,Undergraduate Research I,6
202108,GEOL 7000,Master-s Research,12
202108,GEOL 9000,Doctoral Research,12
202108,GEOL 9300,Doct Dissertation,12
202108,GEOL 7300,Master-s Thesis,12
202108,GEOL 4950,Geology Seminar,1
202108,GEOL 6950,Geology Seminar,1
202108,GEOL 1121,Earth Processes and Environs,3
202108,GEOL 6920,Sem Teach Assts,1
202108,GEOL 1122,Earth-s History Global Change,3
202108,GEOL 1122L,His Glob Change Lab,1
202108,GEOL 1250,Physical Geology,4
202108,GEOL 1250L,Physical Geology Lab,0
202108,GEOL 3020,Surficial Near-Surficial Proc,4
202108,GEOL 3020L,Surficial Near-Surf Proc Lab,0
202108,GEOL 3010,Earth Materials,4
202108,GEOL 3010L,Earth Materials Lab,0
202108,GEOL 4010,Life and Ecol Past,3
202108,GEOL 4010L,Life andecol Past Lab,0
202108,GEOL 1121L,Earth Processes Environ Lab,1
202108,GEOL 4750,Earth Sci Mid School Teachers,3
202108,GEOL 6750,Earth Sci Mid School Teachers,3
202108,GEOL 3090,Gems-gem Materials,3
202108,GEOL 8090,Adv Top Struc Geol,3
202108,GEOL 4440,Res Hydrogeology,3
202108,GEOL 8600,Adv Top Seismology,3
202108,GEOL 4480,Res Sediment Geol,3
202108,GEOL 4460,Res Paleontology,3
202108,GEOL 8040,Adv Top Hydrogeol,3
202108,GEOL 4430,Res Geophysics,3
202108,GEOL 4470,Res Petrology,3
202108,GEOL 4450,Res Mineralogy,3
202108,GEOL 4261,Museum Natural History Intern,3
202108,GEOL 8070,Adv Top Petrology,3
202108,GEOL 4490,Res Struc-tectonics,3
202108,GEOL 8030,Adv Top Geophysics,3
202108,GEOL 8790,Proj in Env Geol,3
202108,GEOL 6460,Res Paleontology,3
202108,GEOL 3350,Dinosaurs,3
202108,GEOL 4220,Hydrogeology,3
202108,GEOL 6220,Hydrogeology,3
202108,GEOL 8140,Sequence Strat,3
202108,GEOL 3750,Agrogeology,3
202108,GEOL 8760,Org Cont Hydrogeol,3
202108,GEOL 4350,Planetary Dynamics,3
202108,GEOL 6350,Planetary Dynamics,3
202108,GEOL 8020,Adv Top Geochem,3
202108,GEOL 4960R,Undergraduate Research I,6
202108,GEOL 6470,Res Petrology,3
202108,GEOL 6480,Res Sediment Geol,3
202108,GEOL 4970R,Undergraduate Research II,3
202108,GEOL 4340,Archaeometry,3
202108,GEOL 6340,Archaeometry,3
202108,GEOL 8370,Data Analysis in Geosciences,3
202108,GEOL 3000,Alien Worlds,3
202108,GEOL 4360,Introduction to Rock Mechanics,3
202108,GEOL 6360,Introduction to Rock Mechanics,3
202108,GEOL 4130,Aqueous Env Geochem,3
202108,GEOL 6130,Aqueous Env Geochem,3
202108,GEOL 1121H,Earth Process and Environ Hon,3
202108,GISC 3900,GIS Internship,3
202108,GISC 3900,GIS Internship,2
202108,GISC 3900,GIS Internship,1
202108,GLOB 3100,Introduction to Global Health,3
202108,GLOB 3200,Global Health and Food,3
202108,GLOB 3100E,Introduction to Global Health,3
202108,GLOB 3560,Global Internship,6
202108,GLOB 8910,Glob Hlth Research,3
202108,GLOB 7760,Global Health Internship,6
202108,GLOB 7100,Foundations of Global Health,3
202108,GLOB 3200S,Global Health and Food,3
202108,GLOB 3150,Culture and Global Health,3
202108,GLOB 4900,Special Topics Global Health,3
202108,GLOB 4960R,Undergraduate Research I,6
202108,GLOB 4970R,Undergraduate Research II,6
202108,GLOB 8900,Topics in GH,6
202108,GREK 1001,Elementary Greek I,4
202108,GREK 7300,Master-s Thesis,9
202108,GREK 7000,Master-s Research,9
202108,GREK 2003,Intermediate Greek,3
202108,GREK 4080,Aristophanes,3
202108,GREK 6080,Aristophanes,3
202108,GREK 6300,Greek Poetry Survey,3
202108,GREK 4200,Selected Greek Authors,3
202108,GREK 6400,Greek Prose Survey,3
202108,GREK 4150,Comp Grammar Greek and Latin,3
202108,GREK 6150,Comp Grammar Greek and Latin,3
202108,GREK 6200,Selected Greek Authors,3
202108,GREK 4040,Herodotus and Thucydides,3
202108,GREK 6040,Herodotus and Thucydides,3
202108,GREK 4089,Biblical Greek,3
202108,GRMN 1001,Elementary German I,4
202108,GRMN 1110,Accelerated Elementary German,4
202108,GRMN 1002,Elementary German II,4
202108,GRMN 3020,Lang Culture and Society II,3
202108,GRMN 2002,Intermediate German II,3
202108,GRMN 3010,Lang Culture and Society I,3
202108,GRMN 7005,Grad Student Sem,3
202108,GRMN 4001,Adv German Convers and Comp,3
202108,GRMN 6001,Adv German Convers and Comp,3
202108,GRMN 2001,Intermediate German I,3
202108,GRMN 7500,Teach Coll Germ,3
202108,GRMN 2300,Intro German Culture Studies,3
202108,GRMN 7000,Master-s Research,6
202108,GRMN 3015,Language Science and Society I,3
202108,GRMN 4510,German Studies or Linguistics,3
202108,GRMN 6600,Hist Ger Lang,3
202108,GRMN 6500,20th and 21st Cent Texts Cont,3
202108,GRMN 3110,Germania,3
202108,GRMN 3830,Children-s and Youth Lit,3
202108,GRMN 4015,Magic Monsters and the Occult,3
202108,GRMN 2001H,Intermediate German I Honors,3
202108,GRMN 3280,Contrastive Grammar Ger Eng,3
202108,GRMN 6280,Old Germanic Languages,3
202108,GRMN 3850,Intro to Goethe-s Life Works,3
202108,GRMN 4810,Contemp Business and Politics,3
202108,GRMN 6400,19th Texts Contexts,3
202108,GRMN 8400,Middle High Ger,3
202108,GRMN 8540,Sem Ger Studies,3
202108,GRMN 6450,Fin-De-Siecle,3
202108,GRMN 3990,Directed Study in German,3
202108,GRNT 3000E,Aspects of Aging,3
202108,GRNT 8000,Ger Researchandtheor,3
202108,GRNT 8010,Gerontology Pract,3
202108,GRNT 7100E,Foundations of Aging,3
202108,GRNT 7500E,Smart Tech in an Aging Society,3
202108,GRNT 3400E,Cognition and the Aging Brain,3
202108,GRNT 4990R,Undergraduate Thesis,6
202108,GRNT 3500E,Smart Tech in an Aging Society,3
202108,GRNT 7200E,Lifespan Health Psychology,3
202108,GRNT 3100E,Early Life Influences on Aging,3
202108,GRNT 7600E,Pharmacology Health and Aging,3
202108,GRNT 7400E,Cognitive Health and Aging,3
202108,GRNT 3200E,Intro to Lifespan Health Psych,3
202108,GRNT 3010S,Service-Learning Older Adults,3
202108,GRNT 3010E,Service-Learning Older Adults,3
202108,GRNT 4970R,Undergraduate Research II,6
202108,GRSC 7770,Graduate Teaching Seminar,2
202108,GRSC 7770,Graduate Teaching Seminar,3
202108,GRSC 7900,Course Design,3
202108,GRSC 8000,Research Techniques in ILS,14
202108,GRSC 8010,Prof Develop for ILS Students,1
202108,GRSC 8550,Responsible Conduct Research,1
202108,GRSC 8020,Crit Read of Primary Sci Lit,2
202108,GRSC 9270,Grad Study Complet,3
202108,GRSC 8400,Special Topics in Grad Ed,2
202108,GRSC 8300W,Academic Writing,3
202108,GRSC 8400S,Special Topics in Grad Ed,3
202108,GRSC 8200,Research Comm,1
202108,GRSC 7770,Graduate Teaching Seminar,1
202108,GRSC 7850,Special Topics in Teaching,1
202108,GRSC 7770E,Graduate Teaching Seminar,3
202108,GRSC 8510,Prof Develop for IPS Students,1
202108,GRSC 8500,Research Techniques in IPS,13
202108,GRSC 8310,Grant Writing,2
202108,GRSC 8360,Managing Mentoring Relations,1
202108,GRSC 7970S,Community Engagemnt,3
202108,GRSC 9210,Graduate Internship Experience,12
202108,GRSC 7770E,Graduate Teaching Seminar,2
202108,HAUS 1010,Elementary Hausa I,4
202108,HDFS 2100,Development Within the Family,3
202108,HDFS 2200,Intro to Life Span Development,3
202108,HDFS 2200H,Intro to Life Span Develop Hon,3
202108,HDFS 2950,Intro to Child Development,3
202108,HDFS 3700,Adolesc and Young Adult Survey,3
202108,HDFS 3700S,Adolesc and Young Adult Survey,3
202108,HDFS 3710,Midlife-Elder Years Survey,3
202108,HDFS 3920,Issues in Family Systems,3
202108,HDFS 3930,21st-Century Intimate Relation,3
202108,HDFS 4330,Diversity in Human Development,3
202108,HDFS 4810,Hospitalized Child and Family,3
202108,HDFS 6810,Hospitalized Child and Family,3
202108,HDFS 5910,Applied Internship In HDFS,6
202108,HDFS 8910,Current Research Issues HDFS,2
202108,HDFS 3110,Pro Develop Community Activity,3
202108,HDFS 4860,Parenting and Child Guidance,3
202108,HDFS 6860,Parenting and Child Guidance,3
202108,HDFS 6100,Theories of Hum Dev,3
202108,HDFS 4870,Human Sex Across the Lifespan,3
202108,HDFS 6870,Human Sex Across the Lifespan,3
202108,HDFS 7170,Intro to Applied Stat in HDFS,3
202108,HDFS 9070,MFT Practicum,3
202108,HDFS 6900,Seminar in HDFS,3
202108,HDFS 2300,Science of Studying Human Dev,3
202108,HDFS 8710,Life-Span Hum Dev,3
202108,HDFS 8910,Current Research Issues HDFS,1
202108,HDFS 9080,MFT Supervision,3
202108,HDFS 4080,Advanced Child Development,3
202108,HDFS 6080,Advanced Child Development,3
202108,HDFS 4620,Women in Family and Society,3
202108,HDFS 6620,Women in Family and Society,3
202108,HDFS 4830S,Grief Loss and Bereavement,3
202108,HDFS 6830S,Grief Loss and Bereavement,3
202108,HDFS 3900,Prenatal and Infant Develop,3
202108,HDFS 8850,Categorical and Dyadic Data,3
202108,HDFS 8060,Contemporary MFT,3
202108,HDFS 5910,Applied Internship In HDFS,9
202108,HDFS 9010,Directed Study Hdfs,3
202108,HDFS 9920,Internship in Hdfs,12
202108,HDFS 9000,Doctoral Research,9
202108,HDFS 9005,Doc Grad Stu Sem,3
202108,HDFS 4880S,Family Life SL,3
202108,HDFS 6880S,Family Life SL,3
202108,HDFS 9300,Doctoral Dissertation,9
202108,HDFS 7000,Master-s Research,12
202108,HDFS 7210,Problems in HDFS,12
202108,HDFS 3010,Directed Study,3
202108,HDFS 5950,Rsch Intern In Hum Dev Fam Sci,3
202108,HDFS 7005,Grad Student Sem,3
202108,HDFS 7300,Master-s Thesis,9
202108,HDFS 9910,Internship in Hdfs,12
202108,HDFS 7010,Directed Study Hdfs,3
202108,HDFS 7010,Directed Study Hdfs,6
202108,HDFS 4960R,Undergraduate Research I,3
202108,HDFS 4970R,Undergraduate Research II,1
202108,HDFS 3010,Directed Study,1
202108,HDFS 4960R,Undergraduate Research I,1
202108,HDFS 4830,Grief Loss and Bereavement,3
202108,HDFS 6830,Grief Loss and Bereavement,3
202108,HDFS 8720,Diversity,3
202108,HDFS 8730,Quant Fam Sci II,3
202108,HDFS 4610,The Family,3
202108,HDFS 8950,Seminar in Hdfs,3
202108,HDFS 7210,Problems in HDFS,6
202108,HDFS 7350,MFT Ethics,3
202108,HEBR 1001,Elementary Hebrew I,4
202108,HEBR 2003,Interm Hebrew I,3
202108,HFIM 2500,Intro Hospitality Food Ind Mgm,3
202108,HFIM 3160,Hosp and Food Ind Prof Dev,1
202108,HFIM 3180,Hos Food Ind Law and Liability,3
202108,HFIM 4080,Food and Beverage Operations,3
202108,HFIM 4670,Lodging Sales and Revenue Mgmt,3
202108,HFIM 3560,Hosp and Food Ind Fac Mgmt,3
202108,HFIM 4960R,Undergraduate Research I,3
202108,HFIM 3910,Hospitality Mgmt Internship,3
202108,HFIM 3914,Hotel Lodging Mgmt Intern,3
202108,HFIM 3912,Food and Beverage Mgmt Intern,3
202108,HFIM 3913,Facilities Management Intern,3
202108,HIPR 7300,Master-s Thesis,12
202108,HIPR 7000,Master-s Research,6
202108,HIPR 6030,Prin and Pract of Hist Preserv,3
202108,HIPR 6750,Special Independent Studies,3
202108,HIPR 6751,Special Independent Studies,3
202108,HIPR 6752,Special Independent Studies,3
202108,HIPR 6480,Intro Cultural Land Conserv,3
202108,HIPR 4480,Intro Cultural Land Conserv,3
202108,HIPR 6200,Preservation Law,3
202108,HIPR 4030,Prin and Pract of Hist Preserv,3
202108,HIPR 4120,Historic Site Interpretation,3
202108,HIPR 6120,Historic Site Interpretation,3
202108,HIPR 6060,Hipr Graphics,3
202108,HIPR 6950,Historic Preservation Planning,3
202108,HIPR 6350,Building Materials,4
202108,HIPR 4950,Historic Preservation Planning,3
202108,HIPR 4200,Preservation Law,3
202108,HIPR 6160,Public History and Technology,3
202108,HIPR 4160,Public History and Technology,3
202108,HIPR 4460,Rural Preservation,3
202108,HIPR 6460,Rural Preservation,3
202108,HIPR 6613,Historic Preservation Intern,3
202108,HIPR 6560,History of World Architecture,3
202108,HIPR 4850,Topics Heritage Conservation,3
202108,HIPR 6850,Topics Heritage Conservation,3
202108,HIPR 4560,History of World Architecture,3
202108,HIPR 4330,Cultural Landscape Document,3
202108,HIPR 6330,Cultural Landscape Document,3
202108,HIPR 4750,Special Independent Studies,3
202108,HIPR 4751,Special Independent Studies,3
202108,HIPR 4752,Special Independent Studies,3
202108,HIST 4750,History and Film,3
202108,HIST 2112H,Hist of US 1865 to Present Hon,3
202108,HIST 3100,Intro to British Culture I,3
202108,HIST 9000,Doctoral Research,9
202108,HIST 9300,Doctoral Dissertation,9
202108,HIST 7005,Grad Student Sem,3
202108,HIST 9005,Doc Grad Stu Sem,3
202108,HIST 9010,Adv Doc Study Hist,24
202108,HIST 2111,American History to 1865,3
202108,HIST 2112,American History Since 1865,3
202108,HIST 4400,The Age of World Wars I and II,3
202108,HIST 7900,Theory and Pract His,3
202108,HIST 7000,Master-s Research,9
202108,HIST 2312H,West Soc Since 1500,3
202108,HIST 3030,History of Canada,3
202108,HIST 8860,Seminar in History,3
202108,HIST 7400,Professional Development,3
202108,HIST 2701,World Civ I,3
202108,HIST 2222,Lat Amer Since 1800,3
202108,HIST 6960,Directed Readings in History,3
202108,HIST 6750,History and Film,3
202108,HIST 3220,History of Mexico,3
202108,HIST 4990,Senior Thesis in History,3
202108,HIST 3371,Tudor-Stuart Eng,3
202108,HIST 4382,Britain 1780-1900,3
202108,HIST 2302,West Soc Since 1500,3
202108,HIST 4970R,Undergraduate Research II,3
202108,HIST 4960R,Undergraduate Research I,3
202108,HIST 3140,U.S. Hispanic-Latinx History,3
202108,HIST 3115,React to the Past: Amer Hist,3
202108,HIST 3220H,History of Mexico,3
202108,HIST 8040,Colloq in Sohist,3
202108,HIST 3752,War and Soc 1500-2000,3
202108,HIST 3101,Early Afr Ame Exper,3
202108,HIST 3361,19th Cent Europe,3
202108,HIST 3361H,19th Cent Europe,3
202108,HIST 8770,Colloquium in Public History,3
202108,HIST 3050,Am Indians to 1840,3
202108,HIST 2600,East Asia in the World,3
202108,HIST 3432,History of Modern Science,3
202108,HIST 3400,Modern Italy,3
202108,HIST 3662,The Chinese Renaissance,3
202108,HIST 3060,Colonial Rev Amer,3
202108,HIST 3602,Modern Japan,3
202108,HIST 3412,History of the Soviet Union,3
202108,HIST 3071,The US 1877-1917,3
202108,HIST 3333,Mediev Christianity,3
202108,HIST 3562,Mid East 1453-1918,3
202108,HIST 2502,Africa Since 1800,3
202108,HIST 3490,Euro Encountr Islam,3
202108,HIST 3072,US 1914-1945,3
202108,HIST 2701H,World Civ I Honors,3
202108,HIST 3720H,Sem Comp His,3
202108,HIST 3760,History of Racism,3
202108,HIST 4125,The New Jim Crow,3
202108,HIST 6125,The New Jim Crow,3
202108,HIST 4112,History for History Teachers,3
202108,HIST 8030,Sem Recent US His,3
202108,HIST 7300,Master-s Thesis,9
202108,HIST 4990R,Undergraduate Thesis,3
202108,HIST 3160,Amer Environ Hist,3
202108,HIST 3160H,Amer Environ Hist,3
202108,HIST 3102,Mod Afr Amer Exper,3
202108,HIST 4072,U S Civil War,3
202108,HIST 6072,U S Civil War,3
202108,HIST 3240,The Caribbean Area,3
202108,HIST 3433,His of Medicine,3
202108,HIST 4120,The Civil Rights Movement,3
202108,HIST 6120,The Civil Rights Movement,3
202108,HIST 3242,Disasters in Latin America,3
202108,HIST 6400,The Age of World Wars I and II,3
202108,HIST 3210,Race and Slavery in Americas,3
202108,HIST 3140H,U.S. Hispanic-Latinx History H,3
202108,HIST 4025,Amer Mat Cult Ure,3
202108,HIST 6025,Amer Mat Cult Ure,3
202108,HIST 4060,Amer Legal History,3
202108,HIST 6060,Amer Legal History,3
202108,HIST 3730,20th Century Global History,3
202108,HIST 3432H,History of Modern Science Hon,3
202108,HIST 3661,China-s Imperial Age,3
202108,HIST 4235,Pirates of the Caribbean,3
202108,HIST 6235,Pirates of the Caribbean,3
202108,HIST 3610,Imperialism in East Asia,3
202108,HIST 3381,Old Reg and Rev Franc,3
202108,HIST 3572,The U.S. and the Middle East,3
202108,HIST 8001,Teaching Hist,3
202108,HIST 8710,Colloq Gendr in His,3
202108,HIST 2501,Africa to 1800,3
202108,HIST 3545,Hist of the Sahara,3
202108,HIST 4580,Arab-Israeli Confli,3
202108,HIST 6580,Arab-Israeli Confli,3
202108,HIST 8112,US Coll 1865-Pres,3
202108,HIST 3312,Roman Social Hist,3
202108,HIST 4225,Ancient Medicine,3
202108,HIST 6225,Ancient Medicine,3
202108,HIST 3443,Spain of Cervantes,3
202108,HIST 2111H,United States Survey to 1865 H,3
202108,HIST 4445,A Global History of Drugs,3
202108,HIST 6445,A Global History of Drugs,3
202108,HIST 8705,Coll World History,3
202108,HIST 8712,Colloquium Atlantic World Hist,3
202108,HIST 3150,Religion in US,3
202108,HIST 3322,Witches-damsels-nun,3
202108,HIST 3564,Mid East Since 1914,3
202108,HIST 4300,Studies in Eur His,3
202108,HIST 4330,Mediev West Instns,3
202108,HIST 4373,Eur Intel 1815-1914,3
202108,HNDI 1001,Elem Hindi I,4
202108,HNDI 2001,Intermediate Hindi,4
202108,HNDI 2001L,Inter Hindi Lab,0
202108,HONS 4000H,Honors Peer Advis,1
202108,HONS 1000H,Intro to Honors,1
202108,HONS 4800H,Hnrs Capstone Intrn,3
202108,HONS 4801H,Honors Internship,3
202108,HONS 4801H,Honors Internship,6
202108,HONS 4800H,Hnrs Capstone Intrn,6
202108,HONS 2010H,Honors Humanities,3
202108,HONS 4800H,Hnrs Capstone Intrn,4
202108,HONS 3040H,Honors Res Methods,1
202108,HONS 1990H,Honors Colloquia Seminar,1
202108,HONS 4960R,Undergraduate Research I,1
202108,HONS 4960R,Undergraduate Research I,3
202108,HONS 4980R,Undergraduate Research III,2
202108,HONS 4960R,Undergraduate Research I,2
202108,HONS 4960R,Undergraduate Research I,6
202108,HONS 4970R,Undergraduate Research II,6
202108,HONS 4970R,Undergraduate Research II,2
202108,HONS 4970R,Undergraduate Research II,4
202108,HONS 4970R,Undergraduate Research II,3
202108,HONS 4990R,Undergraduate Thesis,3
202108,HONS 4960R,Undergraduate Research I,4
202108,HONS 4990R,Undergraduate Thesis,5
202108,HONS 4990R,Undergraduate Thesis,2
202108,HONS 4980R,Undergraduate Research III,1
202108,HONS 4970R,Undergraduate Research II,1
202108,HONS 4980R,Undergraduate Research III,6
202108,HONS 4990R,Undergraduate Thesis,4
202108,HONS 4980R,Undergraduate Research III,3
202108,HONS 4980R,Undergraduate Research III,4
202108,HORT 4990,Current Issues in Horticulture,1
202108,HORT 2100,Hort as a Profession,1
202108,HORT 3440,Herbs Spices Medicinal Plants,3
202108,HORT 3500,Herbaceous Peren I,2
202108,HORT 3500L,Herbaceous Pern Lab,0
202108,HORT 3910,Horticulture Intern,3
202108,HORT 4430,Plant Physiology,3
202108,HORT 7000,Master-s Research,18
202108,HORT 6430,Plant Physiology,3
202108,HORT 7300,Master-s Thesis,10
202108,HORT 9000,Doctoral Research,18
202108,HORT 9300,Doct Dissertation,12
202108,HORT 4590,Soil Fert Plant Nut,3
202108,HORT 6590,Soil Fert Plant Nut,3
202108,HORT 4140,Plant Breeding,3
202108,HORT 6140,Plant Breeding,3
202108,HORT 6990,Current Issues in Horticulture,1
202108,HORT 3010,Intro Veg Crops,3
202108,HORT 8150,Plt Growth Develop,3
202108,HORT 2000E,Sustainable Plant Production,3
202108,HORT 6070,Spec Prob Hort I,3
202108,HORT 3300E,Organic Gardening,3
202108,HORT 3720,Wdy Land Plant Id,4
202108,HORT 3920,UGArden Internship,3
202108,HORT 8140,Adv Plant Breeding,3
202108,HORT 8873,Transgenic Breedg,1
202108,HORT 4960R,Undergraduate Research I,6
202108,HORT 4920,Organic Hort Entrepreneurship,3
202108,HORT 4125,Organic Agricultural Systems,4
202108,HORT 6125,Organic Agricultural Systems,4
202108,HORT 4070,Spec Prob Hort I,3
202108,HORT 6920,Organic Hort Entrepreneurship,3
202108,HORT 4800,Agric Biotech,3
202108,HORT 6800,Agric Biotech,3
202108,HORT 8872,Qtl Analysis,1
202108,HORT 8160,Environ Meas and Cont,3
202108,HORT 4630,Nursery Management,3
202108,HORT 6070,Spec Prob Hort I,1
202108,HORT 3940S,Botanical Garden Internship,3
202108,HORT 6630,Nursery Management,3
202108,HPAM 8650,Healthcare Fina,3
202108,HPAM 8700,Adv Mgmt of Public Hlth Orgs,3
202108,HPAM 7005,Graduate Student Seminar,3
202108,HPAM 3500,Intro to Healthcare Management,3
202108,HPAM 3600,Introduction to Health Policy,3
202108,HPAM 7001,Foundations in HPAM,1
202108,HPAM 8410,Advanced Health Informatics,3
202108,HPAM 3600E,Introduction to Health Policy,3
202108,HPAM 7050E,Health Policy and Obesity,3
202108,HPAM 9005,Doc Grad Stu Sem,3
202108,HPAM 8900,Special Topics in HPAM,3
202108,HPAM 4600,Advanced Health Policy,3
202108,HPAM 9000,Doctoral Research,9
202108,HPAM 9300,Doct Dissertation,12
202108,HPAM 3410,Health Systems Science,3
202108,HPAM 8450,Adv Policy Eval in Public Hlth,3
202108,HPAM 8000,Dir Rsch Hlth Pol,6
202108,HPAM 7150,US Health Care Delivery Sys,3
202108,HPAM 8760,Public Health Law and Ethics,3
202108,HPAM 7500,Org Theory-Beh in Health Care,3
202108,HPAM 3410E,Health Systems Science,3
202108,HPAM 3500E,Intro to Healthcare Management,3
202108,HPAM 7910,Prof Deve Sem Hlth Admin I,1
202108,HPAM 4970R,Undergraduate Research II,3
202108,HPAM 8840,Managerial Epi Publ Hlth Pract,3
202108,HPAM 8910,Problems in HPAM,3
202108,HPAM 7250,Human Res Mgmt in HC,3
202108,HPAM 7550E,Quality Improvement Health I,3
202108,HPAM 7760,Public Health Law and Ethics,3
202108,HPAM 7750,Healthcare Finance I,3
202108,HPAM 7400,Policy Analysis Public Health,3
202108,HPAM 7600,Health Economics I,3
202108,HPAM 4960R,Undergraduate Research I,6
202108,HPAM 7900,Internship in Health Admin,3
202108,HPAM 7010E,Intro to Health Policy Mgmt,3
202108,HPAM 3750,Spec Probs Hlth Pol,3
202108,HPAM 8600,Advanced Health Economics,3
202108,HPAM 7250E,Human Res Mgmt Hlth Care,3
202108,HPAM 7930,Prof Deve Hlth Admin III,1
202108,HPAM 4615,Politics of Disease Control,3
202108,HPAM 4615E,Politics of Disease Control,3
202108,HPRB 1710,Health and Wellness,3
202108,HPRB 3700,Community Health,3
202108,HPRB 3750,Foundations Injury Prevention,3
202108,HPRB 4400,Health Promotion Program Devel,3
202108,HPRB 5060,Edu Strategies Human Sexuality,3
202108,HPRB 7600,Health Intervention,4
202108,HPRB 7470,Eval Hlth Prom-ed,3
202108,HPRB 7920,Health Behavior,3
202108,HPRB 9630,Crit Lit Hlth Prom,3
202108,HPRB 5010,Research Design,3
202108,HPRB 9000,Doctoral Research,9
202108,HPRB 9005,Doc Grad Stu Sem,3
202108,HPRB 9300,Doctoral Dissertation,12
202108,HPRB 7005,Grad Student Sem,3
202108,HPRB 7000,Master-s Research,9
202108,HPRB 5410W,Professional Writing for HPRB,3
202108,HPRB 3020S,Foun Hlth Promo Prof Pract Ser,3
202108,HPRB 3480S,Health Promotion and Services,3
202108,HPRB 5900,Capstone in HPB,1
202108,HPRB 3150,Women-s Health,3
202108,HPRB 8000,Dir Study Hlth Prom,6
202108,HPRB 7510,HPRB Research Methods,3
202108,HPRB 4960,Health Promotion Undergrad Res,4
202108,HPRB 7160,Spec Topics in HPB,3
202108,HPRB 5560,Field Experience Health Promo,6
202108,HPRB 6000,Spec Probs Hp and Beh,6
202108,HPRB 4970,Health Promotion Undergrad Res,4
202108,HPRB 4990R,Undergraduate Thesis,3
202108,HPRB 3850E,Chronic Disease Prevention,3
202108,HPRB 3010E,Health Promotion Public Health,3
202108,HPRB 7010E,Social and Behavioral FDNS,3
202108,HPRB 4000,Spec Probs Hp and Beh,6
202108,HPRB 4960R,Undergraduate Research I,1
202108,HPRB 4970R,Undergraduate Research II,6
202108,HPRB 3010,Health Promotion Public Health,3
202108,HPRB 5160,Spec Topics in HPB,3
202108,HPRB 8420,Hlth Behav Theory,3
202108,HPRB 8510,Health Research I,3
202108,HPRB 8990,Res Sem Hlth Prom,3
202108,ICON 8111E,Integrative Conserv Internship,8
202108,ICON 8001,Integrate Consv I,3
202108,ICON 8110,Field Planning and Preparation,1
202108,IDEA 4020,Industry Student Fellows Proj,3
202108,IDEA 6020,Industry Student Fellows Proj,3
202108,IDEA 4000,Innovation Catalyst and Design,3
202108,IDEA 6000,Innovation Catalyst and Design,3
202108,IDIS 5200,Veterinary Parasitology,3.7
202108,IDIS 5200L,Veterinary Parasitology Lab,0
202108,IDIS 4650,Introduction to Virology,3
202108,IDIS 6650,Introduction to Virology,3
202108,IDIS 4100,Immunology,4
202108,IDIS 6100,Immunology,4
202108,IDIS 5130L,Vet Bacteriology Lab,0
202108,IDIS 7000,Master-s Research,18
202108,IDIS 5130,Vet Bacteriology and Mycology,3.4
202108,IDIS 8160,IDIS Seminar,1
202108,IDIS 8550,Spec Topics Immuno,1
202108,IDIS 9000,Doctoral Research,18
202108,IDIS 8900,Id Problems,1
202108,IDIS 5220,Small Animal Clinical Parasit,1
202108,IDIS 5220L,SA Clinical Parasit Lab,0
202108,IDIS 9300,Doct Dissertation,15
202108,IDIS 4900,Directed Research,4
202108,IDIS 5400,Advanced Clinical Parasitology,3.9
202108,IDIS 7200,Veterinary Parasitology,3.7
202108,IDIS 7200L,Veterinary Parasitology Lab,0
202108,IDIS 5400,Advanced Clinical Parasitology,1.3
202108,IDIS 7300,Master-s Thesis,15
202108,IDIS 5900,Spec Topics Inf Dis,8
202108,IDIS 8590,Spec Topics Dis Int,1
202108,IDIS 8610,Clinical Microbio Residency I,18
202108,IDIS 8620,Clinical Microbio Residency II,18
202108,IDIS 4960R,Undergraduate Research I,4
202108,IDIS 4100D,Immunology Discussion Group,0
202108,IDIS 6100D,Immunology Discussion Group,0
202108,IDIS 4970R,Undergraduate Research II,4
202108,IDIS 4980R,Undergraduate Research III,3
202108,IDIS 5900,Spec Topics Inf Dis,1.3
202108,IDIS 4900,Directed Research,3
202108,IDIS 4970R,Undergraduate Research II,2
202108,IDIS 4980R,Undergraduate Research III,4
202108,IDIS 4990R,Undergraduate Thesis,4
202108,IDIS 4960R,Undergraduate Research I,3
202108,IDIS 4970R,Undergraduate Research II,3
202108,IDIS 8530,Special Topic Structural Immun,1
202108,IDIS 8020,Vaccines Des and Dev,3
202108,IDIS 8050,Spec Top Ecol Evol Infec Dis,1
202108,IHDD 2001,Intro Disability,3
202108,IHDD 3010,Dir Stdy Disability,3
202108,IHDD 7010,Dir Stdy Disability,3
202108,IHDD 6001,Introduction to Disability,3
202108,IHDD 2050S,Principles of PCP,3
202108,IHDD 4002S,Disability Issues in Adulthood,3
202108,IHDD 6002S,Disability Issues in Adulthood,3
202108,ILAD 4100,Leadership Personal Develop,3
202108,ILAD 5980,Personal Org Leadership,3
202108,ILAD 5000,Personal Career Management,1
202108,ILAD 5000S,Personal Career Mgmt and SL,1
202108,ILAD 5100S,Organizational Leadership,3
202108,INDO 1001,Elem Indonesian I,4
202108,INDO 2003,Inter Indonesian I,3
202108,INDO 3005,Advanced Indonesian I,3
202108,INFO 2000,Informatics I,3
202108,INFO 4160,Industrial Internet of Things,3
202108,INFO 8110,Informatics Engr Environ Sci,3
202108,INFO 8000,Informatics  Foundations,3
202108,INFO 6160,Industrial Internet of Things,3
202108,INFO 4150E,Engineering Informatics,3
202108,INTB 4800,Intern-Cooperative Ed Intl Bus,3
202108,INTB 7100,Special Topics in Intl Busi,1
202108,INTB 5100,Special Topics in Intl Busi,3
202108,INTL 1100,Introduction to Global Issues,3
202108,INTL 3300,Intro to Comparative Politics,3
202108,INTL 3200,Intro to Intl Relations,3
202108,INTL 4415,Practicum Sec Stud,3
202108,INTL 4722,Intl Aff Intern Analyt Essays,4
202108,INTL 4720,International Affairs Intern,4
202108,INTL 4721,Intl Affairs Intern Research,4
202108,INTL 4960,Dir Readings and-or Projects,3
202108,INTL 6000,Foundns Intl Policy,3
202108,INTL 6010,Intl Pol Methods,3
202108,INTL 6300,Comparative Analysis Method,3
202108,INTL 4455,Violent Political Conflict,3
202108,INTL 4240,Intl Organization,3
202108,INTL 6200,Presem Interl Rel,3
202108,INTL 4770,Sp Topics Intl Rel,3
202108,INTL 4260,Foreign Policy Dec Making,3
202108,INTL 4360,East Asian Politics,3
202108,INTL 4280,Nationalism Ethnic Conflict,3
202108,INTL 4680,Peace Studies,3
202108,INTL 8278,Energy Statecraft,3
202108,INTL 7010,Tech Bkgd for WMD NP,3
202108,INTL 4970R,Undergraduate Research II,1
202108,INTL 4960R,Undergraduate Research I,3
202108,INTL 4960R,Undergraduate Research I,1
202108,INTL 4960R,Undergraduate Research I,2
202108,INTL 4990R,Undergraduate Thesis,3
202108,INTL 4970R,Undergraduate Research II,2
202108,INTL 4005,Social Experimentation,3
202108,INTL 4210,Intl Law,3
202108,INTL 8223,Intl Interven and Human Sec,3
202108,INTL 4320,Politics of Development,3
202108,INTL 4370,Middle Eastern Politics,3
202108,INTL 4660,Politics Film and Literature,3
202108,INTL 4390,European Politics,3
202108,INTL 8300,Topics Comp Pol,3
202108,INTL 4666E,The Politics of Cyber Security,3
202108,INTL 4290H,Mod War Ter Ide Idn,3
202108,INTL 4305,Comparative Public Opinion,3
202108,INTL 4440H,Strategic Intell,3
202108,INTL 4450,Global Security Policy,3
202108,INTL 4622R,Human Rights Research,3
202108,INTL 4255,Nuclear Politics,3
202108,INTL 4316,Democratic Erosion,3
202108,INTL 4230,Intl Pol Economy,3
202108,INTL 4615,Politics of Disease Control,3
202108,INTL 4271,People Planet and Profit,3
202108,INTL 1100E,Introduction to Global Issues,3
202108,INTL 4430,US National Security Policy,3
202108,INTL 4285,Crisis Diplomacy,3
202108,INTL 4615E,Politics of Disease Control,3
202108,INTL 4665,Global Politics Digital Media,3
202108,INTL 4780H,Sp Top Compara Pol,3
202108,INTL 4410E,Terrorism,3
202108,INTL 4610,Environmental Politics,3
202108,INTL 4620,Human Rights,3
202108,INTL 4650,Women and World Politics,3
202108,INTL 8200,Special Topics Ir,3
202108,INTL 8291,Terrorism,3
202108,INTL 4295,War and Human Security,3
202108,INTL 4530,Global and Distribut Justice,3
202108,INTL 4361,Chinese Politics,3
202108,INTL 3200E,Intro to Intl Relations,3
202108,INTL 3300E,Intro to Comparative Politics,3
202108,INTL 4380,Latin American Politics,3
202108,INTL 4780,Special Topics in Compar Pol,3
202108,INTL 4410,Terrorism,3
202108,INTL 4970R,Undergraduate Research II,6
202108,INTS 4990R,Undergraduate Thesis,3
202108,ITAL 1001,Elementary Italian,4
202108,ITAL 2002,Intermediate Italian,3
202108,ITAL 2001,Intermediate Italian,3
202108,ITAL 1002,Elementary Italian,4
202108,ITAL 3010,Italian Conversat and Compos,3
202108,ITAL 2500,Italian Culture,3
202108,ITAL 4030,Italian Literature and Culture,3
202108,ITAL 6030,Italian Literature and Culture,3
202108,ITAL 4120,Topics in Italian,3
202108,ITAL 6120,Topics in Italian,3
202108,ITAL 4950,Directed Reading,3
202108,ITAL 8500,ITAL Read Research,3
202108,JNMW 6000E,Nonfiction Writing I,4
202108,JNMW 6001E,Nonfiction Craft Reflection I,4
202108,JNMW 6100E,Writing for the Screen I,4
202108,JNMW 6101E,Screenplay Craft I,4
202108,JNMW 6005E,Nonfiction Craft Reflect III,4
202108,JNMW 6004E,Nonfiction Writing III,4
202108,JNMW 6104E,Writing for the Screen III,4
202108,JNMW 6105E,Screenplay Craft III,4
202108,JNMW 6006E,Nonfiction Writing IV,4
202108,JNMW 6108E,Writing for the Screen V,4
202108,JOUR 5640,Business of News,3
202108,JOUR 7640,Business of News,3
202108,JOUR 5990,Journalism Seminar,3
202108,JOUR 5010,Media Internship,3
202108,JOUR 5590,Critical Writing,3
202108,JOUR 5170,Advanced Studies in Journalism,3
202108,JOUR 3030,Media News and Consumers,3
202108,JOUR 3090,Information Gathering,3
202108,JOUR 3190,JOUR Writing,3
202108,JOUR 3190H,JOUR Writing,3
202108,JOUR 3330,Introduction to Photojournalis,3
202108,JOUR 3380,Digital Design,3
202108,JOUR 3280,Introduction to Video Jour,3
202108,JOUR 5320,Journalism Ethics and Divers,3
202108,JOUR 7320,Journalism Ethics and Divers,3
202108,JOUR 5420,Cred News Media Public Trust,3
202108,JOUR 7420,Cred News Media Public Trust,3
202108,JOUR 7590,Critical Writing,3
202108,JOUR 5091,JOUR Projects,3
202108,JOUR 4090,Multiplatform Story Production,3
202108,JOUR 5160,Advanced Photojournalism,3
202108,JOUR 5390,Investigative Reporting,3
202108,JOUR 7390,Investigative Reporting,3
202108,JOUR 5280,Advanced Video Journalism,3
202108,JOUR 5090L,Newsource Lab,0
202108,JOUR 7280,Advanced Video Journalism,3
202108,JOUR 4090E,Multiplatform Story Production,3
202108,JOUR 5090,Newsource,6
202108,JOUR 5190,Feature Writing,3
202108,JOUR 7190,Feature Writing,3
202108,JOUR 7090,Newsource,6
202108,JOUR 7090L,Newsource Lab,0
202108,JOUR 7091,JOUR Projects,3
202108,JOUR 5380E,Data Gathering and Visual,3
202108,JOUR 7380E,Data Gathering and Visual,3
202108,JPNS 1001,Elementary Japanese I,4
202108,JPNS 2001,Intermediate Japanese I,3
202108,JPNS 3010,Advanced Japanese I,3
202108,JPNS 3990,Directed Study,9
202108,JPNS 4110,Advanced Jpn III,3
202108,JRLC 5040,Law of Mass Communication,3
202108,JRLC 7040,Law of Mass Communication,3
202108,JRLC 5990,Jourandmass Comm Sem,3
202108,JRLC 3800,Sports Media and Society,3
202108,JRLC 5880,Topics in Sports Media,3
202108,JRLC 5900,Sports Media Capstone,3
202108,JRLC 5210,Mass Comm Effects,3
202108,JRLC 5820,Sport Broadcast and Production,3
202108,JRLC 4800,Multiplatform Storytell Sports,3
202108,JRLC 5080,Intl. Mass Comm,3
202108,JRLC 5800,Sports Enterprise Report Writ,3
202108,JRLC 1001,Career Explorations,1
202108,JRLC 5040H,Law of Mass Comm Honors,3
202108,JRLC 5400,Race Gender and the Media,3
202108,JRLC 5400E,Race Gender and the Media,3
202108,JRLC 3600E,Media Savvy Becoming Digitally,3
202108,JRMC 7340,Graduate Newsroom,3
202108,JRMC 7356,Adv Health Med Jrl,3
202108,JRMC 7940,Public Relations Foundations,3
202108,JRMC 7960,Ad Foundations,3
202108,JRMC 8000,Prosem Mass Comm,3
202108,JRMC 8100,Adv and Comm Mgmt,3
202108,JRMC 8150,Public Relations Theory,3
202108,JRMC 8130,Special Topics in Advertising,3
202108,JRMC 8170,Risk Communication,3
202108,JRMC 8365,Media Econ,3
202108,JRMC 9010,Mass Comm Theory,3
202108,JRMC 7000,Master-s Research,3
202108,JRMC 7005,Graduate Student Seminar,3
202108,JRMC 7300,Master-s Thesis,3
202108,JRMC 8050,Rsh and Directed Readings,3
202108,JRMC 9000,Doctoral Research,9
202108,JRMC 9005,Doc Grad Stu Sem,3
202108,JRMC 9300,Doct Dissertation,3
202108,JRMC 9000,Doctoral Research,6
202108,JRMC 7300,Master-s Thesis,6
202108,JRMC 9000,Doctoral Research,3
202108,JRMC 8070,Media and Diversity,3
202108,JRMC 8350,Journalism Topics,3
202108,JRMC 8200,Media Management,3
202108,JRMC 7010,Emerging Media Design,3
202108,JRMC 7011,Emerging Media Project Mgmt,3
202108,JRMC 8050,Rsh and Directed Readings,1
202108,JRMC 8050,Rsh and Directed Readings,6
202108,JRMC 7015,Emerging Media Capstone,3
202108,JRMC 7220,Graduate Internship,3
202108,JRMC 6000,Special Topics in Mass Comm,3
202108,JRMC 7300,Master-s Thesis,9
202108,JRMC 8010,Mass Comm Research,3
202108,JRMC 8240,Special Topics in EMST,3
202108,JRMC 7012,Emerging Media Storytelling,3
202108,JRMC 8160,Special Topics in PR,3
202108,JRMC 8016,EM Interaction Design,3
202108,JRMC 7250,App Network Analysis Soc Media,3
202108,JRMC 8016E,EM Interaction Design,3
202108,JRMC 7220E,Graduate Internship Online,3
202108,JURI 4030,Contracts,4
202108,JURI 4120,Torts,4
202108,JURI 4150,Appellate Advocacy,2
202108,JURI 4190,Constitutional Law II,3
202108,JURI 4210,Corporations,3
202108,JURI 4300,Law and Ethics,3
202108,JURI 4280,Trusts and Estates I,3
202108,JURI 4320,Administrative Law,3
202108,JURI 4460,Crim Procedure I,3
202108,JURI 5040,Trial Practice Seminar,2
202108,JURI 5380,International Legal Research,1
202108,JURI 7501,Legal System of the U.S.,2
202108,JURI 6501,Legal System of the U.S.,3
202108,JURI 5510,Independent Project,2
202108,JURI 6030,Contracts,4
202108,JURI 6120,Torts,4
202108,JURI 6210,Corporations,3
202108,JURI 6250,Evidence,3
202108,JURI 4760,Labor Law,3
202108,JURI 4250,Evidence,3
202108,JURI 4071,Legal Writing I,3
202108,JURI 4216S,Business Law Practicum,2
202108,JURI 4217S,Busi Law Pract Clinic Hours,2
202108,JURI 5628S,Comm Health Law Partnership,2
202108,JURI 5968S,Corporate Counsel Externship,3
202108,JURI 5310S,Capital Assistance Project,2
202108,JURI 5330,Family Law,3
202108,JURI 5646,Internal Investigations,3
202108,JURI 5042,Moot Court Competition,2
202108,JURI 5046,Hulsey-Gambrell Moot Court,1
202108,JURI 5047,Mock Trial Competition,2
202108,JURI 5976S,Mediation Practicum II,3
202108,JURI 5761S,Child Endangerment Sexual Exp,3
202108,JURI 4930,Trademark Law,2
202108,JURI 5690S,Public Interest Practicum,3
202108,JURI 5120,Federal Income Tax,3
202108,JURI 4500S,Criminal Defense Practicum II,3
202108,JURI 5170S,Criminal Defense Pract I,3
202108,JURI 5970S,Civil Externship I,3
202108,JURI 5963S,Civil Externship II,3
202108,JURI 5964S,Civil Externship II Hours,3
202108,JURI 4155S,Appellate Litigation Clinic I,3
202108,JURI 4072,Legal Research I,1
202108,JURI 6190,Constitutional Law II,3
202108,JURI 7380,International Legal Research,1
202108,JURI 4010,Civil Procedure,4
202108,JURI 5977S,Veterans Legal Clinic,3
202108,JURI 5978S,Veterans Legal Clinic Hours,3
202108,JURI 6010,Civil Procedure,4
202108,JURI 4710,Intl Taxation,2
202108,JURI 5550,Sports Law,2
202108,JURI 5972,D.C. Semester in Practice Law,3
202108,JURI 5973S,D.C. Externship,5
202108,JURI 5974S,D.C. Externship Placement,5
202108,JURI 5140S,Family Justice Clinic,4
202108,JURI 5762S,CEASE Clinic Hours,3
202108,JURI 5981S,Atlanta Civil Externship I,5
202108,JURI 5982S,Atlanta Civil Extern Placemt I,5
202108,JURI 5993S,ATL Corp Counsel Extern I,5
202108,JURI 5994S,ATL Corp Cnsl Extern Plcmt I,5
202108,JURI 5278S,Prac in Animal Welfare Skills,3
202108,JURI 5279S,Animal Welfare Skills Prac Hrs,3
202108,JURI 5041,International Advocacy Seminar,2
202108,JURI 3500,Undergraduate Mock Trial,2
202108,JURI 4225,Bankruptcy Litigation,2
202108,JURI 5190,Supervised Research,2
202108,JURI 5992S,Full-time Externship Hours,6
202108,JURI 5991E,Full-time Externship,6
202108,JURI 4340,Antitrust Law,3
202108,JURI 5622,Public Health Law,3
202108,JURI 4501S,Criminal Defense Prac II Hours,3
202108,JURI 5141S,Family Justice Clinic Hours,4
202108,JURI 5629S,Comm Health Law Part Cl Hrs,2
202108,JURI 5971S,Civil Externship I Hours,3
202108,JURI 5969S,Corporate Counsel Extern SL,3
202108,JURI 5595,Legal Topics Seminar,1
202108,JURI 5975,Mediation Practicum,3
202108,JURI 3627,Mental Health Law,3
202108,JURI 5627,Mental Health Law,3
202108,JURI 7627,Mental Health Law,3
202108,JURI 6460,Crim Procedure I,3
202108,JURI 5281,Environmental Law Drafting,2
202108,JURI 5161S,Prosecution II Hours,3
202108,JURI 4200S,First Amendment Clinic Seminar,2
202108,JURI 4201S,First Amendment Clinic Hours,2
202108,JURI 4770,Labor Arbitration,2
202108,JURI 6710,Intl Taxation,2
202108,JURI 5044,Negotiation Competition,1
202108,JURI 7550,Sports Law,2
202108,JURI 7330,Family Law,3
202108,JURI 3510,Directed Readings,3
202108,JURI 6930,Trademark Law,2
202108,JURI 7040,Trial Practice Seminar,2
202108,JURI 5987S,Corporate Counsel Extern II,3
202108,JURI 5988S,Corp Counsel Extern SL II Plac,3
202108,JURI 7595,Legal Topics Seminar,1
202108,JURI 7009,LLM Legal Research and Writing,3
202108,JURI 4110,Democracy and the Constitution,3
202108,JURI 4470,Criminal Procedure II,3
202108,JURI 5130,Tax Seminar,2
202108,JURI 5585,Bioethics,3
202108,JURI 5560,Complex Litigation,3
202108,JURI 4198,Constl Law Sem,2
202108,JURI 4196,Constl Theory,2
202108,JURI 5456E,Contract Draft Startups Ventur,3
202108,JURI 4277,Criminal Justice Reform,2
202108,JURI 4278,Criminal Law Drafting,3
202108,JURI 5455,Doc Draft Litig,3
202108,JURI 4990,Employment Discrimination,2
202108,JURI 4305,History of Common Law,3
202108,JURI 4675,Intnl Business Tran,3
202108,JURI 4833,Law and Religion,3
202108,JURI 4880E,Statut Inter and Legis Process,3
202108,JURI 4780,Real Estate Transactions,2
202108,JURI 4585,Supreme Court,3
202108,JURI 4135,Torts II,2
202108,JURI 5595,Legal Topics Seminar,2
202108,JURI 6340,Antitrust Law,3
202108,JURI 7622,Public Health Law,3
202108,JURI 7975,Mediation Practicum,3
202108,JURI 6470,Criminal Procedure II,3
202108,JURI 5120E,Federal Income Tax,3
202108,JURI 3600,Legal Aspects of Entrepreneurs,3
202108,JURI 3360,The Death Penalty in America,3
202108,JURI 3355,Crim Legal System Crime Books,3
202108,JURI 5160E,Prosecution II SL,3
202108,JURI 4900,State and Local Governments,2
202108,JURI 6833,Law and Religion,3
202108,JURI 7510,Independent Project,2
202108,JURI 7510,Independent Project,1
202108,JURI 5985S,Atlanta Civil Externship II,5
202108,JURI 5986S,Atlanta Civil Extern Plcmnt II,5
202108,JURI 5995S,ATL Corp Counsel Extern II,5
202108,JURI 5996S,ATL Corp Cnsl Extern Plcmt II,5
202108,JURI 6780,Real Estate Transactions,2
202108,JURI 5975E,Mediation Practicum,3
202108,JURI 7646,Internal Investigations,3
202108,JURI 7970S,Civil Externship I,3
202108,JURI 7971S,Civil Externship I Hours,3
202108,JURI 3821,Race and Law,3
202108,JURI 3980E,Constitutional Rights in Edu,3
202108,JURI 5049,Child Welfare Law and Practice,2
202108,JURI 5283,Climate Change Seminar,2
202108,JURI 4826,Renewable Energy Law Policy,3
202108,JURI 5040E,Trial Practice Seminar,2
202108,JURI 4470E,Criminal Procedure II,3
202108,JURI 6470E,Criminal Procedure II,3
202108,JURI 5595E,Legal Topics Seminar,1
202108,JURI 6300,Law and Ethics,3
202108,JURI 7190,Supervised Research,2
202108,JURI 6990,Employment Discrimination,2
202108,JURI 6675,Intnl Business Tran,3
202108,JURI 6760,Labor Law,3
202108,JURI 7585,Bioethics,3
202108,JURI 6320,Administrative Law,3
202108,KINS 2010,Introduction to Kinesiology,3
202108,KINS 2100,Prev Care Ath Inj,3
202108,KINS 2100L,Ath Inj Lab,1
202108,KINS 2470L,Pract Athletic Tng,1
202108,KINS 3500,Personal Training,3
202108,KINS 3700,Applied Exercise Physiology,3
202108,KINS 3830,Study Design and Stat in Kins,3
202108,KINS 4120,Admin Sports Med,3
202108,KINS 4200,Biomechanics,3
202108,KINS 4200L,Biomechanics Lab,1
202108,KINS 4300,Exercise Epidemiology,3
202108,KINS 6300,Exercise Epidemiology,3
202108,KINS 4400,Exer Sport Psych,3
202108,KINS 6400,Exer Sport Psych,3
202108,KINS 4630,Exercise Physiology,3
202108,KINS 6630,Exercise Physiology,3
202108,KINS 4630L,Ex Physiol Lab,1
202108,KINS 4640,Sci Prin Cond Fit,4
202108,KINS 4640L,Prin-techs Fit Test,0
202108,KINS 4690,Neuromuscular Physiology,4
202108,KINS 6690,Neuromuscular Physiology,4
202108,KINS 4690L,Neuromuscular Physiology Lab,0
202108,KINS 4910L,Clin Exper Athletic Train III,3
202108,KINS 7150,Research Methods in KINS,3
202108,KINS 8990,Resch Sem Kins,3
202108,KINS 7300,Master-s Thesis,9
202108,KINS 3415,Philosophy and Ethics in Sport,3
202108,KINS 3430,Intro to Sport Management,3
202108,KINS 4520,Sport Finance,3
202108,KINS 4820,Social Aspects of Sport,3
202108,KINS 4840,Sport Event Management,3
202108,KINS 2420,Physical Education in Elem Edu,2
202108,KINS 3210,Teachin Indiv Activ,3
202108,KINS 3720,Found Teaching PE,3
202108,KINS 4330,PE Secondary School,3
202108,KINS 4340,Curr-tchg Proc Hlth,3
202108,KINS 8500,Sem Sprt Management,3
202108,KINS 9300,Doctoral Dissertation,15
202108,KINS 7005,Grad Student Sem,3
202108,KINS 6690L,Neuromuscular Physiology Lab,0
202108,KINS 9000,Doctoral Research,9
202108,KINS 6630L,Ex Physiol Lab,1
202108,KINS 7000,Master-s Research,6
202108,KINS 9630,Readings Kins,3
202108,KINS 9005,Doc Grad Stu Sem,3
202108,KINS 7650,Appl Project Kins,9
202108,KINS 3420,Man Legal Sport,3
202108,KINS 4830,Sport Policy Gov,3
202108,KINS 5210,Sport Mass Media,3
202108,KINS 6000,Dir Study Kins,3
202108,KINS 2500,Exercise is Medicine,3
202108,KINS 2500L,Exercise is Medicine Lab,0
202108,KINS 3450,Practicum Fitness Conditioning,3
202108,KINS 3303,Sport Management Practicum,6
202108,KINS 3460,Practicum for Health Care Prof,3
202108,KINS 5620,Adapted Physical Education,3
202108,KINS 7620,Adapted Physical Education,3
202108,KINS 5620L,Adapted Physical Education Lab,0
202108,KINS 7620L,Adapted Physical Education Lab,0
202108,KINS 3500L,Personal Training Lab,0
202108,KINS 4000,Dir Study Kins,3
202108,KINS 6520,Sport Finance,3
202108,KINS 6640,Sci Prin Cond Fit,4
202108,KINS 6640L,Prin-techs Fit Test,0
202108,KINS 5450,Internship in Kinesiology,15
202108,KINS 5460,Student Teaching in PE,14
202108,KINS 3480,Practicum in Kinesiology Rsch,3
202108,KINS 4750S,Service Learning in KINS,3
202108,KINS 6750S,Service Learning in KINS,3
202108,KINS 7260,Legal Issue Spt Mgt,3
202108,KINS 7370,Sport Policy and Governance,3
202108,KINS 4970,Research Kins,9
202108,KINS 3110,Net-wall Activities,3
202108,KINS 4110,Theapeutics II At,4
202108,KINS 8340,Sem Exer Psychology,2
202108,KINS 4600,Measur Surveill PA,3
202108,KINS 6600,Measur Surveill PA,3
202108,KINS 5560,Econ and Policy Analysis Sport,3
202108,KINS 4810,Sport Marketing,3
202108,KINS 3105,Meth Fitness,3
202108,KINS 6810,Sport Marketing,3
202108,KINS 7270,Desgn Mgt Spt Facil,3
202108,KINS 7450,Internship in Kinesiology,12
202108,KINS 7800,Practicum in Kinesiology,6
202108,KINS 4700,Weight Management Coaching,3
202108,KINS 6700,Weight Management Coaching,3
202108,KINS 7600,Health Intervention,4
202108,KINS 3115E,Structural Kinesiology,3
202108,KINS 4680,Integrative Cardiov Physiol,3
202108,KINS 6680,Integrative Cardiov Physiol,3
202108,KINS 7040,App to Sp Ped,3
202108,KINS 7440,Drugs in Sports,3
202108,KINS 7605,Motivation in Phys Activity,3
202108,KINS 6850,Sport Sales Fund and Revenue,3
202108,KINS 4630H,Exercise Physiology Honors,3
202108,KINS 4520E,Sport Finance,3
202108,KINS 7560,Econ and Policy Analysis Sport,3
202108,KINS 7320,Int Ath and Higher Ed,3
202108,KINS 3700E,Applied Exercise Physiology,3
202108,KINS 2010E,Introduction to Kinesiology,3
202108,KINS 4970R,Undergraduate Research II,3
202108,KINS 3510,Group Exercise Instruction,3
202108,KINS 4250,Intro to Sports Analytics,3
202108,KINS 4850,Sport Sales Fund and Revenue,3
202108,KINS 7140,Current Pblms Kins,3
202108,KINS 7140,Current Pblms Kins,1
202108,KINS 7200,Sport Organizational Behavior,3
202108,KINS 7330,Metab Aspects Exerc,4
202108,KINS 7330L,Met Aspect Exer Lab,0
202108,KINS 8410,Neuromus Mech Exerc,3
202108,KINS 4760,Motor Skill Behavior,3
202108,KINS 6760,Motor Skill Behavior,3
202108,KINS 4960R,Undergraduate Research I,3
202108,KINS 6330,PE Secondary School,3
202108,KINS 6520E,Sport Finance,3
202108,KINS 5560E,Econ and Policy Analysis Sport,3
202108,KINS 8230,Adv Nutri in Phys Act Exercise,3
202108,KREN 1001,Elementary Korean I,4
202108,KREN 2001,Intermediate Korean I,3
202108,KREN 3001,Advanced Korean I,3
202108,KREN 3990,Korean Language,3
202108,KREN 4001,Business Korean,3
202108,KREN 3011,Enhanced Advanced Korean I,3
202108,KREN 2011,Enhanced Intermediate Korean I,3
202108,LACS 1000,Introduction to LACS,3
202108,LACS 2222,Lat Amer Since 1800,3
202108,LACS 4800,LACS Internship,9
202108,LACS 4090S,Practicum in Service Learning,3
202108,LACS 4380,Latin American Politics,3
202108,LACS 4660,US Latino-a Mental Health Intr,3
202108,LACS 4260,The Black and Green Atlantic,3
202108,LACS 6260,The Black and Green Atlantic,3
202108,LACS 4091S,LACS Practicum,3
202108,LACS 3820,Reflections on Fighting Hunger,3
202108,LACS 2010,Multidiscip Latino-a Studies,3
202108,LACS 3140,U.S. Hispanic-Latinx History,3
202108,LACS 3220H,History of Mexico,3
202108,LACS 3210,Race and Slavery in Americas,3
202108,LACS 4211,Environmental Justice in LACS,3
202108,LACS 6211,Environmental Justice in LACS,3
202108,LACS 6660,US Latino-a Mental Health Intr,3
202108,LAMS 5310,Lg An Therio Select,2
202108,LAMS 5375,Eq Surgery I,1
202108,LAMS 5385,Bovine Surg,1
202108,LAMS 5395,AI Et Art,0.8
202108,LAMS 5350,La Digestive Dis,1.9
202108,LAMS 5359,Musculoskel Dis,2
202108,LAMS 5351,Eq Digest Diseases,1
202108,LAMS 5353,Eq Lameness and Foot,1
202108,LAMS 5250,Clinical Techniques,1
202108,LAMS 5290,Vet Obstetrics,0.9
202108,LAMS 5211,Eq Dentistry,1
202108,LAMS 5211L,Eq Dentistry,0
202108,LAMS 5400,Large Anim Adv Clin Anesthesia,3.9
202108,LAMS 5415,Large Animal Internal Medicine,3.9
202108,LAMS 5420,Large Animal Surgery,3.9
202108,LAMS 5435,General Theriogenology,3.9
202108,LAMS 5465,LA Emergency and Critical Care,3.9
202108,LAMS 5470,Equine Diag Imag and Lameness,2.6
202108,LAMS 7500,Large Animal Internship,17
202108,LAMS 7610,Large Animal Residency I,18
202108,LAMS 7620,Large Animal Residency II,18
202108,LAMS 7630,Large Animal Residency III,18
202108,LAMS 7640,La Residency IV,18
202108,LAMS 7650,Sem Large Animal Medicine Surg,4
202108,LAMS 5150,Physical Diagnosis,1.3
202108,LAMS 5150L,Physical Diagnosis Lab,0
202108,LAMS 5425S,Large Animal Farm Practice,3.9
202108,LAMS 5900,Clinical Large Animal Medicine,8
202108,LAMS 5475,Equine Clinical Nutrition,1.3
202108,LAMS 5480,Equine Ophthalmology,3.9
202108,LAMS 3000E,Fdn of Clinical Medicine I,1
202108,LAMS 3010E,Fdn of Clinical Medicine II,1
202108,LAMS 3020E,Fdn of Clinical Medicine III,1
202108,LAMS 6000E,Clinically-Based Concepts I,3
202108,LAMS 7005,Graduate Student Seminar,3
202108,LAMS 1101E,Studying for Success,1
202108,LAND 1500,Design and the Environment,3
202108,LAND 2010,Landscape Architecture Des I,4
202108,LAND 7300,Master-s Thesis,12
202108,LAND 2210,Design Communication I,3
202108,LAND 2510,History Built Environ I Landsc,3
202108,LAND 3030,Land Arch Design Studio III,4
202108,LAND 4050,Land Arch Design Studio  V,4
202108,LAND 6912,Independent Project,6
202108,LAND 6620,Evolution of American Arch,3
202108,LAND 4620,Evolution of American Arch,3
202108,LAND 6910,Independent Project,6
202108,LAND 6912,Independent Project,5
202108,LAND 4911,Independent Project,3
202108,LAND 4700,Landscape Architecture Intern,3
202108,LAND 4911,Independent Project,2
202108,LAND 4095,Sustainability in Design,4
202108,LAND 6010,Landscape Studio I Foundations,5
202108,LAND 6210,Representation I,3
202108,LAND 6320,Plant Communities,3
202108,LAND 6310,Eco Matls and Process,3
202108,LAND 6330,Landscape Construction,3
202108,LAND 6710,Professional Practice,2
202108,LAND 7050,Landscape Studio Engagement,5
202108,LAND 3410,Plants of the South,3
202108,LAND 3330,Landscape Engineering Process,3
202108,LAND 4350,Soil and Stormwater Management,3
202108,LAND 4380,LA Implementation Documents,3
202108,LAND 4360,Advanced Landscape Ecology,3
202108,LAND 4660,Sustainable Building Design,3
202108,LAND 4912,Independent Project,3
202108,LAND 3030S,Land Arch Design Studio III,4
202108,LAND 6351,Soil and Stormwater Management,3
202108,LAND 4580,LA in Lit Arts and Culture,3
202108,LAND 6580,LA in Lit Arts and Culture,3
202108,LAND 6030S,Nature and Sustainability,5
202108,LAND 4911,Independent Project,6
202108,LAND 4250,Portfolio Develpmnt,3
202108,LAND 6911,Independent Project,6
202108,LAND 6950,Research Strategies,3
202108,LAND 4960R,Undergraduate Research I,3
202108,LAND 4912,Independent Project,4
202108,LAND 2520,History Built Environ II Arch,3
202108,LAND 6660,Sustainable Building Design,3
202108,LAND 6460,Landscape Lighting,3
202108,LAND 7200,Design Research Non-Thesis,12
202108,LAND 1500E,Design and the Environment,3
202108,LAND 2520E,History Built Environ II Archi,3
202108,LAND 4070,Garden Design in America,4
202108,LAND 4460,Landscape Lighting,3
202108,LAND 6240,Portfolio Develop,3
202108,LAND 2330,Place Society and Design,3
202108,LAND 6700,La Internship,3
202108,LAND 6070,Garden Design in America,4
202108,LATN 1001,Elementary Latin I,4
202108,LATN 1002,Elementary Latin II,4
202108,LATN 2001,Intermediate Latin,3
202108,LATN 2002,Golden Age Lat Lit,3
202108,LATN 7770,Lat Tch Apprentice,3
202108,LATN 7000,Master-s Research,9
202108,LATN 7300,Master-s Thesis,9
202108,LATN 4030,Roman Historians,3
202108,LATN 6030,Roman Historians,3
202108,LATN 4220,Ovid,3
202108,LATN 8010,Research Lat Prose,3
202108,LATN 4310,Livy,3
202108,LATN 6310,Livy,3
202108,LATN 4150,Comp Grammar Greek and Latin,3
202108,LATN 6150,Comp Grammar Greek and Latin,3
202108,LATN 4000,Gateway Latin,3
202108,LATN 8020,Research Lat Poetry,3
202108,LATN 4010,Roman Rhetoric,3
202108,LATN 6010,Roman Rhetoric,3
202108,LEGL 2700,Legal Regulatory Environ Bus,3
202108,LEGL 4400,Business Law,3
202108,LEGL 4500,Employment Law,3
202108,LEGL 6500,Employment Law,3
202108,LEGL 6400,Business Law,3
202108,LEGL 7010,Legal and Reg Env Bus,3
202108,LEGL 4900,Intl Legal Transact for Busi,3
202108,LEGL 6900,Intl Legal Transact for Busi,3
202108,LEGL 4200,Intellectual Property Law,3
202108,LEGL 4700,FinTech Financial Svcs Law,3
202108,LEGL 6700,FinTech Financial Svcs Law,3
202108,LING 2100,Study of Language,3
202108,LING 2100H,Study of Language,3
202108,LING 8100,Proseminar,1
202108,LING 8150,Generative Syntax,3
202108,LING 3060,Phonetics and Phonology,3
202108,LING 3090,Intro to French Linguistics,3
202108,LING 4060,Old English,3
202108,LING 6060,Old English,3
202108,LING 3050,Introduction to Spanish Ling,3
202108,LING 4690,Historical Linguistics,3
202108,LING 9000,Doctoral Research,9
202108,LING 9300,Doctoral Dissertation,3
202108,LING 9000,Doctoral Research,3
202108,LING 7000,Master-s Research,6
202108,LING 7000,Master-s Research,9
202108,LING 7300,Master-s Thesis,9
202108,LING 9300,Doctoral Dissertation,9
202108,LING 3150W,Generative Syntax,3
202108,LING 9000,Doctoral Research,6
202108,LING 9300,Doctoral Dissertation,6
202108,LING 9010,Dir Readings Ling,3
202108,LING 9010,Dir Readings Ling,2
202108,LING 4886,Text Corp Analysis,3
202108,LING 6886,Text Corp Analysis,3
202108,LING 6021,Phoneticsandphonology,3
202108,LING 4650,Span Phonetics,3
202108,LING 7005,Grad Student Sem,3
202108,LING 7500,Teach Coll Germ,3
202108,LING 4080,Language and Complex Systems,3
202108,LING 6080,Language and Complex Systems,3
202108,LING 4010,American English,3
202108,LING 6010,American English,3
202108,LING 4885,Intro to Hum Comp,3
202108,LING 6885,Intro to Hum Comp,3
202108,LING 4160,Compositional Semantics,3
202108,LING 6160,Compositional Semantics,3
202108,LING 4150,Comp Grammar Greek and Latin,3
202108,LING 6150,Comp Grammar Greek and Latin,3
202108,LING 6600,Hist Ger Lang,3
202108,LING 8120,Morphology,3
202108,LING 3160,Advanced Generative Syntax,3
202108,LING 8980,Sem Lg Var -sociolg,3
202108,LING 4610,Sanskrit I,3
202108,LING 6610,Sanskrit I,3
202108,LING 4652,Spanish Dialects,3
202108,LING 6650,Sp Phon andphonology,3
202108,LING 4940,Special Topics in Linguistics,3
202108,LING 8080,Sem Linguistic Thry,3
202108,LING 6350,Rom Ling Theory Ana,3
202108,LING 6910,History French Lang,3
202108,LING 8580,Computational Linguistics,3
202108,LING 8300,Sem Phil of Lang,3
202108,LING 4960R,Undergraduate Research I,6
202108,LING 4510,Deductive Systems,3
202108,LING 4195,Celtic Languages,3
202108,LING 6195,Celtic Languages,3
202108,LING 4570,Natural Language Processing,3
202108,LING 6570,Natural Language Processing,3
202108,LING 6880,Language Doc and Field Methods,3
202108,LING 4880,Language Doc and Field Methods,3
202108,LING 4860,Sociolinguistics,3
202108,LING 6860,Sociolinguistics,3
202108,LING 4710,Languages in Contact,3
202108,LING 6710,Languages in Contact,3
202108,LING 8680,Sem Historical Ling,3
202108,LING 6690,Historical Linguistics,3
202108,LING 3280,Contrastive Grammar Ger Eng,3
202108,LING 6280,Old Germanic Languages,3
202108,LING 6510,Deductive Systems,3
202108,LING 4005,Hist Eng Lang,3
202108,LING 6005,Hist Eng Lang,3
202108,LING 4826,Style Language Genre Cognition,3
202108,LING 6826,Style  Language Genre Cognit,3
202108,LING 6750,Span Syntax and Morph,3
202108,LING 3080,Anthro of Language,3
202108,LLED 4010,The Teaching of Reading,3
202108,LLED 4120,Language and Literacy,3
202108,LLED 5220,Writing Pedagogy Grades 4-8,3
202108,LLED 4400,Plan Instruct in Second Eng Ed,3
202108,LLED 6461,Field-Base Prac Sem Sec Eng Ed,3
202108,LLED 7768,Intl Grad Intern I,3
202108,LLED 7769,International Grad Intern II,3
202108,LLED 9300,Doctoral Dissertation,12
202108,LLED 9100,Doctoral Exam Prospectus Prep,12
202108,LLED 9005,Doc Grad Stu Sem,3
202108,LLED 9000,Doctoral Research,12
202108,LLED 8888,Ejournal Lled,3
202108,LLED 4010E,The Teaching of Reading,3
202108,LLED 3530,Content Area Lit MS,3
202108,LLED 4000,Dir Study Lle,6
202108,LLED 5040,Lang and Cult in Clas,3
202108,LLED 5730E,L1 and L2 Acq and Devel,3
202108,LLED 2110,Survey Diverse Lit Young Aud,3
202108,LLED 5040E,Lang and Cult in Clas,3
202108,LLED 5630E,ESOL Grades P-12,3
202108,LLED 7040E,Lang and Cult in Clas,3
202108,LLED 7730E,L1 and L2 Acq and Devel,3
202108,LLED 3420,Read Instruct in the Elem Sch,3
202108,LLED 3430,Rd Assess Elem Sch,3
202108,LLED 8000,Doc Seminar Lled,3
202108,LLED 4461,Field-Base Prac Sem in Eng Ed,3
202108,LLED 7110E,Digital Resources in Lit Ed,3
202108,LLED 7910E,New Literacies,3
202108,LLED 6010E,Survey Read Inst,3
202108,LLED 7630E,ESOL Grades P-12,3
202108,LLED 4490,Digi Tools Social Media Eng Ed,3
202108,LLED 6490,Digi Tools Social Media Eng Ed,3
202108,LLED 6400,Plan Instruct in Second Eng Ed,3
202108,LLED 7815E,Advanced Eng Educ Methods,3
202108,LLED 4530,TESOL & WL Curric Mthds Gr P-5,3
202108,LLED 6530,TESOL & WL Curric Mthds Gr P-5,3
202108,LLED 4531,TESOL WL Curric Mthd Gr 6-12,3
202108,LLED 6531,TESOL WL Curric Mthd Gr 6-12,3
202108,LLED 5540,Culture TESOL World Lang Class,3
202108,LLED 7540,Culture TESOL World Lang Class,3
202108,LLED 2110E,Survey Diverse Lit Young Aud,3
202108,LLED 7045E,Special Topics in LLED,3
202108,LLED 5550,Field-Based Prac TESOL or WLEd,3
202108,LLED 7550,Field-Based Prac TESOL or WLEd,3
202108,LLED 6430,Teach Adolescent Readers ELA,3
202108,LLED 4430,Teach Adolescent Readers ELA,3
202108,LLED 4620S,ESOL Service Learning,3
202108,LLED 6620S,ESOL Service Learning,3
202108,LLED 6631E,Bilingualism and Bilingual Ed,3
202108,LLED 8010,Response to Lit,3
202108,LLED 7000,Master-s Research,6
202108,LLED 7650,Appl Proj Lled,3
202108,LLED 6000,Dir Study Lle,6
202108,LLED 8045,Special Topics Lled,3
202108,LLED 9700,Intern Read Ed,9
202108,LLED 7005,Grad Student Sem,3
202108,LLED 7320E,Writers and Writing Pedagogy,3
202108,LLED 7505,Immigration Theory in Ed,3
202108,LLED 7070,Research Methods in Lang Educ,6
202108,LLED 8350,Family Community Literacies,3
202108,LLED 8340E,Hist Literacy Educ,3
202108,LLED 8070,Youth Comm Based Ed Resch,3
202108,LLED 7601E,Non-Native Lang Lit Youth,3
202108,LLED 7770,Graduate Teaching Seminar,3
202108,LLED 8005,Directed Study in LLED,9
202108,LLED 7300,Master-s Thesis,3
202108,LLED 7769E,International Grad Intern II,3
202108,LLOD 9601,Foundations of Learn LLOD Res,3
202108,LLOD 9005,Doctoral Grad Student Seminar,3
202108,LLOD 9300,Doctoral Dissertation,9
202108,LLOD 9000,Doctoral Research,18
202108,LLOD 9630,Critique of Literature in LLOD,3
202108,LLOD 9020,Adult Learning Theory and Res,3
202108,LLOD 7005,Graduate Student Seminar,3
202108,LLOD 7020E,Adult Learning and Instruction,3
202108,LLOD 8410E,Career Development for Adults,3
202108,LLOD 8230,Leadership in LLOD,3
202108,LLOD 8190E,Introduction to LLOD,3
202108,LLOD 6200E,Eval Interpret Research LLOD,3
202108,LLOD 8430,Org Coaching Methods and Prac,3
202108,LLOD 8610,Advanced Topics in LLOD,3
202108,LLOD 8210,Leading Change in Workplace,3
202108,LLOD 7020,Adult Learning and Instruction,3
202108,LLOD 8410,Career Development for Adults,3
202108,LLOD 7650E,Capstone Course in LLOD,3
202108,LLOD 7650,Capstone Course in LLOD,3
202108,LLOD 8190,Introduction to LLOD,3
202108,LLOD 6200,Eval Interpret Research LLOD,3
202108,LLOD 8510,LLOD Action Research,3
202108,LLOD 8420,Foundations of Org Coaching,3
202108,LLOD 6000,Directed Study LLOD,12
202108,MARK 3000,Principles of Marketing,3
202108,MARK 3001,Principles of Marketing,3
202108,MARK 4100,Consumer Buyer Behavior,3
202108,MARK 4000,Market Research Business Decis,3
202108,MARK 4210,Professional Selling,3
202108,MARK 4350,Marketing Analytics,3
202108,MARK 4450,Social Media Market Strategy,3
202108,MARK 4500,Services Marketing,3
202108,MARK 4700,International Marketing,3
202108,MARK 4900,Mark Strat and Decision Making,3
202108,MARK 7150,MR Plan Mgmt and Comm,1.5
202108,MARK 7220,Appl Mktg Rsch Tech I,3
202108,MARK 7250,MR Project I,3
202108,MARK 7510,Marketing Mgt,3
202108,MARK 7600,Predictive Analytic,3
202108,MARK 7720,Ad and Promo Mgmt,3
202108,MARK 7930,Mark Plan Strategy,3
202108,MARK 9300,Doct Dissertation,15
202108,MARK 4100E,Consumer Buyer Behavior,3
202108,MARK 4220,Sales Force Strategy and Mgmt,3
202108,MARK 4800,Marketing Intern Cooperative,3
202108,MARK 7990,Direct Study,3
202108,MARK 4600S,Integrated Market Brand Comm,3
202108,MARK 4650S,Digital Marketing Analytics,3
202108,MARK 6220,Sales Force Strategy and Mgmt,3
202108,MARK 4000H,Market Research Business Dec H,3
202108,MARK 3000H,Principles of Marketing Honors,3
202108,MARK 3001H,Principles of Marketing Hon,3
202108,MARK 7450,Con and Org Behavior,3
202108,MARK 7655,Regression Models for Mark Dec,3
202108,MARK 9000,Doctoral Research,15
202108,MARK 7610,Qual Rsch Mktg,3
202108,MARK 9560,Adv Sem Cons Beh,3
202108,MARK 4550,Multicultural Marketing,3
202108,MARK 4960R,Undergraduate Research I,3
202108,MARK 9450,Sem Mkt Management,3
202108,MARK 9550,Sem Buyer Behavior,3
202108,MARK 9650,Multivariate Statistics,3
202108,MARS 7000,Master-s Research,15
202108,MARS 4960,Undergrad Research,12
202108,MARS 8900,Research Techniques,3
202108,MARS 9000,Doctoral Research,15
202108,MARS 9300,Doct Dissertation,15
202108,MARS 3450,Marine Biology,3
202108,MARS 8010,Biol Oceanogr Proc,3
202108,MARS 7380,Quantitative Method Marine Sci,3
202108,MARS 1010L,Intro to Marine Science Lab,1
202108,MARS 7360,Teaching Mar Sci,2
202108,MARS 7300,Master-s Thesis,15
202108,MARS 1010,The Marine Environment,3
202108,MARS 1030,Migrations in the Sea,3
202108,MARS 3900,Exp Marine Sciences,4
202108,MARS 4200,Biol Chem Oceanography,3
202108,MARS 6740L,Scientific Diving I,2
202108,MARS 8160,Marine Ecology,3
202108,MARS 8190,Synthesis Skills in Marine Sci,3
202108,MARS 8190,Synthesis Skills in Marine Sci,1
202108,MARS 4740L,Scientific Diving I,2
202108,MARS 4730,Mathematics of Climate,3
202108,MARS 6730,Mathematics of Climate,3
202108,MARS 8990,Topics Marine Sci,2
202108,MARS 9000,Doctoral Research,2
202108,MARS 9000,Doctoral Research,3
202108,MARS 8990,Topics Marine Sci,1
202108,MARS 8050,Climate Ocean Marine Biosphere,3
202108,MARS 3550,Life in Fluids,3
202108,MARS 8130,Sem in Hydrobiology,1
202108,MARS 8190,Synthesis Skills in Marine Sci,2
202108,MARS 4620,Microbial Ecology,3
202108,MARS 6620,Microbial Ecology,3
202108,MARS 3100,Oceans in Peril,3
202108,MARS 4750,Scientific Diving II,3
202108,MARS 6750,Scientific Diving II,3
202108,MARS 6200,Biol Chem Oceanography,3
202108,MARS 4990,Senior Thesis,5
202108,MARS 1021E,Biology of the Marine Environ,3
202108,MARS 8990,Topics Marine Sci,3
202108,MARS 8900,Research Techniques,1
202108,MARS 7100,Project or Internship Exp,9
202108,MARS 1100,Natural Resources Conservation,3
202108,MARS 1030H,Migrations in the Sea Honors,3
202108,MARS 4520,Quant Analysis Ocean Data,3
202108,MARS 6520,Quant Analysis Ocean Data,3
202108,MARS 1020L,Intro to Marine Science Lab,1
202108,MARS 7020E,Marine Science for Teachers,4
202108,MARS 4960R,Undergraduate Research I,6
202108,MATH 9000,Doctoral Research,9
202108,MATH 1060,Mat Decision Making,3
202108,MATH 1101,Intro to Mathematical Modeling,3
202108,MATH 1113,Precalculus,3
202108,MATH 3100,Sequences and Series,3
202108,MATH 3200,Intro to Higher Mathematics,3
202108,MATH 3300,Applied Linear Algebra,3
202108,MATH 3500,Multivariable Mathematics I,4
202108,MATH 3500H,Multivariable Mathematic I Hon,4
202108,MATH 2200,Analy Geo and Calc,4
202108,MATH 2250,Calculus I for Sci and Eng,4
202108,MATH 4000,Modern Algebra and Geometry I,3
202108,MATH 6000,Modern Algebra and Geometry I,3
202108,MATH 4100,Real Analysis,3
202108,MATH 4500,Numerical Analysis I,3
202108,MATH 6500,Numerical Analysis I,3
202108,MATH 4600,Probability,3
202108,MATH 6600,Probability,3
202108,MATH 4700,Qual Ordinary Differ Equations,3
202108,MATH 6700,Qual Ordinary Differ Equations,3
202108,MATH 2260,Calc II for Science and Engr,4
202108,MATH 2270,Calc III Science and Math,4
202108,MATH 2500,Calculus III for Engineering,3
202108,MATH 2700,Elem Differential Equations,3
202108,MATH 7005,Graduate Student Seminar,3
202108,MATH 9005,Doctoral Graduate Student Sem,3
202108,MATH 5020,Arithmetic for MG Teachers,3
202108,MATH 5001,Arithmetic and Problem Solving,3
202108,MATH 9300,Doctoral Dissertation,9
202108,MATH 8800,Dir Read And-or Pro,6
202108,MATH 1113E,Precalculus,3
202108,MATH 4670,Combinatorics,3
202108,MATH 6670,Combinatorics,3
202108,MATH 7300,Master-s Thesis,9
202108,MATH 8900,Seminar in Algebra,3
202108,MATH 8920,Seminar in Topology,3
202108,MATH 8930,Seminar in Alg Geom,3
202108,MATH 8940,Seminar in Num Th,3
202108,MATH 8970,Seminar in Ap Math,3
202108,MATH 8980,Seminar in Geometry,3
202108,MATH 8910,Seminar in Analysis,3
202108,MATH 4200,Point Set Topology,3
202108,MATH 6200,Point Set Topology,3
202108,MATH 3000,Introduction to Linear Algebra,3
202108,MATH 4150,Complex Variables,3
202108,MATH 6150,Complex Variables,3
202108,MATH 7001,Arithmetic and Problem Solving,3
202108,MATH 6100,Real Analysis,3
202108,MATH 8000,Algebra I,3
202108,MATH 8005,Problems in Algebra,2
202108,MATH 8100,Real Analysis I,3
202108,MATH 8210,Top of Manifolds,3
202108,MATH 7020,Arithmetic for MG Teachers,3
202108,MATH 4730,Mathematics of Climate,3
202108,MATH 8300,Intro to Algebraic Geometry,3
202108,MATH 8320,Algebraic Curves,3
202108,MATH 4900,Topics in Math,3
202108,MATH 8510,Adv Num Analy II,3
202108,MATH 8430,Arithmetic Geometry,3
202108,MATH 8190,Lie Groups,3
202108,MATH 8230,Topics in Top and Geo,3
202108,MATH 6730,Mathematics of Climate,3
202108,MATH 8440,Comb-anly Number Th,3
202108,MATH 4010,Mod Alg and Geom II,3
202108,MATH 6010,Mod Alg and Geom II,3
202108,MATH 4950,Research Math,3
202108,MATH 8850,Collab Research,3
202108,MATH 2250E,Calculus I for Sci and Eng,4
202108,MATH 2270H,Calc III Sci and Math Honors,4
202108,MATH 4960R,Undergraduate Research I,6
202108,MATH 8310,Geometry of Schemes,3
202108,MATH 8030,Topics in Algebra,3
202108,MATH 8105,Problems in Real,2
202108,MATH 8500,Advanced Numerical Analysis I,3
202108,MATH 3220,Advanced Problem Solving,1
202108,MATH 8770,Partial Diff Eqns,3
202108,MATH 4450,Comp Number Thy,3
202108,MATH 6450,Comp Number Thy,3
202108,MATH 8630,Stochastic Analysis,3
202108,MATH 7900,Found Grad Math,3
202108,MATH 4850,History of Math,3
202108,MATH 6850,History of Math,3
202108,MATH 2310H,Integral Calculus Honors,4
202108,MBUS 3550,MBUS Production,3
202108,MBUS 4100,Music Business I,3
202108,MBUS 4300,Music Publishing I,3
202108,MBUS 3100,Promo Pub Tech MBUS,3
202108,MBUS 4800,MBUS Internship,3
202108,MBUS 3000,Busi Fund as Applied Musi Indu,3
202108,MBUS 1100,Intr Music Business,1
202108,MBUS 5000,Spec Topics in Music Business,3
202108,MBUS 4200,Artist Management I,3
202108,MCHE 1940,ME Design Studio Prof Practice,3
202108,MCHE 4000,Mech Engr Professional Pract,2
202108,MCHE 3920,Manufacturing Design Studio,3
202108,MCHE 2990,Engineered Systems in Society,3
202108,MCHE 4910,Capstone Design I,2
202108,MCHE 6500,Advanced Thermal Fluid Systems,3
202108,MCHE 4660,Sustainable Building Design,3
202108,MCHE 6660,Sustainable Building Design,3
202108,MCHE 3310,Engineering Materials,3
202108,MCHE 3450,Mechanical Sciences Lab,2
202108,MCHE 4500,Advanced Thermal Fluid Systems,3
202108,MCHE 3300,Machine Design I,3
202108,MCHE 6390,Advanced Mechanical Vibrations,3
202108,MCHE 4960R,Undergraduate Research I,1
202108,MCHE 4960R,Undergraduate Research I,6
202108,MCHE 4900,Spec Topics in Mche,3
202108,MCHE 8970,Combustion Science,3
202108,MCHE 4580,Comp Fluid Dynamics,3
202108,MCHE 6580,Comp Fluid Dynamics,3
202108,MCHE 3410,Numerical Methods in MCHE,3
202108,MGMT 3000,Principles of Management,3
202108,MGMT 4000,Operations Management,3
202108,MGMT 4800,Internship or Cooperative Edu,3
202108,MGMT 4230,Supply Chain Management,3
202108,MGMT 3001,Principles of Management,3
202108,MGMT 5560,International Strategic Mgmt,3
202108,MGMT 5440,Business Ethics,3
202108,MGMT 5820,Human Resource Management,3
202108,MGMT 9610,Structural Equation Modeling,3
202108,MGMT 7130,Des Man Imp Sup Chn,3
202108,MGMT 5980,Lessons in Leadership,3
202108,MGMT 5970,Org Change and Innov Mgmt,3
202108,MGMT 4240,Quality Management,3
202108,MGMT 5220,Project Management,3
202108,MGMT 8990,Directed Study,6
202108,MGMT 8990,Directed Study,3
202108,MGMT 3000H,Principles of Management Honor,3
202108,MGMT 5830,Recruitment and Selection,3
202108,MGMT 7160,Lean Six Sigma,3
202108,MGMT 7830,Recruitment and Selection,3
202108,MGMT 7011,Lead Evolving Org,3
202108,MGMT 4260,Service Operations Management,3
202108,MGMT 5920E,Organizational Behavior,3
202108,MGMT 5920S,Organizational Behavior,3
202108,MGMT 7570,Global Strategic Management,3
202108,MGMT 7440,Bus and Corp Strategy,3
202108,MGMT 9300,Doct Dissertation,6
202108,MGMT 7990,Directed Study,3
202108,MGMT 7120,Operations Mgmt II,3
202108,MGMT 4280,Supply Chain Analytics,3
202108,MGMT 5850,Performance Mgmt and Comp,3
202108,MGMT 7850,Performance Mgmt and Comp,3
202108,MGMT 9840,Job Attitudes,1.5
202108,MGMT 9510,Strat Mgmt Sem III,1.5
202108,MGMT 9010,Mgt Resch Methodlgy,3
202108,MGMT 9000,Doctoral Research,6
202108,MGMT 9005,Doc Grad Stu Sem,3
202108,MGMT 9850,Job Affect,1.5
202108,MGMT 9420,Strat Mgmt Sem II,1.5
202108,MGMT 7050,Org Behavior,3
202108,MIBO 3900,Directed Study,1
202108,MIBO 6090,Prokaryotic Biology,4
202108,MIBO 6650,Introduction to Virology,3
202108,MIBO 4650,Introduction to Virology,3
202108,MIBO 4010,Rev Research Micro,2
202108,MIBO 7000,Master-s Research,15
202108,MIBO 9000,Doctoral Research,18
202108,MIBO 9300,Doct Dissertation,9
202108,MIBO 4100,Immunology,4
202108,MIBO 6100,Immunology,4
202108,MIBO 2500,Microbiology and Health Care,3
202108,MIBO 2500L,Microbiology Health Care Lab,1
202108,MIBO 3500,Introductory Microbiology,3
202108,MIBO 4090,Prokaryotic Biology,4
202108,MIBO 8160,Seminar Micro,3
202108,MIBO 8170,Seminar Prokaryotic Diversity,1
202108,MIBO 8610,Microbial Diversity,3
202108,MIBO 8900,Research Techniques,6
202108,MIBO 4030,Food Microbiology,4
202108,MIBO 6030,Food Microbiology,4
202108,MIBO 4030L,Food Microbiology Lab,0
202108,MIBO 6030L,Food Microbiology Lab,0
202108,MIBO 4320,Food Safety Control Programs,3
202108,MIBO 6320,Food Safety Control Programs,3
202108,MIBO 4320L,Food Safety Control Prog Lab,0
202108,MIBO 6320L,Food Safety Control Prog Lab,0
202108,MIBO 6010,Rev Research Micro,2
202108,MIBO 3510L,Introductory Microbiology Lab,3
202108,MIBO 3900,Directed Study,3
202108,MIBO 4120,Food Fermentations,3
202108,MIBO 6120,Food Fermentations,3
202108,MIBO 4120L,Food Fermentations Lab,0
202108,MIBO 6120L,Food Fermentations Lab,0
202108,MIBO 4610,Soil Microbiology,3
202108,MIBO 6610,Soil Microbiology,3
202108,MIBO 4610L,Soil Microbio Lab,0
202108,MIBO 6610L,Soil Microbio Lab,0
202108,MIBO 4110,Plant Microbe Interactions,3
202108,MIBO 4600L,Experimental Microbiology Lab,4
202108,MIBO 6600L,Experimental Microbiology Lab,4
202108,MIBO 7300,Master-s Thesis,9
202108,MIBO 4960R,Undergraduate Research I,3
202108,MIBO 4960R,Undergraduate Research I,4
202108,MIBO 4970R,Undergraduate Research II,4
202108,MIBO 4980R,Undergraduate Research III,3
202108,MIBO 8700,Topics in Microbiol,2
202108,MIBO 3500L,Intro Microbiology Lab I,1
202108,MIBO 4300,Genome Editing,3
202108,MIBO 6300,Genome Editing,3
202108,MIBO 4100D,Immunology Discussion Group,0
202108,MIBO 6100D,Immunology Discussion Group,0
202108,MIBO 4980R,Undergraduate Research III,4
202108,MIBO 3500H,Introductory Micro Honors,3
202108,MILS 1010,Intro to Army I,2
202108,MILS 2010,Adv Mil Skills I,2
202108,MILS 5010,Directed Studies I,3
202108,MILS 1010L,Intro to Army Lab,1
202108,MILS 2010L,Adv Mil Skills Lab,1
202108,MILS 3010,App Leader Mgmt I,3
202108,MILS 3010L,App Leader Mgmt Lab,1
202108,MILS 4010,Leader Mgmt I,3
202108,MILS 4010L,Leader Mgmt I Lab,1
202108,MIST 4600,Computer Programming Business,3
202108,MIST 4610,Data Management and Analytics,3
202108,MIST 4630,Secure Cloud Development,3
202108,MIST 5620,Business Intelligence,3
202108,MIST 5750,Business Process Management,3
202108,MIST 9770,Research Methods,3
202108,MIST 2090,Intro to Info Systems Business,3
202108,MIST 5990,Directed Study,3
202108,MIST 8990,Directed Study,6
202108,MIST 4800,MIS Internship or Co-op Ed,3
202108,MIST 7500E,Digital Business Technology,3
202108,MIST 7510E,Database Management,3
202108,MIST 7540E,User Experience Strategy,3
202108,MIST 7590E,Technology Capstone Project,3
202108,MIST 9700,MIS Research I,3
202108,MIST 5770,Information Security Mgmt,3
202108,MIST 4620S,Systems Analysis and Design,3
202108,MIST 5740S,Project Management,3
202108,MIST 5670,Information Systems Leadership,3
202108,MIST 6360,Intro to Business Analytics,1.5
202108,MIST 7770,Bus Intelligence and Analytics,3
202108,MIST 7600,Data Management and Analytics,3
202108,MIST 9777,Big Data Research,3
202108,MIST 5775,Cyber Threat Intelligence,3
202108,MIST 7775,Cyber Threat Intelligence,3
202108,MIST 7990,Directed Study,3
202108,MIST 9300,Doct Dissertation,12
202108,MIST 9000,Doctoral Research,6
202108,MIST 4550,Energy Informatics,3
202108,MIST 6550,Energy Informatics,3
202108,MIST 5730,Adv Data Mgmt and Analytics,3
202108,MIST 5785,Applied Information Security,3
202108,MIST 4700,Financial Technologies,3
202108,MIST 4803,Internship in FinTech,3
202108,MIST 9300,Doct Dissertation,9
202108,MIST 4801,Internship in Data Analytics,3
202108,MIST 4000,Data Literacy in Business,3
202108,MIST 5600,Special Topics in MIS,3
202108,MIST 5640,IT Infrastructure,3
202108,MIST 8990,Directed Study,1.5
202108,MIST 4802,Internship Information Secur,3
202108,MNML 7055,Internship in Nonprofit Org,6
202108,MNML 7237,Theory and Mgmt Nonprof Orgs,3
202108,MNML 7226E,Evaluation Professional Pract,3
202108,MNML 7445E,Nonprofit Financial Management,3
202108,MNML 5226E,Evaluation Professional Pract,3
202108,MNML 5237,Theory and Mgmt Nonprof Orgs,3
202108,MNML 7060E,Fundrais Develop Nonprof Org,3
202108,MNML 7237E,Theory and Mgmt Nonprof Orgs,3
202108,MNML 7957,Grant Prop Writing Nonprof Org,3
202108,MNML 5957,Grant Prop Writing Nonprof Org,3
202108,MNML 7005,Graduate Student Seminar,3
202108,MNML 7020,Dir Study NP Mgmt Leadership,3
202108,MNML 7445,Nonprofit Financial Management,3
202108,MNML 7320,Managing Volunteers,3
202108,MNML 7320E,Managing Volunteers,3
202108,MNML 5320E,Managing Volunteers,3
202108,MNML 7060,Fundrais Develop Nonprof Org,3
202108,MNML 5237E,Theory and Mgmt Nonprof Orgs,3
202108,MUSI 1100,Music Theory I,2
202108,MUSI 1700,Applied Music for Non Major,1
202108,MUSI 1810,Freshman Applied Instruction,2
202108,MUSI 1110,Aural Skills I,2
202108,MUSI 2020,Introduction to Music,3
202108,MUSI 2021,Music Therapy Practicum I,1
202108,MUSI 2040,History of Popular Music,3
202108,MUSI 2060,History Analysis Rock Music,3
202108,MUSI 2100,Music Theory III,2
202108,MUSI 4023,Music Therapy Internship,6
202108,MUSI 2960,Afr Am Perc Mus,3
202108,MUSI 2812,Introduction to Composition,2
202108,MUSI 3812,Junior Comp Instruction,2
202108,MUSI 3822,Applied Composition Instruct,3
202108,MUSI 4812,Senior Comp Instruction,2
202108,MUSI 4822,Senior Comp Inst and Recital,2
202108,MUSI 2810,Sophomore Applied Instruction,2
202108,MUSI 2820,Soph App Instruct and Recital,2
202108,MUSI 3500,Band Conducting,2
202108,MUSI 4910,Chamber Orchestra,1
202108,MUSI 6910,Chamber Orchestra,1
202108,MUSI 3490,Choral Conducting,2
202108,MUSI 7920,Conducting Project,3
202108,MUSI 3020,World Mus: West Hem,3
202108,MUSI 3210,Music History I,3
202108,MUSI 7005,Grad Student Sem,3
202108,MUSI 9005,Grad Student Sem,3
202108,MUSI 6835,Marching Band,1
202108,MUSI 4835,Marching Band,1
202108,MUSI 7540,Dir Observ Pno Ped,2
202108,MUSI 4060,Music in the Real World,1
202108,MUSI 4000,Directed Independent Study,6
202108,MUSI 8110,Cont Trends Theor I,3
202108,MUSI 6170,Dissolution of Tonality,3
202108,MUSI 4130,Electroacoustic Composition,3
202108,MUSI 6130,Electroacoustic Composition,3
202108,MUSI 3400,Guitar Class,1
202108,MUSI 3520,Accompanying,1
202108,MUSI 3401,Guitar Skills Thera,1
202108,MUSI 5420,Inf Mus Behav,3
202108,MUSI 4788,Jazz Private Applied,2
202108,MUSI 6788,Jazz Private Applied,2
202108,MUSI 5106,Jazz Combos,1
202108,MUSI 7106,Jazz Combos,1
202108,MUSI 3470,Keyboard Musicianship,1
202108,MUSI 3025,Music Therapy Practicum III,1
202108,MUSI 3026,Music Therapy Practicum IV,1
202108,MUSI 4020,Music Therapy Practicum V,1
202108,MUSI 4021,Music Therapy Practicum VI,1
202108,MUSI 3550,Mus Theory Non-Maj,3
202108,MUSI 3810,Junior Applied Instruction,2
202108,MUSI 3820,Junior App Inst and Recital,2
202108,MUSI 4810,Senior Applied Instruction,2
202108,MUSI 6855,Opera Theater,1
202108,MUSI 4855,Opera Theater,1
202108,MUSI 3510,Orchestraconducting,2
202108,MUSI 2500,Piano Class I,1
202108,MUSI 2520,Piano Class III,1
202108,MUSI 2540,Piano Class V,1
202108,MUSI 5400,Princ Mus Ther,3
202108,MUSI 2400,Voice Class I,1
202108,MUSI 4840,Wind Ensemble,1
202108,MUSI 6840,Wind Ensemble,1
202108,MUSI 4839,Wind Symphony,1
202108,MUSI 6839,Wind Symphony,1
202108,MUSI 4820,Senior App Inst and Recital,2
202108,MUSI 3700,Applied Music for Non Major,1
202108,MUSI 7810,App Mus Inst,3
202108,MUSI 8810,App Mus Inst,3
202108,MUSI 3800,App Music Instruction Minors,1
202108,MUSI 7910,Masters Recital,3
202108,MUSI 9300,Doctoral Dissertation,18
202108,MUSI 4000,Directed Independent Study,2
202108,MUSI 8010,Dir Ind Study,3
202108,MUSI 8910,Doctoral Recital,3
202108,MUSI 9000,Doctoral Research,18
202108,MUSI 6000,Dir Ind Study,3
202108,MUSI 6280,Instrumental Vocal Choral Lit,2
202108,MUSI 7000,Master-s Research,18
202108,MUSI 8920,Doc Cond Proj,3
202108,MUSI 7510,Vocal Ped II,2
202108,MUSI 7300,Master-s Thesis,18
202108,MUSI 8000,Practicum in Music,10
202108,MUSI 2022,Music Therapy Practicum II,1
202108,MUSI 4461,English Diction,1
202108,MUSI 6461,English Diction,1
202108,MUSI 8070,Mus Ed Problems,3
202108,MUSI 4000,Directed Independent Study,1
202108,MUSI 6300,Bibliography,3
202108,MUSI 4530,Instru Tech and Field Exper,3
202108,MUSI 4360,Woodwind Instrumental Tech,1
202108,MUSI 4370,Brass Instrumental Techniques,1
202108,MUSI 4380,Music Educators Percussion,1
202108,MUSI 7520,Piano Pedagogy I,2
202108,MUSI 4520,Choral Techniques Field Exper,3
202108,MUSI 4140,Tonal Counterpoint,3
202108,MUSI 6140,Tonal Counterpoint,3
202108,MUSI 6520,Choral Techniques Field Exper,3
202108,MUSI 6530,Instru Tech and Field Exper,3
202108,MUSI 6370,Brass Instrumental Techniques,1
202108,MUSI 6380,Music Educators Percussion,1
202108,MUSI 3830,String Pedagogy,2
202108,MUSI 6360,Woodwind Instrumental Tech,1
202108,MUSI 4990,Undergraduate Theory Thesis,3
202108,MUSI 8010,Dir Ind Study,1
202108,MUSI 2000,Guitar for Beginners,1
202108,MUSI 8310,Sp Topics Musicol,3
202108,MUSI 3441,Jazz Pedagogy,1
202108,MUSI 4010,Intro to Music Technology,2
202108,MUSI 4080,Music Recording Practicum,1
202108,MUSI 6080,Music Recording Practicum,1
202108,MUSI 2110,Aural Skills III,2
202108,MUSI 4845,Orch Perc Timpani Repertoire,1
202108,MUSI 6845,Orch Perc Timpani Repertoire,1
202108,MUSI 4000,Directed Independent Study,3
202108,MUSI 4030,Reed Making Seminar,1
202108,MUSI 6030,Reed Making Seminar,1
202108,MUSI 6740,University Symphony Orchestra,1
202108,MUSI 4740,University Symphony Orchestra,1
202108,MUSI 6760,UGA Hodgson Singers,1
202108,MUSI 4760,UGA Hodgson Singers,1
202108,MUSI 6850,Opera Ensemble,1
202108,MUSI 4850,Opera Ensemble,1
202108,MUSI 4710,Women-s Glee Club,1
202108,MUSI 4700,Men-s Glee Club,1
202108,MUSI 6790,Chamber Music Ensemble,1
202108,MUSI 4790,Chamber Music Ensemble,1
202108,MUSI 4786,Jazz Improvisation II,1
202108,MUSI 6784,Jazz Improvisation I,1
202108,MUSI 4784,Jazz Improvisation I,1
202108,MUSI 6785,Jazz Ensemble II,1
202108,MUSI 4785,Jazz Ensemble II,1
202108,MUSI 6781,Jazz Ensemble I,1
202108,MUSI 4781,Jazz Ensemble I,1
202108,MUSI 7010,Advanced Steel Drum Band,1
202108,MUSI 5010,Advanced Steel Drum Band,1
202108,MUSI 3831,Instrumental Pedagogy,2
202108,MUSI 6786,Jazz Improvisation II,1
202108,MUSI 7580S,Internship in Music Teaching,3
202108,MUSI 4090,Vocal Diction Methods,1
202108,MUSI 6090,Vocal Diction Methods,1
202108,MUSI 6000,Dir Ind Study,1
202108,MUSI 4755,Guitar Ensemble,1
202108,MUSI 6755,Guitar Ensemble,1
202108,MUSI 7910,Masters Recital,2
202108,MUSI 4280,Instrumental Vocal Choral Lit,2
202108,MUSI 3450S,Vocal Pedagogy,2
202108,MUSI 4110,Modal Counterpoint,3
202108,MUSI 6110,Modal Counterpoint,3
202108,MUSI 4783,Jazz History,3
202108,MUSI 4350,String Instrumental Techniques,1
202108,MUSI 6350,String Instrumental Techniques,1
202108,MUSI 4120,Form and Analysis,3
202108,MUSI 6120,Form and Analysis,3
202108,MUSI 7500S,Vocal Pedagogy,2
202108,MUSI 3900,App Instruction Mus Theatre,2
202108,MUSI 6320,Women and Music,3
202108,MUSI 7550,Final Proj Pno Ped,2
202108,MUSI 4260,History of Opera,3
202108,MUSI 6260,History of Opera,3
202108,MUSI 4240,Modern Music,3
202108,MUSI 6240,Modern Music,3
202108,MUSI 4270,Topics Mus Cultures,3
202108,MUSI 4310,Gender and Music Video,3
202108,MUSI 6310,Gender and Music Video,3
202108,MUSI 6270,Topics Mus Cultures,3
202108,MUSI 4795,Viola Orchestral Excerpts,1
202108,MUSI 6795,Viola Orchestral Excerpts,1
202108,MUSI 7360,Trends Issues Music Therapy,2
202108,MUSI 4600,Suzuki Violin and Viola Ped I,3
202108,MUSI 6600,Suzuki Violin and Viola Ped I,3
202108,MUSI 6831,Woodwind Pedagogy,2
202108,MUSI 7700S,Community Engagement Perform,1
202108,MUSI 4180,Special Topics Comp Music Tech,3
202108,MUSI 6180,Special Topics Comp Music Tech,3
202108,MUSI 7560S,Vocal Ped III,4
202108,MUSI 3240,Instrumentation and Arranging,1
202108,MUSI 8930,Doctoral Minor Research Proj,3
202108,MUSI 4463,French Lyric Diction,1
202108,MUSI 4838,Symphonic Band,1
202108,MUSI 6463,French Lyric Diction,1
202108,MUSI 6838,Symphonic Band,1
202108,MUSI 4730,African American Choral Ensem,1
202108,MUSI 6730,African American Choral Ensem,1
202108,MUSI 5200,Repertory Singers,1
202108,MUSI 7200,Repertory Singers,1
202108,MUSI 4750,University Chorus,1
202108,MUSI 6750,University Chorus,1
202108,MUSI 4830,Collegium Musicum,1
202108,MUSI 6830,Collegium Musicum,1
202108,MUSI 4900,British Brass Band,1
202108,MUSI 6900,British Brass Band,1
202108,MUSI 4735,Univ Philharmonia,1
202108,MUSI 6735,Univ Philharmonia,1
202108,MUSI 8150,Music Theory Pedagogy,3
202108,MUSI 4190,Special Topics Music Theory,3
202108,MUSI 6190,Special Topics Music Theory,3
202108,MUSI 7900,Piano Accompanying,2
202108,MUSI 4620,Suzuki Violin Pedagogy III,3
202108,MUSI 6620,Suzuki Violin Pedagogy III,3
202108,MUSI 6783,Jazz History,3
202108,MUSI 4250,Women and Music,3
202108,MUSI 6250,Women and Music,3
202108,MUSI 6290,Mus Hist Problems,3
202108,MUSI 6000,Dir Ind Study,2
202108,MUSI 4220,Music in Class Per,3
202108,MUSI 6220,Music in Class Per,3
202108,MUSI 4035,Technician’s Guide for Piano,2
202108,MUSI 6035,Technician’s Guide for Piano,2
202108,MUSI 4650,Media Composition Production I,3
202108,MUSI 6650,Media Composition Production I,3
202108,MUSI 5250,UGA Choral Project,1
202108,MUSI 7250,UGA Choral Project,1
202108,MUSI 5580S,Internship in Music Teaching,3
202108,MUSI 5610,Media Composition Instruction,2
202108,MUSI 7610,Media Composition Instruction,2
202108,MUSI 2460,Non-Major Voice,1
202108,MUSI 7530,Piano Pedagogy II,2
202108,MUSI 4800,Cont Chamber Ensemble,1
202108,MUSI 6800,Cont Chamber Ensemble,1
202108,MUSI 3030,Vernacular Music in US,3
202108,NAEX 1001,National Student Exchange,20
202108,NAMS 6315,Archaeolog of Georg,3
202108,NAMS 1100,Intro Native Americ,3
202108,NAMS 6310,Arch East N Amer,3
202108,NAMS 2004,Native American Rel,3
202108,NAMS 6710,Dir Study NAMS,3
202108,NAMS 4710,Dir Study NAMS,3
202108,NAMS 4705,Topics in NAMS,3
202108,NAMS 6705,Topics in NAMS,3
202108,NMIX 2020,Intro New Media,3
202108,NMIX 4110,New Media Production,3
202108,NMIX 4310,Rich Media Production,3
202108,NMIX 4490,New Media Directed Study,3
202108,NMIX 4510,New Media Capstone,3
202108,NMIX 6490,New Media Directed Study,3
202108,NMIX 6510,New Media Capstone,3
202108,NMIX 5010,Nmix Internship,3
202108,NMIX 4200,New Media Topics,3
202108,NMIX 6110,New Media Production,3
202108,NMIX 6310,Rich Media Production,3
202108,NMIX 5110,Advanced New Media Production,3
202108,NMIX 7110,Advanced New Media Production,3
202108,NMIX 7005,Graduate Student Seminar,3
202108,NMIX 7110E,Advanced New Media Production,3
202108,NMIX 5110E,Advanced New Media Production,3
202108,NMIX 4310E,Rich Media Production,3
202108,NMIX 6310E,Rich Media Production,3
202108,NMIX 7005E,Graduate Student Seminar,3
202108,NMIX 6200,New Media Topics,3
202108,NMIX 6490E,New Media Directed Study,3
202108,PADP 6980,Socialization Sem in Pub Admin,1
202108,PADP 7005,Grad Student Sem,3
202108,PADP 7350,Intern in Govt,6
202108,PADP 9000,Doctoral Research,9
202108,PADP 9005,Doc Grad Stu Sem,3
202108,PADP 9300,Doctoral Dissertation,9
202108,PADP 6990,Capstone Paper,1
202108,PADP 9200,Indp Study PA,3
202108,PADP 4640,Intro to the Nonprofit Sector,3
202108,PADP 7000,Masters Research,6
202108,PADP 4660,Program Evaluation,3
202108,PADP 7200,Indp Study Pa,3
202108,PADP 3100,Intro to Policy Analysis,3
202108,PADP 3000,Introduction to Public Admin,3
202108,PADP 4200,Selected Topics in PADP,3
202108,PADP 4650,Policy Process,3
202108,PADP 6910,Pub Admin-democracy,3
202108,PADP 6930,Public Fin Admin,3
202108,PADP 8670,Policy Analysis I,3
202108,PADP 6950,Economic Found Policy Analysis,3
202108,PADP 8120,Data Anlsys and Stat,3
202108,PADP 8940,Intl and Comparative Admin,3
202108,PADP 8110,Logic of Social Inq,3
202108,PADP 7110,Rsch Mthds Pub Admn,3
202108,PADP 8630,Policy Implement,3
202108,PADP 8140,Adv Topic Stat Mod,3
202108,PADP 6920,Public Person Admin,3
202108,PADP 7120,Data App Pub Adm,3
202108,PADP 7210,Intro to Nonprofit,3
202108,PADP 8420,Leadership Pub Serv,3
202108,PADP 6960,Public Management,3
202108,PADP 8830,Public Budgeting,3
202108,PADP 8620,Policy Process,3
202108,PADP 8640,Program Evaluation,3
202108,PADP 7900,Managing Volunteers,3
202108,PADP 7150,Policy Capstone,3
202108,PADP 8430,Pub Fin Management,3
202108,PADP 8610,Econ Health Policy,3
202108,PADP 7920,EEO and Diversity,3
202108,PADP 8810,State and Local Taxation,3
202108,PASH 1001,Element Pashto I,4
202108,PATH 2010,Plants Pathogens and People,3
202108,PATH 3530,Intro Plant Path,3
202108,PATH 3530L,Intro Plt Path Lab,0
202108,PATH 4740,Integrated Pest Management,3
202108,PATH 6740,Integrated Pest Management,3
202108,PATH 4200,Mycology,4
202108,PATH 6200,Mycology,4
202108,PATH 4200L,Mycology Lab,0
202108,PATH 6200L,Mycology Lab,0
202108,PATH 6280,Diag and Mgmt of Plant Disease,4
202108,PATH 6280L,Diag Mgmt of Plant Disease Lab,0
202108,PATH 8000,Field Plant Path,1
202108,PATH 8150,Graduate Seminar,1
202108,PATH 4150,Undergrad Seminar,1
202108,PATH 6130,Crop Protection,1
202108,PATH 3910,Pl Path Internship,3
202108,PATH 3990,Special Probs Pat,3
202108,PATH 7000,Master-s Research,18
202108,PATH 7300,Master-s Thesis,9
202108,PATH 8160,Special Top Pl Path,3
202108,PATH 9000,Doctoral Research,18
202108,PATH 9300,Doct Dissertation,9
202108,PATH 8170,Plant Path Grad Colloquium,1
202108,PATH 4960,Undergrad Research Plant Path,3
202108,PATH 4125,Organic Agricultural Systems,4
202108,PATH 6125,Organic Agricultural Systems,4
202108,PATH 4360,Ornamental Pest Management,3
202108,PATH 6360,Ornamental Pest Management,3
202108,PATH 8180,Plant Path Career Development,1
202108,PATH 8110,Plant Epidemiology Seminar,1
202108,PATH 8330,Pop Genetics Plant Assoc Micro,3
202108,PATH 8190,MPMI Seminar,1
202108,PATH 8350,Plant Virology,3
202108,PATH 4960R,Undergraduate Research I,6
202108,PBGG 4140,Plant Breeding,3
202108,PBGG 6140,Plant Breeding,3
202108,PBGG 7000,Master-s Research,18
202108,PBGG 7300,Master-s Thesis,9
202108,PBGG 9300,Doct Dissertation,9
202108,PBGG 9000,Doctoral Research,18
202108,PBGG 8140,Adv Plant Breeding,3
202108,PBGG 8900,Pbgg Emerging Topic,3
202108,PBGG 9990,Teach Practicum,3
202108,PBGG 8010,Research Methods Crops,3
202108,PBGG 8860,Pbgg Comm Seminar,1
202108,PBGG 8861,PBGG Research Seminar,1
202108,PBGG 4960R,Undergraduate Research I,6
202108,PBGG 4970R,Undergraduate Research II,6
202108,PBGG 4980R,Undergraduate Research III,6
202108,PBGG 4990R,Undergraduate Thesis,6
202108,PBGG 4960,Research Experience in PBGG,12
202108,PBGG 8873,Transgenic Breedg,1
202108,PBGG 8872,Qtl Analysis,1
202108,PBHL 3100,Introduction to Public Health,3
202108,PBHL 8950,Success Strategies,1
202108,PBHL 8000,Dir Study Publ Hlth,6
202108,PBHL 8910,Problems in Ph,6
202108,PBHL 9000,Doctoral Research,12
202108,PBHL 9300,Doct Dissertation,12
202108,PBHL 9560,Residency PBHL,3
202108,PBHL 7800,Capstone Publ Hlth,3
202108,PBHL 7560,App Pract Integrative Exp PH,2
202108,PBHL 9560,Residency PBHL,6
202108,PBHL 7005,Grad Student Sem,3
202108,PBHL 9005,Doc Grad Stu Sem,3
202108,PBHL 3100E,Introduction to Public Health,3
202108,PBHL 8900,Topics in PBHL,3
202108,PBHL 7460,Professionalism in Pub Health,1
202108,PBHL 3200E,Pandemic Policy,3
202108,PBHL 7200E,Pandemic Policy,3
202108,PBHL 7560,App Pract Integrative Exp PH,6
202108,PBIO 3440,Herbs Spices Medicinal Plants,3
202108,PBIO 1210,Principles of Plant Biology,3
202108,PBIO 7005,Grad Student Sem,3
202108,PBIO 7300,Master-s Thesis,18
202108,PBIO 1210L,Principles Plant Biology Lab,1
202108,PBIO 3900,Readings in Plant Biology,3
202108,PBIO 3900H,Readings in Plant Biology Hon,3
202108,PBIO 4261,Museum Natural History Intern,3
202108,PBIO 4500,Intro to Gene Technology,3
202108,PBIO 6500,Intro to Gene Technology,3
202108,PBIO 4960,Indepen Research Plant Biology,4
202108,PBIO 7360,Teaching Intern Biol Sciences,2
202108,PBIO 7500,Mentoring,2
202108,PBIO 7510,Teaching Project,3
202108,PBIO 8100,Plant Genetics,4
202108,PBIO 8830,Plant Biol Seminar,1
202108,PBIO 8970,Current Topics in Research,2
202108,PBIO 8980,Special Topics Plant Biology,2
202108,PBIO 9000,Doctoral Research,18
202108,PBIO 9005,Doc Grad Stu Sem,3
202108,PBIO 9300,Doctoral Dissertation,18
202108,PBIO 4200,Mycology,4
202108,PBIO 6200,Mycology,4
202108,PBIO 4200L,Mycology Lab,0
202108,PBIO 6200L,Mycology Lab,0
202108,PBIO 2500E,Natural History of GA Plants,3
202108,PBIO 3650,Plant Ecology,4
202108,PBIO 3650L,Plant Ecology Lab,0
202108,PBIO 7000,Master-s Research,18
202108,PBIO 3660L,Plant Biology Intensive Lab,4
202108,PBIO 4520,Plant Animal Interactions,3
202108,PBIO 6520,Plant Animal Interactions,3
202108,PBIO 8840,Plant Ecology Seminar,2
202108,PBIO 4550,Bioinformatics and Omics,3
202108,PBIO 6550,Bioinformatics and Omics,3
202108,PBIO 4960R,Undergraduate Research I,6
202108,PBIO 4970R,Undergraduate Research II,6
202108,PBIO 4980R,Undergraduate Research III,6
202108,PBIO 4990R,Undergraduate Thesis,6
202108,PBIO 8872,Qtl Analysis,1
202108,PBIO 8920,Explaining Your Science,3
202108,PBIO 8820,Plant Genetics Molecular Biol,2
202108,PBIO 8890,Plant Reprod and Physiol Ecol,4
202108,PBIO 8890D,Plant Reprod Physiol Ecol Dis,0
202108,PBIO 4950,Capstone Skills in Plant Bio,1
202108,PEDB 1010,Adapted PE,1
202108,PEDB 1020,Beg Badminton,1
202108,PEDB 1070,Challenge Course,1
202108,PEDB 1100,Beg Bkpkg-Hiking,1
202108,PEDB 1120,Beg Golf,1
202108,PEDB 1130,Intermediate Golf,1
202108,PEDB 1140,Advanced Golf,1
202108,PEDB 1260,Softball,1
202108,PEDB 1270,Soccer,1
202108,PEDB 1280,Ultimate,1
202108,PEDB 1350,Beg Tennis,1
202108,PEDB 1360,Inter Tennis,1
202108,PEDB 1380,Beg Volleyball,1
202108,PEDB 1390,Inter Volleyball,1
202108,PEDB 1400,Intro to Wt Train,1
202108,PEDB 1900,Fitness for Life Group Fitness,1
202108,PEDB 1910,FFL Indoor Cycling,1
202108,PEDB 1920,FFL Body Condition,1
202108,PEDB 1930,Fitness for Life Jogging,1
202108,PEDB 1950,FFL Walking,1
202108,PEDB 1950E,FFL Walking,1
202108,PEDB 1990,Directed Study,1
202108,PEDB 1930E,FFL Jogging,1
202108,PEDB 1090,Outdoor Adventure,1
202108,PEDB 1331,Beg Scuba,1
202108,PEDB 1080,Beg Bowling,1
202108,PEDB 1040,Beg Basketball,1
202108,PEDB 1150,Self Defense,1
202108,PEDB 1230,Beg Racquetball,1
202108,PEDB 1240,Inter Racquetball,1
202108,PEDB 1300,Beg Swimming,1
202108,PEDB 1310,Inter Swimming,1
202108,PEDB 1940,FFL Swimming,1
202108,PERS 2003,Intermed Persian I,3
202108,PERS 1001,Element Persian I,4
202108,PERS 1051,Element Tajiki I,4
202108,PHAR 6950E,Masters Seminar Regulatory Aff,6
202108,PHAR 6010E,Phr Biotec Dev Ind,4
202108,PHAR 6320E,Role Function Fda,3
202108,PHAR 6030E,Curr Good Manf Prac,4
202108,PHAR 6120E,Process Control and Validation,3
202108,PHAR 6800,App Proj Reg Aff,3
202108,PHAR 6950E,Masters Seminar Regulatory Aff,3
202108,PHAR 6900,Internship Reg Affs,3
202108,PHAR 6020E,Food and Drug Law,3
202108,PHAR 6340E,EU Biomedical Regulatory Scien,3
202108,PHAR 4010E,Drugs Biologics Devices FDA,3
202108,PHAR 6950E,Masters Seminar Regulatory Aff,5
202108,PHAR 6140E,Drug Safety Pharmacovigilance,4
202108,PHIL 2010H,Introduction to Philosophy Hon,3
202108,PHIL 2030H,Introduction to Ethics Honors,3
202108,PHIL 3000,Ancient Western Philosophy,3
202108,PHIL 9300,Doct Dissertation,12
202108,PHIL 9000,Doctoral Research,12
202108,PHIL 2010,Introduction to Philosophy,3
202108,PHIL 3020,19th-Cent Western Philosophy,3
202108,PHIL 2020,Logic and Critical Thinking,3
202108,PHIL 2030,Introduction to Ethics,3
202108,PHIL 2500,Symbolic Logic,3
202108,PHIL 2020H,Logic and Critical Thinking H,3
202108,PHIL 3040,Asian Philosophies,3
202108,PHIL 3550,Intro to Cognitive Science,3
202108,PHIL 4090,Contemp Continental Tradition,3
202108,PHIL 6090,Contemp Continental Tradition,3
202108,PHIL 4550,Artif Intelligence,3
202108,PHIL 6550,Artif Intelligence,3
202108,PHIL 7000,Master-s Research,12
202108,PHIL 3230,Ethics of Food,3
202108,PHIL 3400,Philosophical Psychology,3
202108,PHIL 4520,Model Theory,3
202108,PHIL 6520,Model Theory,3
202108,PHIL 8000,Sem-Anct and Med Phil,3
202108,PHIL 8300,Sem Phil of Lang,3
202108,PHIL 4310,Philosophy of Mind,3
202108,PHIL 6310,Philosophy of Mind,3
202108,PHIL 4220,Environ Ethics,3
202108,PHIL 6220,Environ Ethics,3
202108,PHIL 3010,Modern Western Philosophy,3
202108,PHIL 8010,Sem-Mod and Cont Phil,3
202108,PHIL 2400,Philosophy Science and Nature,3
202108,PHIL 3210,Feminist Philosophy,3
202108,PHIL 3600,Metaphysics,3
202108,PHIL 3610,Theory of Knowledge,3
202108,PHIL 4000,Plato,3
202108,PHIL 6000,Plato,3
202108,PHIL 4420,Philosophy of Social Science,3
202108,PHIL 6420,Philosophy of Social Science,3
202108,PHIL 4510,Deductive Systems,3
202108,PHIL 6510,Deductive Systems,3
202108,PHIL 8200,Seminar in Ethics,3
202108,PHIL 8210,Sem in Pol Phil,3
202108,PHIL 3220,Biomedical Ethics,3
202108,PHIL 3200,Ethical Theory,3
202108,PHIL 4990R,Undergraduate Thesis,6
202108,PHIL 7010,Teaching Philosophy,1
202108,PHIL 8800,Readings in Phil,3
202108,PHIL 3030,Existentialism,3
202108,PHIL 4210,Social Political Philosophy,3
202108,PHIL 7300,Master-s Thesis,12
202108,PHRM 3940,Survey of Drug Information,1
202108,PHRM 3900,Pharmacy Intercommunications,2
202108,PHRM 4200,Fundamentals Pharmaceutics I,3
202108,PHRM 4180,ID and Antitumor Agents,3
202108,PHRM 9000,Doctoral Research,18
202108,PHRM 9300,Doct Dissertation,15
202108,PHRM 5750,Drug Interact and Adverse Reac,2
202108,PHRM 5190,Anticancer Therapeutics,2
202108,PHRM 5920,Clinical Seminar,1
202108,PHRM 5903,Adv Pharm Practice Exp III,5
202108,PHRM 5904,Adv Pharm Practice Exp IV,5
202108,PHRM 5905,Adv Pharm Practice Exp V,5
202108,PHRM 5906,Adv Pharm Practice Exp VI,5
202108,PHRM 5930,Pharm Care Plans and Prof Dev,1
202108,PHRM 5050,Abused Drugs,3
202108,PHRM 8200,PBS Seminar,1
202108,PHRM 7810,Patient Care,7
202108,PHRM 7820,Residency Seminar,1
202108,PHRM 7830,Residency Research,5
202108,PHRM 7840,Teach Pharm Prac,1
202108,PHRM 7910,Advanced Pt Care,8
202108,PHRM 7920,Adv Res Seminar,1
202108,PHRM 7930,Adv Res Research,5
202108,PHRM 7940,Adv Teach Phrm Prac,1
202108,PHRM 8730,Clin Sem,1
202108,PHRM 5850,Intro to Postgrad Res Training,2
202108,PHRM 5210,Spc Topics Pharmacy,2
202108,PHRM 5100,Nuclear Pharmacy,2
202108,PHRM 5210,Spc Topics Pharmacy,3
202108,PHRM 5980,Undergraduate Research Problem,3
202108,PHRM 5350,Basic Emerg Prepare,3
202108,PHRM 5370,Critical Care Pharmacy,2
202108,PHRM 5130,Beyond Dispensing,2
202108,PHRM 5460,Forensic Pharm,2
202108,PHRM 7000,Master-s Research,3
202108,PHRM 7300,Master-s Thesis,3
202108,PHRM 7300,Master-s Thesis,6
202108,PHRM 7000,Master-s Research,18
202108,PHRM 7300,Master-s Thesis,15
202108,PHRM 5410E,Clin Pharm Topics,1
202108,PHRM 8620,PCA Seminar,1
202108,PHRM 5210,Spc Topics Pharmacy,1
202108,PHRM 5180,Addiction Mgmt,3
202108,PHRM 3310,Principles of Pharmacology I,2
202108,PHRM 3550,Human Pathophysiology,4
202108,PHRM 3300,Pharmaceutical Calculations,2
202108,PHRM 3600,Immunology and Biotechnology,2
202108,PHRM 3540,Nutrition in Pharmacy Practice,2
202108,PHRM 7230E,Ethical Issues in Research,3
202108,PHRM 7300,Master-s Thesis,5
202108,PHRM 7960E,Scholarship Develop,1
202108,PHRM 7870,Pharmacy Resident Enrichment,1
202108,PHRM 7050,Abused Drugs,3
202108,PHRM 4030,Essentials of Pharm Pract III,3
202108,PHRM 4060,Medicinal Chemistry II,2
202108,PHRM 4430,Pharmacology III,3
202108,PHRM 4700,Stat Approach to Drug Lit Eval,2
202108,PHRM 4870,Pharmacotherapy I,3
202108,PHRM 5580,Academic Pharmacy,2
202108,PHRM 8210,Adv Topics PBS,1
202108,PHRM 8600,Signal Transduction,3
202108,PHRM 7870D,Pharmacy Resident Enrichment,0
202108,PHRM 5160,Applied Pharmacy Practice I,2
202108,PHRM 5390,Pharmacogenomic Therapies,2
202108,PHRM 5650,Pharmacy Care Management,2
202108,PHRM 5880,Pharmacotherapy III,4
202108,PHRM 5270E,Intro to Veterinary Pharmacy,3
202108,PHRM 7210E,Spc Topics Pharmacy,3
202108,PHRM 5980,Undergraduate Research Problem,1
202108,PHRM 7230,Ethical Issues in Research,3
202108,PHRM 8700,Adv Ther I,4
202108,PHRM 3030,Essentials of Pharmacy Pract I,3
202108,PHRM 5980,Undergraduate Research Problem,2
202108,PHRM 5908,Adv Pharm Practice Exp VIII,5
202108,PHRM 5909,Adv Pharm Practice Exp IX,5
202108,PHRM 7210,Spc Topics Pharmacy,3
202108,PHRM 7650,Pharmacy Care Management,2
202108,PHRM 8690,Health Outcomes,3
202108,PHRM 8750,Method Experiment Therapeutics,2
202108,PHRM 8640,Res in PCA,3
202108,PHRM 8740,Intro to Cet Resrch,4
202108,PHRM 5040E,Antiviral Chemotherapy,2
202108,PHRM 5380,Pediatric Pharm,2
202108,PHRM 8250,Presentation Skills,1
202108,PHRM 8610,Soc Behv in Pharm,3
202108,PHRM 8670,Economic Eval in Health Care,3
202108,PHRM 8500,Protein Therapeutics,3
202108,PHRM 7800,Lab Rotations I,9
202108,PHRM 8030,Adv Pharmaceut Biopharmaceut,4
202108,PHRM 5220,Health Research Methods,2
202108,PHYS 9000,Doctoral Research,18
202108,PHYS 1010,Physical Science,3
202108,PHYS 1111,Introductory Physics Mechanics,4
202108,PHYS 1112,Intro Physics Electricity,4
202108,PHYS 1211,Prin of Physics for Scie Engr,4
202108,PHYS 1212,Prin of Phys for Scien and Eng,4
202108,PHYS 1312,Adv Introductory Physics II,4
202108,PHYS 1990,Intro Phys Seminar,1
202108,PHYS 3330,Modern Optics,3
202108,PHYS 3330L,Optics Lab,0
202108,PHYS 4101,Mechanics I,3
202108,PHYS 6101,Mechanics I,3
202108,PHYS 4201,Elec and Magnetism I,3
202108,PHYS 6201,Elec and Magnetism I,3
202108,PHYS 8101,Quantum Mechan I,3
202108,PHYS 8201,Adv EM Theory,3
202108,PHYS 8301,Statistical Mechanics I,3
202108,PHYS 8605,Simulations Seminar,1
202108,PHYS 8990,Intro to Research,4
202108,PHYS 1111L,Intro Physics Mechanics Lab,0
202108,PHYS 1211L,Prin Physics for Scie Engr Lab,0
202108,PHYS 1112L,Intro Physics Electricity Lab,0
202108,PHYS 1212L,Prin of Phys for Scien Eng Lab,0
202108,PHYS 1312L,Adv Introductory Physic II Lab,0
202108,PHYS 4000,Physics Seminar,1
202108,PHYS 6000,Physics Seminar,1
202108,PHYS 4702,Intro Quant Mech II,3
202108,PHYS 6702,Intro Quant Mech II,3
202108,PHYS 1251,Intro Studio Phys for Engr I,3
202108,PHYS 1252,Intro Studio Phys for Engr II,3
202108,PHYS 4900,Special Topics,3
202108,PHYS 6900,Special Topics,3
202108,PHYS 7000,Master-s Research,12
202108,PHYS 4960R,Undergraduate Research I,6
202108,PHYS 9300,Doctoral Dissertation,9
202108,PHYS 4510,Intro MRI Phys,3
202108,PHYS 6510,Intro MRI Phys,3
202108,PHYS 8171,Scattering Theory I,3
202108,PHYS 8401,Math Physics I,3
202108,PHYS 8950,Curr Phys Topics,2
202108,PHYS 4970R,Undergraduate Research II,6
202108,PHYS 8900,Advanced Topics,3
202108,PHYS 3990,Directed Study,3
202108,PHYS 4960R,Undergraduate Research I,2
202108,PHYS 8500,Mri Physics Appl,3
202108,PLAN 7300,Master-s Thesis,12
202108,PLAN 7200,Environ Plan and Des Practicum,12
202108,PLAN 6124,Ethics Pro Practice,3
202108,PLAN 6910,Special Studies,6
202108,PLAN 6911,Special Studies,6
202108,PLAN 6912,Special Studies,6
202108,PLAN 6200,Env Plan Law,3
202108,PLAN 6560,Urban Plan Design Studio III,4
202108,PLAN 8910,Special Studies,6
202108,PLAN 6210,Representation in Planning,3
202108,PLAN 8430,Urban Infrastructure,3
202108,PLAN 6520,Urban Plan and Design Studio I,5
202108,PMCY 3000,Human Physiology,4
202108,PMCY 5050,Abused Drugs,3
202108,PMCY 4200,Pharmkinetics & Pharmdynamics,3
202108,PMCY 4500,Pharm Drug Development,3
202108,PMCY 4500L,Pharm Drug Development Lab,1
202108,PMCY 6200,Pharmkinetics & Pharmdynamics,3
202108,PMCY 6500,Pharm Drug Development,3
202108,PMCY 6500L,Pharm Drug Development Lab,1
202108,PMCY 3500,Pharm Analysis,3
202108,PMCY 4970,Pharm Sciences Research II,4
202108,PMCY 6410E,Robotic Technolgy in Drug Dis,2
202108,PMCY 4970,Pharm Sciences Research II,3
202108,PMCY 4970,Pharm Sciences Research II,2
202108,PMCY 4960,Pharm Sciences Research I,4
202108,PMCY 4410E,Robotic Tech in Drug Discovery,2
202108,PMCY 4980,Pharm Sciences Research III,4
202108,PMCY 2020,Pills Potions and Drugs,3
202108,PMCY 4430E,Biopharmaceut Pharmacokinet,2
202108,PMCY 4980R,Undergraduate Research III,6
202108,PMCY 4010E,Drugs Biologics Devices FDA,3
202108,PMCY 4960,Pharm Sciences Research I,2
202108,PMCY 6430E,Biopharmaceut & Pharmacokinet,2
202108,PMCY 4980,Pharm Sciences Research III,2
202108,PMCY 4990R,Undergraduate Thesis,6
202108,PMCY 3200,Intro Pharm Sci,3
202108,PMCY 4960R,Undergraduate Research I,6
202108,PMCY 4970R,Undergraduate Research II,6
202108,POLS 1101,American Government,3
202108,POLS 7005,Grad Student Sem,3
202108,POLS 9005,Doc Grad Stu Sem,3
202108,POLS 9300,Doct Dissertation,9
202108,POLS 4790,Sp Topics Amer Pol,3
202108,POLS 5101,Legis Intern Resrch,4
202108,POLS 1105H,American Government (Honors),3
202108,POLS 2000,Intro to Political Science,3
202108,POLS 3600,Criminal Just Admin,3
202108,POLS 3700,Research Methods in Crim Just,3
202108,POLS 4610,US Presidency,3
202108,POLS 4660,Southern Politics,3
202108,POLS 4700,Constitutional Law Powers,3
202108,POLS 4720,Criminal Procedure,3
202108,POLS 6100,Pre-Sem Am Politics,3
202108,POLS 8501,Adv Quant Method I,3
202108,POLS 1101E,American Government,3
202108,POLS 4615,Polarization of American Pol,3
202108,POLS 5130,Fed St Local Intern,4
202108,POLS 5030,Intro to Applied Politics,3
202108,POLS 4730,Criminal Law,3
202108,POLS 4020,Hobbes to Nietzsche,3
202108,POLS 7770,Graduate Teaching Seminar,3
202108,POLS 5121,Campn Intern Rsrch,4
202108,POLS 5100,Legis Intern,4
202108,POLS 5131,Fed St Loc Int Rsch,4
202108,POLS 3000,Intro to Political Theory,3
202108,POLS 4072,Political Economy,3
202108,POLS 7010,Research Design,3
202108,POLS 7012,Intro Pol Method,3
202108,POLS 5140,Survey Research Internship,4
202108,POLS 5120,Campaign Intern,4
202108,POLS 5102,Legis Intern Essays,4
202108,POLS 5111,Lobby Intern Rsrch,4
202108,POLS 5110,Lobbying Intern,4
202108,POLS 5112,Lobbying Intern,4
202108,POLS 5122,Campn Intern Essays,4
202108,POLS 8020,Game Theory,3
202108,POLS 4150,Research Methods in Poli Sci,3
202108,POLS 4400,Political Psychology,3
202108,POLS 4740,Judic Process Behav,3
202108,POLS 4690,Religion and American Politics,3
202108,POLS 4605H,Politic Congressional Elec Hon,3
202108,POLS 8110,Rsch Elect Behav,3
202108,POLS 4090,Social Justice,3
202108,POLS 4770,Supreme Court Case Controvers,3
202108,POLS 4710,Const Law Rights Liberties,3
202108,POLS 4790H,Special Topics in Amer Pol Hon,3
202108,POLS 5132,Fed St Loc Int Essy,4
202108,POLS 8105,Amer Pol Develop,3
202108,POLS 4960,Dir Readings and-or Projects,3
202108,POLS 4515,Campaign Politics,3
202108,POLS 9200,Prob in Pol Sci,3
202108,POLS 9000,Doctoral Research,9
202108,POLS 4740H,Judicial Process,3
202108,POLS 4710H,Const Law Rights Liberties Hon,3
202108,POLS 8140,Legislative Process,3
202108,POLS 4600,Legislative Process,3
202108,POLS 4060,Prob Democrat Theor,3
202108,POLS 8040,Pol Economy,3
202108,POLS 4105H,Amer Pol Dev Honors,3
202108,POLS 4105,Amer Pol Develop,3
202108,POLS 1101S,American Govt Service Learning,3
202108,POLS 4635,Politics of Income Inequality,3
202108,POLS 8450,Special Topics Law,3
202108,POLS 8500,Spec Topics Method,3
202108,POLS 4520,Electoral Behavior,3
202108,POLS 4960R,Undergraduate Research I,3
202108,POLS 5510,Criminal Justice Internship,5
202108,POLS 4690E,Religion and American Politics,3
202108,POLS 8460,Const Law II Rights,3
202108,POLS 4071,Social Choice and Elections,3
202108,POLS 4750,Gender Law Politics,3
202108,POLS 4045,Moral Markets State,3
202108,POLS 4540,Lobbying and Lobby Influence,3
202108,POLS 4080,Legal Theory,3
202108,POLS 4510,Pub Opin Amer Demo,3
202108,POLS 3220,Intro to Modeling in Pol Sci,3
202108,POLS 7300,Master-s Thesis,9
202108,POLS 4960R,Undergraduate Research I,6
202108,POLS 3230,Political Analysis in R,3
202108,POLS 4155,Analyzing Political Behavior,3
202108,POLS 8790,Sp Topics Amer Pol,3
202108,POLS 3010,Political Ideologies,3
202108,POLS 4190,Sp Topics Pol Theor,3
202108,POLS 4073,Social Choice and Institutions,3
202108,POLS 8030,Spatial Voting Mod,3
202108,POLS 5500,Criminal Justice Internship,5
202108,POLS 5520,Criminal Justice Internship,5
202108,POLS 4420,Politics and Technology,3
202108,POLS 4010,Pol Phil to Machiav,3
202108,POLS 4780,Spec Topics Law,3
202108,POPH 3730,Poultry Health,3
202108,POPH 4650,Introduction to Virology,3
202108,POPH 6650,Introduction to Virology,3
202108,POPH 4960,Directed Research,5
202108,POPH 5200,Food Animal Health and Product,2
202108,POPH 5202,Lab Animal Medicine,1.1
202108,POPH 5230,Spec Topics Population Health,1
202108,POPH 5240,Epidemiology,2
202108,POPH 5390,Dis of Swine,1.3
202108,POPH 6110,Prob FA Inf Dis,2
202108,POPH 6120,FA Clinic Round,1
202108,POPH 6121,Clinical Rounds,1
202108,POPH 6130,Fa Prod Med Seminar,1
202108,POPH 6141,Avian Necropsy,3
202108,POPH 6160,FA Special Prob,3
202108,POPH 6210,Avian Medicine Externship,12
202108,POPH 6230,Problems Epi and Stat,2
202108,POPH 8050,Avian Virus Dis,3
202108,POPH 8050L,Avian Virus Lab,1
202108,POPH 6250,Fa Clinical Res,7
202108,POPH 8230,Spec Topics POPH,2
202108,POPH 8240L,Histo Poult Med,3
202108,POPH 8580,Wildlife Health,1
202108,POPH 8900,Prob Pop Health,6
202108,POPH 8150,Avian Med Seminar,1
202108,POPH 6700,Clinic FA Prod Med,3
202108,POPH 7210E,Breeder Husbandry,3
202108,POPH 7220E,Hatchery Practices,3
202108,POPH 7230E,Poultry Genetics,3
202108,POPH 7414E,Poult Practicum I,3
202108,POPH 7330E,Poult Food Epi,6
202108,POPH 7420E,Trade Issues,3
202108,POPH 7517E,Poult Practicum IV,3
202108,POPH 5200L,Food Animal Health and Product,0
202108,POPH 7320E,Avian Immun Infect,9
202108,POPH 7513E,Poult Practicum III,3
202108,POPH 7421E,Poult Prod Econ,3
202108,POPH 7422E,Poul Dis Prevention,3
202108,POPH 7610E,Poul Health Surveys,3
202108,POPH 7612E,Poult Practicum V,3
202108,POPH 7615E,Sp Prob Poph Health,6
202108,POPH 7618E,Master-s Rsrch Sum,6
202108,POPH 6144,Avian Necropsy Practicum,3
202108,POPH 4900L,Directed Research,4
202108,POPH 7010,Lab An Med Pract,4
202108,POPH 7020,Lab Anim Med Rounds,4
202108,POPH 7110,Diseases of Lab Animals I,4
202108,POPH 5910,Avian Histopathology for DVM,3.9
202108,POPH 7052,Avian Histopathology Pract III,3
202108,POPH 5900,Studies in Population Health,8
202108,POPH 5400,Avian Med Clinical Rotation,3.9
202108,POPH 5410,Wildlife Population Health,3.9
202108,POPH 5445,Food Animal Practice,3.9
202108,POPH 5446,Food Animal Pract Beef Cattle,3.9
202108,POPH 5449,Studies in Food Animal Product,3.9
202108,POPH 7030,LAM Residency I,15
202108,POPH 7040,Laboratory Animal Medicine Res,15
202108,POPH 7070,LAM Current Research Review,2
202108,POPH 7120,Diseases of Lab Animals II,4
202108,POPH 8320L,Pop Health Stat II,4
202108,POPH 7050,Avian Histopathology Pract I,3
202108,POPH 6142,Avian Necropsy Practicum,3
202108,POPH 5448,Food Animal Practice Swine,3.9
202108,POPH 6143,Avian Necropsy Practicum,3
202108,POPH 7051,Avian Histopathology Pract II,3
202108,POPH 5447,Dairy Production Medicine,3.9
202108,POPH 8040,Molecular Pathogenesis,2
202108,POPH 4125,Diseases in Changing World,3
202108,POPH 6125,Diseases in Changing World,3
202108,POPH 6140,Vet Econ,1.5
202108,PORT 2001,Intermediate Portuguese,3
202108,PORT 3010,Port Convers and Composit,3
202108,PORT 1001,Elem Portuguese,4
202108,PORT 1002,Elementary Portuguese,4
202108,PORT 1110,Accelerated Elementary Port,4
202108,PORT 3030,Intro to Lang Lit and Culture,3
202108,PORT 2600,Intensive Portuguese,3
202108,PORT 8010,Topics Lit and Cul Port Sp Wor,3
202108,PORT 4045,Brazilian Culture and Society,3
202108,PORT 6045,Brazilian Culture and Society,3
202108,PORT 2120,Accelerated Intermediate Port,4
202108,PORT 4070,Theater of Port-Speaking World,3
202108,PORT 6070,Theater of Port-Speaking World,3
202108,PORT 4080,Culture Lit of Port-Speak Wor,3
202108,PORT 6080,Culture Lit of Port-Speak Wor,3
202108,POUL 1010,Birds in Our Lives,3
202108,POUL 2040,Poultry Evaluation,1
202108,POUL 3550,Behav Domestic Anim,3
202108,POUL 3750,Integrated Animal Nutrition,4
202108,POUL 4010,Advanced Poultry Production,4
202108,POUL 8100,Poultry Science Seminar,1
202108,POUL 4990,Undergrad Teaching,3
202108,POUL 3990,Prob in Poult Sci,5
202108,POUL 7000,Master-s Research,12
202108,POUL 7300,Master-s Thesis,9
202108,POUL 2020,Intro Poultry Sci,3
202108,POUL 2020L,Intro Poul Sci Lab,0
202108,POUL 9000,Doctoral Research,9
202108,POUL 9300,Doct Dissertation,9
202108,POUL 3910,Intern Poultry Sci,3
202108,POUL 8510,Problems in Poultry,9
202108,POUL 3220,Poultry Mibo Fund,3
202108,POUL 1010E,Birds in Our Lives,3
202108,POUL 6200,Avian Anatomy and Physiology,4
202108,POUL 6200L,Avian Anat and Physiology Lab,0
202108,POUL 4200,Avian Anatomy and Physiology,4
202108,POUL 4200L,Avian Anat and Physiology Lab,0
202108,POUL 4960,Undergrad Research in Poul Sci,4
202108,POUL 4175,Avian Anatomy and Physiology,3
202108,POUL 3000,Avian Surgical Techniques,4
202108,POUL 4300,Nutritional Immunology,3
202108,POUL 6300,Nutritional Immunology,3
202108,POUL 3050,Molecular Avian Bio,3
202108,POUL 3000L,Avian Surgical Techniques Lab,0
202108,POUL 8050,Sci Communication Skill Train,1
202108,POUL 4970R,Undergraduate Research II,6
202108,PRTM 4700,Soc Sci Methods in Nat Res,3
202108,PRTM 3310,Humans Nature Environ Aware,3
202108,PRTM 3900,PRTM Internship,1
202108,PRTM 3900,PRTM Internship,2
202108,PRTM 3900,PRTM Internship,3
202108,PRTM 1100E,Intro to Travel and Tourism,3
202108,PRTM 5800S,Environmental Interpretation,3
202108,PRTM 7800S,Environmental Interpretation,3
202108,PRTM 5900,Ecotourism and Sustainable Dev,3
202108,PRTM 7900,Ecotourism and Sustainable Dev,3
202108,PRTM 7980,Parks Rec and Tourism Problems,3
202108,PRTM 8980,Parks Rec and Tourism Problems,3
202108,PSYC 1030H,General Psychology (Honors),3
202108,PSYC 6100,Cognitive Psych,3
202108,PSYC 1101,Elementary Psychology,3
202108,PSYC 6130,Biol Found Behavior,3
202108,PSYC 3030,Preparing for a Career in Psyc,1
202108,PSYC 6420,Adv Experi Psy,3
202108,PSYC 6310,Industrial Psych,3
202108,PSYC 8000,Advanced Topics in Psychology,3
202108,PSYC 4100,Cognitive Psychology,3
202108,PSYC 3230,Psychopathology,3
202108,PSYC 4120,Sensation and Perception,3
202108,PSYC 9100,Special Problems,1
202108,PSYC 9250,Indus and Org Psych Intern,3
202108,PSYC 3900H,Honors Sem Psyc,3
202108,PSYC 3980,Research Design in Psychology,3
202108,PSYC 4200,Social Psychology,3
202108,PSYC 4210,Psychological Testing,3
202108,PSYC 4220,Developmental Psychology,3
202108,PSYC 4230,Psychology of the Workplace,3
202108,PSYC 5100,Seminar in Psychology,3
202108,PSYC 5850,Psychopharmacology,3
202108,PSYC 8500,Clinical Staffing Procedures,3
202108,PSYC 3990,Research Analysis,4
202108,PSYC 7000,Master-s Research,9
202108,PSYC 9100,Special Problems,15
202108,PSYC 9000,Doctoral Research,9
202108,PSYC 7300,Master-s Thesis,9
202108,PSYC 9300,Doctoral Dissertation,9
202108,PSYC 4800,Special Problems,3
202108,PSYC 8330,Lab Apprentice Biopsychology,3
202108,PSYC 6811,Workplace Psych I,3
202108,PSYC 4850,Directed Readings Psychology,3
202108,PSYC 6820,Org Rsch Methods I,3
202108,PSYC 6825,Leadership Development,3
202108,PSYC 8920,Child Behave Prob,3
202108,PSYC 4140,Cognitive Neuroscience,3
202108,PSYC 3100,Special Topics in Psychology,3
202108,PSYC 3260,Human Sexuality,3
202108,PSYC 4130,Physiological Comparative Psyc,3
202108,PSYC 8980,Sem Ind-Org Psy,3
202108,PSYC 6200,Advanced Social Psy,3
202108,PSYC 4150,Biological Health Psychology,3
202108,PSYC 4600,Psychology of Women,3
202108,PSYC 3200,Cultural Psychology,3
202108,PSYC 6110,Learning Processes,3
202108,PSYC 8000,Advanced Topics in Psychology,5
202108,PSYC 9210,Clinical Internship,3
202108,PSYC 6855,Motivation and Engagement,3
202108,PSYC 3550,Intro to Cognitive Science,3
202108,PSYC 6160,Sensory Psychology,3
202108,PSYC 6240,Adv Psychop Adult,3
202108,PSYC 8990,Sem Psychometrics,3
202108,PSYC 6560,Clinical Assessment,3
202108,PSYC 6650,Ethics Clin Psy,3
202108,PSYC 8240,Judg-dec-Making,3
202108,PSYC 4220H,Developmental Psych Honors,3
202108,PSYC 3230H,Psychopathology Honors,3
202108,PSYC 6870,Talent Acquisition Legal Envir,3
202108,PSYC 4970R,Undergraduate Research II,3
202108,PSYC 4960R,Undergraduate Research I,2
202108,PSYC 4960R,Undergraduate Research I,3
202108,PSYC 4990R,Undergraduate Thesis,3
202108,PSYC 4980R,Undergraduate Research III,3
202108,PSYC 4970R,Undergraduate Research II,1
202108,PSYC 4970R,Undergraduate Research II,4
202108,PSYC 4300,Psychology Laboratory,3
202108,PSYC 6320,Organizational Psy,3
202108,PSYC 7540,Psy Disadv-minor Gp,3
202108,PSYC 8820,Developmental Psychopathology,3
202108,PSYC 3400,Philosophical Psychology,3
202108,PSYC 4970R,Undergraduate Research II,6
202108,PSYC 3250,Psyc of Intimate Relationships,3
202108,PSYC 4960R,Undergraduate Research I,6
202108,PSYC 4980R,Undergraduate Research III,6
202108,PSYC 9100,Special Problems,3
202108,PSYC 8890,Sem in Dev Proc,3
202108,PSYC 3700,Schizophrenia,3
202108,PSYC 6860,Competency Modeling,3
202108,QUAL 8400,Qual Rsch Tradition,3
202108,QUAL 8400E,Qual Rsch Tradition,3
202108,QUAL 8420E,Analyzing Qual Data,3
202108,QUAL 9005,Doc Grad Stu Sem,3
202108,QUAL 9000,Doctoral Research,9
202108,QUAL 8410,Designing Qual Rsch,3
202108,QUAL 9400,Adv Sem in Teaching Qual Res,3
202108,QUAL 7500E,Action Research,3
202108,QUAL 9700,Internship in Ed Research,3
202108,QUAL 8990,Qual Research Method Doc Sem,3
202108,QUAL 8420,Analyzing Qual Data,3
202108,QUAL 9300,Doctoral Dissertation,9
202108,QUAL 8700,Practicum in Ed Research,3
202108,QUAL 8565,Theoretical Frameworks,3
202108,QUAL 8575,Mixed Methods,3
202108,QUAL 8410E,Designing Qual Rsch,3
202108,QUAL 8210,Practice of Action Research,3
202108,QUAL 8200,Action Research in Orgs,3
202108,QUAL 7500,Action Research,3
202108,QUEC 1001,Elem Quechua I,4
202108,QUEC 2001,Inter Quechua I,3
202108,REAL 5090,Real Estate Investment,3
202108,REAL 9000,Doctoral Research,9
202108,REAL 9300,Doctoral Dissertation,9
202108,REAL 4000,Real Estate,3
202108,REAL 9910,Sem Real Estate Analysis Finan,3
202108,REAL 4800,Internship in Real Estate,6
202108,REAL 4800,Internship in Real Estate,3
202108,REAL 4000E,Real Estate,3
202108,REAL 5070S,Real Estate Development,3
202108,REAL 7600,Real Estate Invest Analysis,3
202108,REAL 7070,Real Estate Development,3
202108,REAL 7990,Dir Study in Real,3
202108,REAL 4000H,Real Estate (Honors),3
202108,RELI 1003,Introduction Religious Thought,3
202108,RELI 7000,Master-s Research,3
202108,RELI 7005,Grad Student Sem,3
202108,RELI 7300,Master-s Thesis,3
202108,RELI 8700,Sem Religion Rsch,3
202108,RELI 1008,New Testament,3
202108,RELI 1200,Intro to Study of African Reli,3
202108,RELI 1001,Judaism Christianity Islam,3
202108,RELI 4104,Sex Marriage Christian Theol,3
202108,RELI 6104,Sex Marriage Christian Theol,3
202108,RELI 9000,Doctoral Research,12
202108,RELI 9005,Doctoral Graduate Student Sem,3
202108,RELI 9300,Doctoral Dissertation,12
202108,RELI 7771,Tchng Reli Studies,3
202108,RELI 2004,Native American Rel,3
202108,RELI 2003H,Intr Rel Thght,3
202108,RELI 4105,Women Christn Hist,3
202108,RELI 6105,Women Christn Hist,3
202108,RELI 1006,Religions of the World,3
202108,RELI 4100,Reformation Theology,3
202108,RELI 6100,Reformation Theology,3
202108,RELI 1100,Intro Native Americ,3
202108,RELI 3004,Global Christianity,3
202108,RELI 9000,Doctoral Research,3
202108,RELI 4800,Read and Rsch Rel,3
202108,RELI 1002,India-China-Japan,3
202108,RELI 4002,Prophetic Lit Ot-hb,3
202108,RELI 6002,Prophetic Lit Ot-hb,3
202108,RELI 4201,Afrcn Am Rel Hist,3
202108,RELI 6201,Afrcn Am Rel Hist,3
202108,RELI 4705,Topics in NAMS,3
202108,RELI 6705,Topics in NAMS,3
202108,RELI 4401,Buddhist Tradition,3
202108,RELI 6401,Buddhist Tradition,3
202108,RELI 2001H,Judaism Christianity Islam,3
202108,RELI 6084,Gospels,3
202108,RELI 4090,Trinity,3
202108,RELI 6090,Trinity,3
202108,RELI 4095,Christianity and Sustainabilit,3
202108,RELI 6095,Christianity and Sustainabilit,3
202108,RELI 8480,Sem in Islamic Rsch,3
202108,RELI 6082,Life-Letters Paul,3
202108,RELI 4082,Life-Letters Paul,3
202108,RELI 4085,Gospel of John,3
202108,RELI 6085,Gospel of John,3
202108,RELI 8220,Seminar African Religious Trad,3
202108,RELI 1007,Old Testament-Hebrew Bible,3
202108,RELI 7773,Religious Studies Practicum,9
202108,RELI 4611,Canon,3
202108,RELI 6611,Canon,3
202108,RELI 4040,Apocalyptic Lit,3
202108,RELI 6040,Apocalyptic Lit,3
202108,RELI 4530,Theology-culture,3
202108,RELI 6530,Theology-culture,3
202108,RELI 4404,Japanese Religion,3
202108,RELI 6404,Japanese Religion,3
202108,RELI 8770,Theory and Method in Religion,3
202108,RELI 4103,Perspectives in Catholic Theol,3
202108,RELI 6103,Perspectives in Catholic Theol,3
202108,RELI 4111,Theologically Engaged Anth,3
202108,RELI 6111,Theologically Engaged Anth,3
202108,RELI 8510,Seminar in Theology,3
202108,RELI 4107,American Rel Hist,3
202108,RELI 6107,American Rel Hist,3
202108,RELI 4084,Gospels,3
202108,RELI 4080,New Testament Lit,3
202108,RELI 6080,New Testament Lit,3
202108,RELI 4005,Topics Hebrew Bible,3
202108,RELI 6005,Topics Hebrew Bible,3
202108,RELI 4610,Monotheism and Science,3
202108,RELI 6610,Monotheism and Science,3
202108,RELI 4308,Islamic Calligraphic Art,3
202108,RELI 6308,Islamic Calligraphic Art,3
202108,RELI 4089,Biblical Greek,3
202108,RELI 3150,Religion in US,3
202108,RELI 4001,Old Testament-Hebrew Bible Lit,3
202108,RELI 4101,Chrst Theo Anct-med,3
202108,RMIN 5950,Corporate Risk Management,3
202108,RMIN 4800,Intern in Risk Mgmt and Insur,6
202108,RMIN 5110,Employee Benefits,3
202108,RMIN 5530,Advanced Property Insurance,3
202108,RMIN 5540,Advanced Liability Insurance,3
202108,RMIN 4000,Risk Management and Insurance,3
202108,RMIN 9000,Doctoral Research,9
202108,RMIN 9300,Doctoral Dissertation,9
202108,RMIN 7100,Fndmtl of Risk Mgmt,3
202108,RMIN 4800,Intern in Risk Mgmt and Insur,3
202108,RMIN 4100,Theory of Interest,3
202108,RMIN 5100S,Commercial Prop and Liab Insur,3
202108,RMIN 5570,Insurer Operations and Policy,3
202108,RMIN 9450,Property Liability Insuran Sem,3
202108,RMIN 4000H,Risk Management Insurance Hon,3
202108,RMIN 8990,Directed Study in Risk Mgmt,9
202108,RMIN 4200,Actuarial Probability Concepts,3
202108,ROML 7005,Grad Student Sem,3
202108,ROML 9005,Doc Grad Stu Sem,3
202108,ROML 9000,Doctoral Research,15
202108,ROML 7000,Master-s Research,15
202108,ROML 9300,Doctoral Dissertation,15
202108,ROML 8500,Readings and Research,3
202108,ROML 2550,Latino Lit Lang,3
202108,ROML 7010,Master-s Prof Develop Seminar,3
202108,ROML 9010,Doctoral Prof Develop Seminar,3
202108,ROML 7300,Master-s Thesis,15
202108,ROML 8000,Topics in Romance Languages,3
202108,ROML 6350,Rom Ling Theory Ana,3
202108,ROML 4860,Afr Hispanic Ident,3
202108,ROML 6860,Afr Hispanic Ident,3
202108,ROML 7700,Rom Lang Pedagogy,3
202108,RUSS 1001,Elementary Russian I,4
202108,RUSS 2001,Intermediate Russian I,3
202108,RUSS 3001,Rus Conv Comp I,3
202108,RUSS 4520,Contemp Russ Cult,3
202108,RUSS 1011,Intensive Elementary Russian I,5
202108,RUSS 3990,Directed Study in Russian,3
202108,RUSS 3011,Intensive Russ Conv and Comp I,3
202108,RUSS 3911,Tutorial Profession Russian I,3
202108,RUSS 4080,Nabokov,3
202108,RUSS 4510,Special Topics,3
202108,RUSS 4040,Tolstoy on Page and Screen,3
202108,SABD 1002,Study Abroad-Cortona,0
202108,SABD 1019,SA UGA at Oxford Franklin,0
202108,SABD 1361,SA Terry Winter Break Cuba,0
202108,SABD 1362,SA Terry EMBA Intl Res Iceland,0
202108,SABD 1066,SA UGA Oxford Found Fellows,0
202108,SABD 1008,SA UGACR Tropical Biology,0
202108,SAMS 5205,Comparative Clinical Derm,1
202108,SAMS 5350,Digestive Diseases,1.2
202108,SAMS 5373,Basic Surgical Techniques,1.3
202108,SAMS 5345,Sa Musculoskele Dis,1.4
202108,SAMS 5395,Adv Topics Emergency Crit Care,1.3
202108,SAMS 8020,Adv Clin Med Sem,1
202108,SAMS 7500,Sm Anim Internship,18
202108,SAMS 7610,Sm Anim Residency I,15
202108,SAMS 7620,Sm An Residency II,15
202108,SAMS 7630,Sm An Residency III,15
202108,SAMS 7650,Seminar,4
202108,SAMS 8010,Seminar Med and Surg,4
202108,SAMS 8040,Neuropathology,1
202108,SAMS 5415,Zoological Medicine,3.9
202108,SAMS 5435,SA Derm Clinical Rotation,3.9
202108,SAMS 5450,Small Animal General Surgery,3.9
202108,SAMS 5455,Small Animal Cardio Rotation,3.9
202108,SAMS 5460,Small Animal Ophthalmology,3.9
202108,SAMS 5465,SA Neurology-Neurosurgery,3.9
202108,SAMS 5475,SA Community Practice,3.9
202108,SAMS 5485,Small Animal Internal Medicine,3.9
202108,SAMS 5490,Emergency and Critical Care,3.9
202108,SAMS 5205L,Comparative Clinical Derm Lab,0
202108,SAMS 7640,Sm An Residency IV,15
202108,SAMS 8030,Neurosurgery,1
202108,SAMS 5218,Reptile Avian Small Mammal Med,2
202108,SAMS 5335,Advanced Ophthalmology,1
202108,SAMS 5325,Sa Advanced Anes,1
202108,SAMS 5372,Small Animal Adv Surgical Tech,1.4
202108,SAMS 5265,Topics Small Animal Dentistry,0.7
202108,SAMS 5280,Vet Clin Immun,1
202108,SAMS 5406,Academic Vet Med Rotation,3.9
202108,SAMS 4960,Mentored Research in SAMS,5
202108,SAMS 5900,Clinical Small Animal Medicine,8
202108,SAMS 5900,Clinical Small Animal Medicine,1.3
202108,SAMS 5405,Small Animal Clinical Anesthes,3.9
202108,SAMS 5430,Small Animal Ortho Surgery,3.9
202108,SAMS 5440,Small Animal Oncology Rotation,3.9
202108,SAMS 5105,Sa Inf Dis,1.5
202108,SAMS 5900,Clinical Small Animal Medicine,1
202108,SAMS 7820,Zoological Med Residency II,15
202108,SAMS 6990,Special Problems,3
202108,SAMS 7830,Zoological Med Residency III,15
202108,SAMS 7810,Zoological Med Residency I,15
202108,SAMS 4960R,Undergraduate Research I,6
202108,SAMS 5201,Advanced Clin Derm,1.3
202108,SCHL 9001,Scholars,20
202108,SEMI 4001,Studies in Semitic Linguistics,3
202108,SEMI 6001,Studies in Semitic Linguistics,3
202108,SOCI 3220,Dev of Soc Theory,3
202108,SOCI 1101H,Introductory Sociology Honors,3
202108,SOCI 6620,Analysis Soc Data I,3
202108,SOCI 6220,Dev of Soc Theory,3
202108,SOCI 6190,Proseminar,2
202108,SOCI 9100,Soci Job Market,3
202108,SOCI 4370,Sem Race-ethnicity,3
202108,SOCI 7300,Master-s Thesis,9
202108,SOCI 9000,Doctoral Research,9
202108,SOCI 9300,Doctoral Dissertation,9
202108,SOCI 7000,Master-s Research,9
202108,SOCI 3810,Criminology,3
202108,SOCI 3260,College and Social Life,3
202108,SOCI 1101,Introductory Sociology,3
202108,SOCI 2100,Introduction to Africa,3
202108,SOCI 3580,Sociology Methods,3
202108,SOCI 3320,Soc of Urban Life,3
202108,SOCI 3830,Violence and Society,3
202108,SOCI 4950,Internship Experience,3
202108,SOCI 2470,Deviance and Soc Cntl,3
202108,SOCI 3030,Socio Religion,3
202108,SOCI 3100,Medical Sociology,3
202108,SOCI 3610,Quantitative Methods,3
202108,SOCI 3700,Research Methods in Crim Just,3
202108,SOCI 3770,Workplace in Film,3
202108,SOCI 3070,Juvenile Delinquency,3
202108,SOCI 5500,Criminal Justice Internship,5
202108,SOCI 5510,Criminal Justice Internship,5
202108,SOCI 5520,Criminal Justice Internship,5
202108,SOCI 5500,Criminal Justice Internship,4
202108,SOCI 5510,Criminal Justice Internship,4
202108,SOCI 5520,Criminal Justice Internship,4
202108,SOCI 4900,Supervsd Res in Soc,3
202108,SOCI 2820,Race and Ethnicity in America,3
202108,SOCI 3020,Lives in Time and Place,3
202108,SOCI 3070S,Juv Delinquency,3
202108,SOCI 3280,Soc of Gender,3
202108,SOCI 3590,Qualitative Methods,3
202108,SOCI 3730,Social Psychology,3
202108,SOCI 3860,Sociology Alcohol and Drug Use,3
202108,SOCI 3940,Sociology of Leadership,3
202108,SOCI 8840,Gender Crime Just,3
202108,SOCI 4580,Topics Afri Amer Soci and Hlth,3
202108,SOCI 3810W,Criminology,3
202108,SOCI 8000,Special Soc Topics,3
202108,SOCI 8720,Interaction and Inequality,3
202108,SOCI 4960R,Undergraduate Research I,6
202108,SOCI 6610,The Family,3
202108,SOCI 3150,Criminal Punishment Society,3
202108,SOCI 1101E,Introductory Sociology,3
202108,SOCI 3150E,Criminal Punishment Society,3
202108,SOCI 4970R,Undergraduate Research II,3
202108,SOCI 3340,Social Psychology Race Racism,3
202108,SOCI 3750,Work and Industry,3
202108,SOCI 4250,Social Networks,3
202108,SOCI 4500,Special Topics,3
202108,SOCI 6280,Soc of Gender,3
202108,SOCI 8370,Sociology Race and Ethnicity,3
202108,SOCI 8640,Soci Multilevel Mod,3
202108,SOCI 8650,Network Analysis,3
202108,SOCI 8730,Socl Psych Theories,3
202108,SOCI 4610,The Family,3
202108,SOCI 4930,Experimental Rsrch Sociology,3
202108,SOCI 6930,Experimental Rsrch Sociology,3
202108,SOCI 2020,African Am Society,3
202108,SOCI 3005,Race Technology and the Body,3
202108,SOCI 4211,Environmental Justice in LACS,3
202108,SOCI 6211,Environmental Justice in LACS,3
202108,SOCI 3810E,Criminology,3
202108,SOCI 4600,Health Among Black Americans,3
202108,SOCI 8270,Sociology of Gender,3
202108,SOWK 7055,Concen Prac,6
202108,SOWK 8217,Hist Phil of Social WF and SW,3
202108,SOWK 8116,Quantitative Research Methods,3
202108,SOWK 2154,Introduction to Social Work,3
202108,SOWK 8417,Integrative Seminar,3
202108,SOWK 2155,Communication as a Helping Pro,3
202108,SOWK 2156,Diversity Equity and Inclusion,3
202108,SOWK 5326,Social Work Research,3
202108,SOWK 5757,Current Issues in SW I,3
202108,SOWK 8176,Social Work Stats I,3
202108,SOWK 5835,Practicum in Social Work I,5
202108,SOWK 5836,Integrative Seminar I,2
202108,SOWK 8428,Comprehensive Examination,3
202108,SOWK 9000,Doctoral Research,3
202108,SOWK 9300,Doct Dissertation,9
202108,SOWK 5908,Dir Read in Soc Wk,2
202108,SOWK 9300,Doct Dissertation,6
202108,SOWK 9300,Doct Dissertation,3
202108,SOWK 9000,Doctoral Research,6
202108,SOWK 6908,Indep Sw Research,1
202108,SOWK 5908,Dir Read in Soc Wk,1
202108,SOWK 7000,Master-s Research,1
202108,SOWK 5534,General Practice of SW II,3
202108,SOWK 7005,Grad Student Sem,3
202108,SOWK 8306,SSW Doctoral Research Pract I,3
202108,SOWK 8227,Social Work Ed and Pedagogy,3
202108,SOWK 5850,Capstone I,1
202108,SOWK 9300,Doct Dissertation,5
202108,SOWK 8309,Independent Study Social Work,3
202108,SOWK 6908,Indep Sw Research,3
202108,SOWK 5908,Dir Read in Soc Wk,3
202108,SOWK 7118,Pow Opp Soc Just Pract Adv Div,3
202108,SOWK 7112,Human Behavior in Social Envir,3
202108,SOWK 7114,Generalist SW Prac Ind and Fam,3
202108,SOWK 7115,Intro SW Prof and Field Educ,3
202108,SOWK 7117,Generalist SW Prac Comm Orgs,3
202108,SOWK 8240,Dissertation Prospectus,3
202108,SOWK 7908,Indep Sw Research,3
202108,SOWK 7211,Adv Policy Practice and Analys,3
202108,SOWK 7214,Adv SW Pract with Individuals,3
202108,SOWK 7212,Assessment and Psychopathology,3
202108,SOWK 7236,Comm Engagement and Assessment,3
202108,SOWK 7270,Child Abuse and Neglect,3
202108,SOWK 7190,SW in Healthcare Settings,3
202108,SOWK 7210,Family Therapy,3
202108,SOWK 7250,Behavioral Intervention Method,3
202108,SOWK 7310,Immigr Refug and Intern Displ,3
202108,SOWK 7116,Social Work with Groups,3
202108,SOWK 7908,Indep Sw Research,1
202108,SOWK 7000,Master-s Research,2
202108,SOWK 7225,Advanced Social Work Field Edu,5
202108,SOWK 7225,Advanced Social Work Field Edu,10
202108,SOWK 7112E,Human Behavior in Social Envir,3
202108,SOWK 7500,Social Work Practice Capstone,2
202108,SOWK 7114E,Foun SW Pract Individ and Fam,3
202108,SOWK 7390E,Military Social Work,3
202108,SOWK 5390E,Military Social Work,3
202108,SOWK 7212E,Assess and Psych,3
202108,SOWK 7120,Intro to Substance Abuse,3
202108,SOWK 7280,Clin Pract with Child and Adol,3
202108,SOWK 7225,Advanced Social Work Field Edu,4
202108,SOWK 2157S,Service Learning in SW,1
202108,SOWK 7118E,Pow Opp Soc Just Pract Adv Div,3
202108,SOWK 7160,Pract Afr Amer Adult Fam Child,3
202108,SOWK 5908,Dir Read in Soc Wk,9
202108,SOWK 7360E,Disability and Social Work,3
202108,SOWK 5360E,Disability and Social Work,3
202108,SOWK 7340,Global SW Policy and Practice,3
202108,SOWK 7360,Disability and Social Work,3
202108,SOWK 7240,Assess and Treatment of Trauma,3
202108,SOWK 7140E,Introduction to Trauma,3
202108,SOWK 7110,Environmental Justice,3
202108,SOWK 7215,Telemental Health in SW,3
202108,SOWK 7387,Topics Soc Prob,3
202108,SOWK 7116E,Social Work with Groups,3
202108,SOWK 7115E,Intro SW Prof and Field Educ,3
202108,SOWK 5380,Poverty in the United States,3
202108,SOWK 5400,SW Practice in Health Care,3
202108,SOWK 7150,Gerontological Social Work,3
202108,SOWK 7117E,Generalist SW Prac Comm Orgs,3
202108,SPAN 2120H,Accel Intermediate Span Honors,3
202108,SPAN 3020,Writing Critically in Spanish,3
202108,SPAN 3030,Texts in Global Contexts,3
202108,SPAN 3050,Introduction to Spanish Ling,3
202108,SPAN 4040,Literary Adventures from Spain,3
202108,SPAN 4060,Cultures in Contact After 1492,3
202108,SPAN 4082,Latin American Film,3
202108,SPAN 4150,Business Spanish,3
202108,SPAN 4090S,Practicum in Service Learning,3
202108,SPAN 4003,Medical Spanish,3
202108,SPAN 3010,Spanish Cultural Dialogues,3
202108,SPAN 2030,Practical Spanish Conversation,1
202108,SPAN 2002,Intermediate Spanish II,3
202108,SPAN 2001,Intermediate Spanish I,3
202108,SPAN 1110,Accelerated Elementary Spanish,4
202108,SPAN 1001,Elementary Spanish I,4
202108,SPAN 1002,Elementary Spanish II,4
202108,SPAN 2550,Latin Lit Lang,3
202108,SPAN 3020H,Writing Critically in Span Hon,3
202108,SPAN 4050,Exploring Modern Spain,3
202108,SPAN 4080,Discovering Cultural Formation,3
202108,SPAN 4120,Exploring Cultures in Spanish,3
202108,SPAN 4650,Span Phonetics,3
202108,SPAN 8010,Selected Topics,3
202108,SPAN 3010H,Spanish Cultural Dialogues Hon,3
202108,SPAN 3011,Heritage Speakers of Spanish I,3
202108,SPAN 3030H,Texts in Global Contexts Hon,3
202108,SPAN 4070,Latin Amer Voices of Change,3
202108,SPAN 4081,Spanish Film,3
202108,SPAN 4652,Spanish Dialects,3
202108,SPAN 6100,Med Ren Texts,3
202108,SPAN 6650,Sp Phon andphonology,3
202108,SPAN 8200,Narr Discourses,3
202108,SPAN 8450,Adv Span Socioling and Dialect,3
202108,SPAN 8950,Adv Span Pragmat Disc Analysis,3
202108,SPAN 2001E,Intermediate Spanish I,3
202108,SPAN 8300,Hispanic Thought,3
202108,SPAN 6750,Span Syntax and Morph,3
202108,SPAN 6400,Contemp Spain,3
202108,SPAN 6350,Rom Ling Theory Ana,3
202108,SPAN 4250,Adv Bus Spanish,3
202108,SPAN 2002E,Intermediate Spanish II,3
202108,SPAN 1002E,Elementary Spanish II,4
202108,SPAN 1001E,Elementary Spanish I,4
202108,SPAN 1110E,Accelerated Elementary Spanish,4
202108,SPAN 4100,Span Topics Across Disciplines,3
202108,STAT 9000,Doctoral Research,12
202108,STAT 6210,Intro to Statistical Methods I,3
202108,STAT 6315,Statistical Methods Researcher,4
202108,STAT 6420,Applied Linear Models,3
202108,STAT 4510,Math Statistics I,3
202108,STAT 8170,Probability I,3
202108,STAT 8620,Cat Data and Glms,3
202108,STAT 6810,Probability Dist,3
202108,STAT 6510,Math Statistics I,3
202108,STAT 8200,Exper Designs,3
202108,STAT 8910,Stat Seminar,3
202108,STAT 4210,Statistical Methods,3
202108,STAT 4280,Applied Time Series Analysis,3
202108,STAT 6280,Applied Time Series Analysis,3
202108,STAT 4230,Applied Regression Analysis,3
202108,STAT 6230,Applied Regression Analysis,3
202108,STAT 7000,Master-s Research,9
202108,STAT 7300,Master-s Thesis,9
202108,STAT 9300,Doctoral Dissertation,12
202108,STAT 4220,Applied Experimental Designs,3
202108,STAT 8001,Adv Statistical Collaboration,3
202108,STAT 2100H,Intro to Stat and Comput Hon,4
202108,STAT 3110,Intro to Stat for Life Science,3
202108,STAT 4240,Sampling Methods,3
202108,STAT 6240,Sampling Methods,3
202108,STAT 4520,Math Statistics II,3
202108,STAT 8330,Adv Stat App and Comp,3
202108,STAT 8900,Topics in Stat,3
202108,STAT 6811,Supplemental Prob Distribution,1
202108,STAT 7700,Stat Internship,15
202108,STAT 4950,Ug Dir Study Stat,3
202108,STAT 2010,Stat Methods Data Scientists,3
202108,STAT 6260,Quality Assurance,3
202108,STAT 6800,Tools for Statistical Theory,3
202108,STAT 8060,Statistical Computing I,3
202108,STAT 2360,Program and Data Lit Using R,4
202108,STAT 4365,Modern Statistical Programming,3
202108,STAT 6365,Modern Statistical Programming,3
202108,STAT 8920,Stat Research and Prof Pract I,2
202108,STAT 2360L,Program Data Lit Using R Lab,0
202108,STAT 4620,Cat Data Analysis,3
202108,STAT 6620,Cat Data Analysis,3
202108,STAT 8440,Stat Inference Bioinformatics,3
202108,STAT 5010W,Statistical Capstone Course I,3
202108,STAT 5700,Stat Internship,15
202108,STAT 4270,Network Data Graphical Models,3
202108,STAT 6270,Network Data Graphical Models,3
202108,STAT 2000,Introductory Statistics,4
202108,STAT 4260,Quality Assurance,3
202108,STEX 1001,External Study Abroad USG,20
202108,STEX 1002,External Study Abroad General,20
202108,STEX 1005,Dual Deg UNIPD Padova Italy,20
202108,SWAH 1010,Elem Swahili I,4
202108,SWAH 2010,Intermed Swahili I,3
202108,SWAH 3990,Directed Study,3
202108,SWAH 3001,The Swahili and the World I,3
202108,SXCH 1001,UGA Exchange Undergraduate,21
202108,SXCH 1003,UGA Exchange Grad Assistant,20
202108,THEA 9000,Doctoral Research,9
202108,THEA 7783,Dramatic Media Studio III,3
202108,THEA 7560,Projects in Theatre,3
202108,THEA 9300,Doctoral Dissertation,12
202108,THEA 3500,Acting I Foundations of Acting,3
202108,THEA 5590,Special Projects in Drama,3
202108,THEA 7060,Applied Drama Laboratory,1
202108,THEA 5700,Internships,3
202108,THEA 7080,Production Practicum,3
202108,THEA 5080,Production Practicum,3
202108,THEA 7005,Graduate Student Seminar,3
202108,THEA 4960,Directed Readings or Projects,3
202108,THEA 7330,Graduate Costume Design I,3
202108,THEA 7730,Adv Costume Design Perf Arts,3
202108,THEA 7731,Advanced Costume Design III,3
202108,THEA 3020,Basic Dramatic Writing,3
202108,THEA 4220,Thea Hist: Society,3
202108,THEA 6220,Thea Hist: Society,3
202108,THEA 2010,Introduction to Acting,3
202108,THEA 5053,Senior Seminar,1
202108,THEA 3290,Script Analysis,3
202108,THEA 3300,Foundations of Perform Design,3
202108,THEA 7352,Lighting Design Perform Arts,3
202108,THEA 7755,Graduate Lighting Design III,3
202108,THEA 2000,Appreciation of Theatre,3
202108,THEA 6510,Intro Graduate Studies Drama,1
202108,THEA 5830,Comp Animation Dram Med III,3
202108,THEA 7830,Comp Animation Dram Med III,3
202108,THEA 2040,Applied Drama Laboratory,1
202108,THEA 2050,Applied Drama Laboratory,1
202108,THEA 2060,Applied Drama Laboratory,1
202108,THEA 7050,Applied Drama Laboratory,1
202108,THEA 9005,Doctoral Graduate Student Sem,3
202108,THEA 7781,Studio I,3
202108,THEA 7070,Applied Drama Laboratory,1
202108,THEA 9010,Research Problems I,9
202108,THEA 5315,CAD 2D Drafting,3
202108,THEA 7315,CAD 2D Drafting,3
202108,THEA 7782,Dramatic Media Studio II,3
202108,THEA 7970,Design Portfolio,1
202108,THEA 2110,Voices of Diversity,3
202108,THEA 5600,Play Direction,3
202108,THEA 8010,PhD Proseminar I,1
202108,THEA 7752,Graduate Lighting Design II,3
202108,THEA 5810,Comp Animation Dram Media I,3
202108,THEA 3600,Acting on Camera Fundamentals,3
202108,THEA 2100H,Appreciation of Theatre Hon,3
202108,THEA 2500,Theatre Discipline Profession,3
202108,THEA 9020,Research Problems II,3
202108,THEA 4000,Dramatic Writing I,3
202108,THEA 6000,Dramatic Writing I,3
202108,THEA 8400,Sem in Dram Theory and Crit,3
202108,THEA 7325,Costume Design for Film and TV,3
202108,THEA 5570,Acting for the Camera,3
202108,THEA 3330,Costume Crafts,3
202108,THEA 4400,Asian Theatre and Drama,3
202108,THEA 6400,Asian Theatre and Drama,3
202108,THEA 7371,Digital Design Studio,3
202108,THEA 3700,Design for Film and Television,3
202108,THEA 4480,Hist African Amer Dram Theater,3
202108,THEA 6480,Hist African Amer Dram Theater,3
202108,THEA 5010,Acting II: Scene Study,3
202108,THEA 4800,Topics in History,3
202108,THEA 6800,Topics in History,3
202108,THEA 8100,Seminar in Critical Methods,3
202108,THEA 7865,Visual Narrative,3
202108,THEA 7300,MFA Project,3
202108,THEA 7524,Voice IV Voice for Media,3
202108,THEA 7200,Graduate Thesis Research,3
202108,THEA 5530,Actor Train II Voice for Actor,3
202108,THEA 5580,Performance Topics,3
202108,THEA 7580,Performance Topics,3
202108,THEA 7815,Anim Dram Media I,3
202108,THEA 7590,Performance Process,3
202108,THEA 7770,Internship in the Perform Arts,9
202108,THEA 3350,Lighting Technology,3
202108,THEA 3291H,Script Analysis Honors,3
202108,THEA 5780,Topics in Computer Technology,3
202108,THEA 7780,Topics in Computer Technology,3
202108,THEA 7521,Voice I: Freeing the Voice,3
202108,THEA 5500,Acting III: Advanced Acting,3
202108,THEA 5110,Stage Management,3
202108,THEA 7110,Stage Management,3
202108,THEA 4500,Broadway Mus and Amer Culture,3
202108,THEA 6500,Broadway Mus and Amer Culture,3
202108,THEA 7370,Drawing and Painting Studio,3
202108,THEA 5880,Sound Effects Stage and Screen,3
202108,THEA 7880,Sound Effects Stage and Screen,3
202108,THEA 7875,Multimedia and Perf,3
202108,THEA 8200,History of Performance Arts,3
202108,THEA 7511,The Moving Body Expresses,3
202108,THEA 7784,Dramatic Media Studio IV,3
202108,THEA 8300,Design for Performance Arts,3
202108,THEA 8030,Seminar in Dramatic Writing,3
202108,THEA 7480,Topics in Design,3
202108,THEA 8020,PhD Proseminar II,1
202108,TXMI 2350,Design Fundamentals Interiors,3
202108,TXMI 2360,Studio I,3
202108,TXMI 3210,Fundamen Fashion Merchandising,3
202108,TXMI 3240,Retail Planning and Buying,3
202108,TXMI 3380,Studio III,3
202108,TXMI 3500,Textiles,3
202108,TXMI 3520,Textile Testing,3
202108,TXMI 3540,CAD for App Des,3
202108,TXMI 4160,Prod Dev in Tex Apparel Indus,3
202108,TXMI 4230,Dress Society and Culture,3
202108,TXMI 4250,Apparel and Soft Goods Manufac,3
202108,TXMI 4260,Global Sourcing App,3
202108,TXMI 4290,Hist Dress Fash 19C to Pres,3
202108,TXMI 4350,Hist of Design Interiors Furn,3
202108,TXMI 4390,Studio VI,3
202108,TXMI 4520,Apparel and Textile Economics,3
202108,TXMI 5900,Prof Devel for Fashion Indust,1
202108,TXMI 6160,Prod Dev in Tex Apparel Indus,3
202108,TXMI 6350,Hist of Design Interiors Furn,3
202108,TXMI 2380,Presentation Methods and Media,3
202108,TXMI 8900,TMI Seminar,1
202108,TXMI 9000,Doctoral Research,9
202108,TXMI 7000,Master-s Research,12
202108,TXMI 7300,Master-s Thesis,12
202108,TXMI 4240,Fash Prom-vis Merch,3
202108,TXMI 5240,Retailing Apparel and Textiles,3
202108,TXMI 6290,Hist Dress Fash 19C to Pres,3
202108,TXMI 6240,Fash Prom-vis Merch,3
202108,TXMI 9300,Doctoral Dissertation,12
202108,TXMI 6520,Apparel and Textile Economics,3
202108,TXMI 9010,Directed Research,12
202108,TXMI 5210,Digital Apparel Design,3
202108,TXMI 2010,Creativity Fashion Interiors,3
202108,TXMI 4210,Trend Analysis and Forecasting,3
202108,TXMI 5330,Adv Com Aid Res Des,3
202108,TXMI 7210,Digital Apparel Design,3
202108,TXMI 4300,Studio V,3
202108,TXMI 2100,Textiles for Consumers,3
202108,TXMI 9005,Doc Grad Stu Sem,3
202108,TXMI 4960R,Undergraduate Research I,3
202108,TXMI 5280,Retail Entrepreneurship,4
202108,TXMI 8050,Tmi Research Meth,3
202108,TXMI 8500,Contemporary Topics TMI,3
202108,TXMI 3010,Direct Research,12
202108,TXMI 3910,Prac Fashion,1
202108,TXMI 6230,Dress Society and Culture,3
202108,TXMI 8180,Polymer Science II,3
202108,TXMI 8000,Biomaterials Polymers Fib Text,3
202108,TXMI 8120,Polymer Science I,3
202108,TXMI 8270,Merch Theories Meth,3
202108,TXMI 4970R,Undergraduate Research II,3
202108,UNIV 1110,Introduction to Pre-Calculus,3
202108,UNIV 1201,Learning for Success,2
202108,UNIV 1202,Becoming Active Learners,1
202108,UNIV 1203,Intro Seminar for Scholars,1
202108,UNIV 1204,Preparing for Peer Learning,1
202108,UNIV 1105,Intro English Composition,3
202108,UNIV 2302,Success for Transfer Students,1
202108,UNIV 1201S,Learning for Success,2
202108,UNIV 1205E,Learning Online,1
202108,UNIV 2900,Special Topics in Learning,1
202108,UNIV 2115,Digital Literacies,3
202108,UNIV 2113,Literacies in STEM,1
202108,UNIV 2900,Special Topics in Learning,4
202108,UNIV 2303,Exit Seminar for Scholars,1
202108,UNIV 2302E,Success for Transfer Students,1
202108,UNIV 1108,Essentials of Math Modeling,3
202108,UNIV 2111,Literacies in Humanities,1
202108,UNIV 2112,Literacies in Social Sciences,1
202108,UNIV 2114,Literacies in Pre-Prof Majors,1
202108,UNIV 1201E,Learning for Success,2
202108,URDU 4100,Read and Rsch Urdu,3
202108,URDU 1001,Element Urdu I,4
202108,URDU 2003,Intermed Urdu I,3
202108,URDU 1002,Element Urdu II,4
202108,VBDI 5150,Small Animal Anatomy,4.5
202108,VBDI 5170,Cell Biology,1
202108,VBDI 5180,Vet Microscopic,3
202108,VBDI 5180L,Vet Micro Lab,0
202108,VBDI 5240,Vet Anim Behavior,1.2
202108,VBDI 5214,Behavior Prob Dogs,1
202108,VBDI 5220,Animal Behavior,3.3
202108,VBDI 5310,Veterinary Radiology,3.5
202108,VBDI 7620,Rad Resident II,18
202108,VBDI 7630,Rad Resident III,18
202108,VBDI 5212,Behavior Prob Cats,0.5
202108,VBDI 5214L,Behavior Prob Dogs,0
202108,VBDI 5310L,Veterinary Radiology Lab,0
202108,VBDI 5150L,Small Animal Anatomy Lab,0
202108,VBDI 5481,Sa Ultrasound,2.6
202108,VBDI 7000,Master-s Research,9
202108,VBDI 7140,Vet Animal Behavior,1.3
202108,VBDI 7214,Behavior Prob Dogs,1
202108,VBDI 7214L,Behavior Prob Dogs,0
202108,VBDI 7212,Behavior Prob Cats,0.5
202108,VBDI 5480,Clinical Radiology,3.9
202108,VBDI 8340,Seminar Anim Behav,5
202108,VBDI 8200,Immunotoxicology,2
202108,VBDI 6998E,Endocrine Phys and Pharm,3
202108,VBDI 5901,Clin Anat Rad and Anim Behav,7.8
202108,VBDI 8030,Advanced Veterinary Histology,3
202108,VBDI 5130,Basic Comparative Animal Nutri,1.6
202108,VBDI 7610,Rad Resident I,18
202108,VBDI 4960R,Undergraduate Research I,4
202108,VBDI 6010E,Fundamental Cell Biology,3
202108,VBDI 6020E,Comparative Prevet Anatomy,3
202108,VBDI 6030E,Basic Human Anat Health Sci,3
202108,VBDI 6040E,Pre Vet Pre Medical Histology,3
202108,VBDI 6050E,Neurosci for Hlth Professions,3
202108,VBDI 3200,Companion Animal Behavior,3
202108,VBDI 7040E,Problems in Biosciences,3
202108,VBDI 7010E,Fund Immunol for Health Prof,3
202108,VBDI 7050E,Problems in Anatomy,3
202108,VBDI 7060E,Online Research Communication,3
202108,VBDI 4999E,Comparative Veterinary Anatomy,3
202108,VETM 7000,Master-s Research,18
202108,VETM 7300,Master-s Thesis,18
202108,VETM 9300,Doctoral Dissertation,18
202108,VETM 9000,Doctoral Research,18
202108,VETM 5120,Science of Vet Med,0.5
202108,VETM 8900,VBS Advances,3
202108,VETM 8001,Research Communications,1
202108,VETM 5600,Veterinary Externship I,16
202108,VETM 5240,Appl Integrative Material II,1
202108,VETM 5650,Practice Management,3.9
202108,VETM 5610,Clinical Medicine,16
202108,VETM 5620,Veterinary Externship II,16
202108,VIET 1001,Elementary Vietnamese,4
202108,VIET 2001,Intermediate Vietnamese,3
202108,VIET 3990,Vietnamese Language,3
202108,VIET 3001,Advanced Vietnamese I,3
202108,VIET 3007,Intro to Viet Lit,3
202108,VPAT 5316,Systemic Path II,2
202108,VPAT 5200,Gen Animal Patholog,2.8
202108,VPAT 5200L,Laboratory,0
202108,VPAT 7010,Necropsy Practicum,12
202108,VPAT 7011,Necropsy Pract II,18
202108,VPAT 7012,Necropsy Pract III,18
202108,VPAT 8100,Microscopic Path,3
202108,VPAT 5400,Diagnostic Pathology,3.9
202108,VPAT 9000,Doctoral Research,18
202108,VPAT 9300,Doctoral Dissertation,18
202108,VPAT 7030,Cytology Practicum,12
202108,VPAT 7031,Cytology Pract II,18
202108,VPAT 7032,Cytology Pract III,18
202108,VPAT 7000,Master-s Research,18
202108,VPAT 7020,Biopsy Practicum,12
202108,VPAT 7021,Biopsy Pract II,18
202108,VPAT 7022,Biopsy Pract III,18
202108,VPAT 4960,Directed Readings Projects,5
202108,VPAT 8140,Sem in Vet Path,2
202108,VPAT 8003,Ophthalmopathology Rounds,1
202108,VPAT 8002,Gross Pathology Rounds,1
202108,VPAT 8000,Path Rounds,1
202108,VPAT 8220,Avian Histopath,3
202108,VPAT 7200,Gen Animal Patholog,3.7
202108,VPAT 7200L,Gen Animal Path Lab,0
202108,VPAT 5301,Studies Diag Path,1
202108,VPAT 5401,Anatomic Path Clerk,3.9
202108,VPAT 8006,Clinical Path Journal Club,1
202108,VPAT 8007,Chemistry Seminar,1
202108,VPAT 8050,Prob Vet Pathology,5
202108,VPAT 8008,Biopsy Rounds,1
202108,VPAT 8009,Cytology Rounds,1
202108,VPAT 7300,Master-s Thesis,18
202108,VPAT 8250,Adv Problems in Vet Pathology,6
202108,VPAT 4000,Origins of Disease,3
202108,VPAT 6000,Origins of Disease,3
202108,VPAT 5900,Studies in Pathology,1
202108,VPAT 4960R,Undergraduate Research I,6
202108,VPAT 8330,Laboratory Animal Grand Rounds,1
202108,VPAT 8001,General Pathology Review,1
202108,VPAT 8160,Adv Veterinary Biochemistry,3
202108,VPAT 8160L,Adv Veterinary Biochem Lab,0
202108,VPAT 8005,Cur Lit in Vet Path,1
202108,VPAT 8020,Cell Path,4
202108,VPAT 5900,Studies in Pathology,12
202108,VPHY 9000,Doctoral Research Physiology,18
202108,VPHY 9300,Doct Dissertation,10
202108,VPHY 9020,Doctoral Research Toxicology,18
202108,VPHY 8900,Physiol-Pharm Sem,1
202108,VPHY 8901,Phys Pharm Seminar,1
202108,VPHY 4960,Undergrad Res Phys Pharm,3
202108,VPHY 6930,Rsrch Methods,3
202108,VPHY 3100,Elements of Physiology,3
202108,VPHY 5111,Princ Physiol I,4
202108,VPHY 7111,Princ Physiol I,4
202108,VPHY 5200,Princ of Pharmaco,3.1
202108,VPHY 8330,Lab Appr Phys-phar,3
202108,VPHY 7200,Princ of Pharmaco,3.1
202108,VPHY 8400,Neurophysiology,3
202108,VPHY 5900,Clin Phys and Pharm,8
202108,VPHY 4960,Undergrad Res Phys Pharm,5
202108,VPHY 4960,Undergrad Res Phys Pharm,1
202108,VPHY 7100,Instructional Challenges VPHY,12
202108,VPHY 4960R,Undergraduate Research I,4
202108,VPHY 4960R,Undergraduate Research I,6
202108,VPHY 4970R,Undergraduate Research II,4
202108,VPHY 4980R,Undergraduate Research III,4
202108,VPHY 4990R,Undergraduate Thesis,4
202108,VPHY 4600,Physiological Toxicology,3
202108,VPHY 6600,Physiological Toxicology,3
202108,VPHY 4990R,Undergraduate Thesis,3
202108,VPHY 7050,Capstone Biomedical Physiology,3
202108,VPHY 4200,Physiologic Basis of Diseases,3
202108,VPHY 6200,Physiologic Basis of Diseases,3
202108,VPHY 3101,Elements of Physiology Seminar,1
202108,VPHY 3107L,Integrat Concepts Physiol Lab,1
202108,VPHY 3108,Integrat Concept Physiology II,3
202108,VPHY 8001,Repro Endocrin and Repro Bio,3
202108,VPHY 8010,Mam Cell Physiology,3
202108,WASH 3400,Washington Seminar,3
202108,WASR 4500,Quantitative Methods Hydrology,3
202108,WASR 6500,Quantitative Methods Hydrology,3
202108,WASR 4310,Freshwater Ecosystems,4
202108,WASR 6310,Freshwater Ecosystems,4
202108,WASR 4310L,Freshwater Ecosystems Lab,0
202108,WASR 6310L,Freshwater Ecosystems Lab,0
202108,WASR 1020,Introduction Water Resources,3
202108,WASR 3900,Water and Soil Internship,1
202108,WASR 3900,Water and Soil Internship,2
202108,WASR 3900,Water and Soil Internship,3
202108,WASR 8200,Hillslope Hydrology,3
202108,WASR 8980,Soils and Hydro Probs,3
202108,WFED 3450,Prac Workfrc Ed II,3
202108,WFED 7460,Intern Tch WFED,12
202108,WFED 9300,Doct Dissertation,9
202108,WFED 9000,Doctoral Research,9
202108,WFED 9005,Doc Grad Stu Sem,3
202108,WFED 6350,Cur Plan Workfrc Ed,3
202108,WFED 6360,Inst Strat WFED,3
202108,WFED 4010E,Work and Family Life Education,3
202108,WFED 6010E,Work and Family Life Education,3
202108,WFED 9200,Research Des and Method WFED,3
202108,WFED 4380E,Future of Work,3
202108,WFED 8990,Research Seminar in WFED,3
202108,WFED 6380E,Future of Work,3
202108,WFED 9630,Crit Ed Lit WFED,3
202108,WFED 8020,Interntl Workfrc Ed,3
202108,WFED 8040E,Sit Lrn and Tching,3
202108,WFED 8330E,Expl US Innv Clim,3
202108,WFED 9100,Edu Research In Workforce Ed,3
202108,WFED 2450,Prac Workfrc Ed I,3
202108,WFED 9020,Ldrship Dev WFED,3
202108,WFED 5050E,Problems of Teaching WFED,3
202108,WFED 7050E,Problems of Teaching WFED,3
202108,WFED 7200E,Eval Prg Workfrc Ed,3
202108,WFED 9010E,Work Issues Pol Dev,3
202108,WFED 8030E,Org Bhv Workfrc Ed,3
202108,WFED 9800,Practicum in Workforce Ed,3
202108,WILD 4050,Mammalogy,3
202108,WILD 4050L,Mammalogy Lab,1
202108,WILD 4700,Techniques Wildlife Pop Mgmt,2
202108,WILD 4700L,Tech Wildlife Pop Mgmt Lab,1
202108,WILD 8330,Landscape Ecology,3
202108,WILD 8500,Wild Dis Ecol,3
202108,WILD 6050,Mammalogy,3
202108,WILD 6050L,Mammalogy Lab,1
202108,WILD 6700,Techniques Wildlife Pop Mgmt,2
202108,WILD 6700L,Tech Wildlife Pop Mgmt Lab,1
202108,WILD 3900,Wildlife Internship,1
202108,WILD 7980,Wildlife Problems,3
202108,WILD 3900,Wildlife Internship,2
202108,WILD 3900,Wildlife Internship,3
202108,WILD 4100,Wildlife Habitat,3
202108,WILD 4100L,Wildlife Habitat Lab,0
202108,WILD 4500,Nongame and Endangered Species,3
202108,WILD 6500,Nongame and Endangered Species,3
202108,WILD 5700,Population Dynamics,2
202108,WILD 7700,Population Dynamics,2
202108,WILD 5700L,Population Dynamics Lab,1
202108,WILD 7700L,Population Dynamics Lab,1
202108,WILD 8360,Quant Con Sci,3
202108,WILD 8390L,Est Fish Wildl Lab,0
202108,WILD 8390,Est Fish Wildl Pop,3
202108,WILD 3000W,Intro to Fish Wildlife Mgmt,2
202108,WILD 3001,Fish and Wildlife Policy,1
202108,WILD 4650,Wildlife Techniques Field Camp,4
202108,WILD 6650,Wildlife Techniques Field Camp,4
202108,WILD 4650L,Wildlife Tech Field Camp Lab,0
202108,WILD 6650L,Wildlife Tech Field Camp Lab,0
202108,WILD 7980,Wildlife Problems,2
202108,WILD 8980,Wildlife Problems,1
202108,WILD 8320,Human Wildlife Conflict Resol,2
202108,WILD 3700W,Animal Behavior,3
202108,WILD 8750,Endangered Species Practicum,4
202108,WIPP 7001,Pedagogy of WID,3
202108,WMST 1000,Wmst Seminar,1
202108,WMST 9005,Doctoral Graduate Student Sem,6
202108,WMST 4950,Directed Studies,3
202108,WMST 1110,Multicul Perspect Women in US,3
202108,WMST 3010,Critical Feminist Readings,3
202108,WMST 3110,Gender Race Class Sexuality,3
202108,WMST 4010W,Introduction Feminist Theory,3
202108,WMST 2010,Introduction Women-s Studies,3
202108,WMST 7950,Dir Rsch in Wmst,3
202108,WMST 4011W,Research in Wmst,3
202108,WMST 5000,Internship in Wmst,3
202108,WMST 3100,Diversity in LGBTQ Politics,3
202108,WMST 4010,Intro to Feminist Theories,3
202108,WMST 8020,Feminist Theories,3
202108,WMST 4960R,Undergraduate Research I,3
202108,WMST 4100,Queertheory,3
202108,WMST 6100,Queertheory,3
202108,WMST 8011,Fem Research Method,3
202108,WMST 1110H,Multicul Perspect Women US Hon,3
202108,WMST 4310,Gender and Music Video,3
202108,WMST 2300,Introduction to LGBTQ Studies,3
202108,WMST 4250,Spec Topics in WMST,3
202108,WMST 7770,Teaching in Wmst,3
202108,WMST 6250,Spec Topics in WMST,3
202108,WMST 4260,Women and Music,3
202108,WMST 6260,Women and Music,3
202108,YORB 1010,Elem Yoruba I,4
202108,YORB 2010,Intermed Yoruba I,3
202108,YORB 3990,Directed Study,3
202108,YORB 2030,Yoruba Culture Civilization,3"]

courses_array = []
courses = fall_courses[0].split(/^(?<=)(?=)|($)/)
courses.each { |course| courses_array << course.gsub("\n", '') }
courses_array = courses_array.reject(&:empty?)
courses_array = courses_array.each_slice(1).to_a
courses_array = courses_array.uniq
courses_array = courses_array.collect do |course|
  course[0].split(',')
end
courses_array.each do |course|
  @course = Course.create(course_code: course[1], course_title: course[2], credit_hrs: course[3])
  @course.course_term = AcademicTerm.find_by(academic_term_code: course[0])
  @course.save
end

# # hdfs_courses[0].split(/^(?<=)(?=)|($)/).gsub("\n", '')
# parser_array = []
# course_array = []
# modified_array = []
# def split_course_file(hdfs_courses)
#   hdfs_courses[0].split(/^(?<=)(?=)|($)/)
#   hdfs_courses
# end
#
# def parse_courses_lines(hdfs_courses)
#   courses_array = []
#   hdfs_courses.each { |course| courses_array << course.gsub("\n", '') }
#   # hdfs_courses.collect do |course|
#   #   courses_array << course.gsub("\n", '').reject(&:empty?)
#   # end
#   courses_array.reject(&:empty?)
#   courses_array
# end
#
# def slice_courses(hdfs_courses)
#   hdfs_courses.each_slice(1).to_a
#   hdfs_courses
# end
#
# def make_course_array(hdfs_courses)
#   hdfs_courses_array = []
#   hdfs_courses.collect do |course|
#     hdfs_courses_array << course[0].split(',')
#   end
#   hdfs_courses_array
# end
#
# def create_courses(hdfs_courses)
#   split_course_file(hdfs_courses)
#   parse_courses_lines(hdfs_courses)
#   slice_courses(hdfs_courses)
#   make_course_array(hdfs_courses)
#   hdfs_courses.each do |course|
#     Course.create(course_code: course[1], course_title: course[2], credit_hrs: course[3],
#                   course_term: AcademicTerm.find_by(course[0]))
#   end
# end
#
# create_courses(hdfs_courses)


table_term = ''
table_term_year = ''
table_term_code = ''



