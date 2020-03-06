class MapsController < ApplicationController
  def show
    if params[:location].blank?
      redirect_to root_path
      return
    end

    results = Geocoder.search(params[:location])
    @center = results.first.coordinates

    @tutor_profiles = TutorProfile.near(@center, 200)

    @markers = @tutor_profiles.map do |tutor_profile|
      {
        lat: tutor_profile.latitude,
        lng: tutor_profile.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: {tutor_profile: tutor_profile})
        #image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end
end
