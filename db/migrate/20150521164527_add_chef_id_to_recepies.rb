class AddChefIdToRecepies < ActiveRecord::Migration
  def change
    add_column :recepies, :chef_id, :integer
  end
end
