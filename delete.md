
from students_controller: 
# before_action :set_student, only: %i[show edit update destroy]
# before_action :set_permission
# before_action :set_advisor
# def set_permission
#   return head(:forbidden) unless advisor_signed_in?
# end

# def set_student
#   @student = Student.find(params[:id])
# end

# def set_advisor
#   @advisor = current_advisor
# end

from advisors_controller:
# def set_advisor
#   @advisor = current_advisor
# end
before_action :set_advisor, only: %i[show edit update destroy]

