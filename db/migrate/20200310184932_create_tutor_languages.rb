class CreateTutorLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :tutor_languages do |t|
      t.references :language, foreign_key: true
      t.references :tutor_profile, foreign_key: true

      t.timestamps
    end
  end
end
