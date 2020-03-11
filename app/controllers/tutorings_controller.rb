class TutoringsController < ApplicationController

  def index
    @tutorings = Tutoring.where(tutee: current_user)
  end

  def create
    @tutoring = Tutoring.new(tutoring_params)


    @tutor_profile = TutorProfile.find(params[:tutor_profile_id])


    @tutoring.tutor_profile = @tutor_profile
    @tutoring.tutee = current_user

    if @tutoring.save

      flash[:notice_alert] = ["Successfully Booked!", "Your tutor will contact you to confirm."]

      redirect_to tutorings_path
    else
      render "tutor_profiles/show"
    end
  end



private

  def tutoring_params
    params.require(:tutoring).permit(:start_at, :end_at)
  end
end
