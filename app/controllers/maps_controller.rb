class MapsController < ApplicationController
  def show
    @tutor_profiles = TutorProfile.geocoded
    @markers = @tutor_profiles.map do |tutor_profile|
      {
        lat: tutor_profile.latitude,
        lng: tutor_profile.longitude,
      }
    end
  end
end
