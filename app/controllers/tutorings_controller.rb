class TutoringsController < ApplicationController


  def create
    @tutoring = Tutoring.new(tutoring_params)


    @tutor_profile = TutorProfile.find(params[:tutor_profile_id])


    @tutoring.tutor_profile = @tutor_profile
    @tutoring.tutee = current_user

    if @tutoring.save
      redirect_to tutor_profile_path(@tutor_profile), notice: "Successfully Booked!"
    else
      render "tutor_profiles/show"
    end
  end



private

  def tutoring_params
    params.require(:tutoring).permit(:start_at, :end_at)
  end
end
