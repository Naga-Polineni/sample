class AddPictureToRecepies < ActiveRecord::Migration
  def change
    add_column :recepies, :picture, :string
  end
end
