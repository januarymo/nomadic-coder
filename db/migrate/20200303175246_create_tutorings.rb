class CreateTutorings < ActiveRecord::Migration[5.2]
  def change
    create_table :tutorings do |t|
      # t.references :user, foreign_key: true # user_id # this creates without reference to the role
      t.references :tutee, foreign_key: { to_table: :users } # tutee_id # users
      t.references :tutor_profile, foreign_key: true
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
