class AdvisorsController < ApplicationController

  # GET /advisors or /advisors.json
  def index
    @advisors = Advisor.all
  end

  # GET /advisors/1 or /advisors/1.json
  def show; end

  # GET /advisors/new
  def new
    @advisor = Advisor.new
  end

  # GET /advisors/1/edit
  def edit; end

  # POST /advisors or /advisors.json
  def create
    @advisor = Advisor.new(advisor_params)

    respond_to do |format|
      if @advisor.save
        format.html { redirect_to @advisor, notice: "Advisor was successfully created." }
        format.json { render :show, status: :created, location: @advisor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @advisor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advisors/1 or /advisors/1.json
  def update
    respond_to do |format|
      if @advisor.update(advisor_params)
        format.html { redirect_to @advisor, notice: "Advisor was successfully updated." }
        format.json { render :show, status: :ok, location: @advisor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @advisor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advisors/1 or /advisors/1.json
  def destroy
    @advisor.destroy
    respond_to do |format|
      format.html { redirect_to advisors_url, notice: "Advisor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def self.from_google(email:, full_name:, uid:, avatar_url:)
    return nil unless email =~ /@google.com\z/
    create_with(uid: uid, full_name: full_name, avatar_url: avatar_url).find_or_create_by!(email: email)
  end

  private
  # Use callbacks to share common setup or constraints between actions.

  # Only allow a list of trusted parameters through.
  def advisor_params
    params.require(:advisor).permit(:first_name, :last_name, :college_id,
                                    :ugamyid, :password,
                                    :password_confirmation,
                                    college_attributes: [:college_code])
  end
end
