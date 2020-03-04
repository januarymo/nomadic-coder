class TutorProfilesController < ApplicationController
  def index
    @tutor_profiles = Tutor_profile.geocoded
    @markers = Tutor_profile.map do |tutor_profile|
      {
        lat: tutor_profile.latitude,
        lng: tutor_profile.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { tutor_profile: tutor_profile })
        image_url: helpers.asset_url('')
      }

  markers.forEach((marker) => {

  const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

  const element = document.createElement('div');
  element.className = 'marker';
  element.style.backgroundImage = `url('${marker.image_url}')`;
  element.style.backgroundSize = 'contain';
  element.style.width = '25px';
  element.style.height = '25px';

  new mapboxgl.Marker(element)
    .setLngLat([marker.lng, marker.lat])
    .setPopup(popup)
    .addTo(map);
});

    end
  end
end

