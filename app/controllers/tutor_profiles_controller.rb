class TutorProfilesController < ApplicationController
  def index
    @tutor_profiles = TutorProfile.all
  end

  def show
    @tutor_profile = TutorProfile.find(params[:id])
    @tutoring = Tutoring.new
  end


  def experience_params
  params.require(:experience).permit(:photo)
  end
end
