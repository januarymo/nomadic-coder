class CreateTutorProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :tutor_profiles do |t|
      t.references :user, foreign_key: true
      t.string :address
      t.string :bio

      t.timestamps
    end
  end
end
