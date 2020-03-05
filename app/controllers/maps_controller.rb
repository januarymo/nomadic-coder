class MapsController < ApplicationController
  def show
    if params[:location].blank?
      redirect_to root_path
      return
    end

    results = Geocoder.search(params[:location])
    @center = results.first.coordinates

    @tutor_profiles = TutorProfile.near(@center, 50)
    @markers = @tutor_profiles.map do |tutor_profile|
      {
        lat: tutor_profile.latitude,
        lng: tutor_profile.longitude,
      }
    end
  end
end
