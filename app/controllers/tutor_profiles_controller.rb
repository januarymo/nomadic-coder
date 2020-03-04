class TutorProfilesController < ApplicationController
  def index
    @tutor_profiles = Tutor_profile.geocoded
    @markers = Tutor_profile.map do |tutor_profile|
      {
        lat: tutor_profile.latitude,
        lng: tutor_profile.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { tutor_profile: tutor_profile })
      }
    end
  end
end
