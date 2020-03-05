class AddPictureToUser < ActiveRecord::Migration[5.2]
  def change
    def change
      add_column :users, :picture, :string
    end
  end
end
