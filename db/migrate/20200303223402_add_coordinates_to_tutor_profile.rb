class AddCoordinatesToTutorProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :tutor_profiles, :latitude, :float
    add_column :tutor_profiles, :longitude, :float
  end
end
