class AddFullBioToTutorProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :tutor_profiles, :full_bio, :string
  end
end

