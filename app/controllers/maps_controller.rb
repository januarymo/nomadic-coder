class MapsController < ApplicationController
  def show
    if params[:location].blank?
      redirect_to root_path
      return
    end

    results = Geocoder.search(params[:location])

    params[:languages] = Language.pluck(:name) if params[:languages].blank?
    @tutor_profiles = TutorProfile
      .joins(:languages)
      .near(results.first.coordinates, 200)
      .where("languages.name IN (?)", params[:languages])
      .distinct

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
