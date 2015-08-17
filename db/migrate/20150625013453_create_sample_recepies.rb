class CreateSampleRecepies < ActiveRecord::Migration
  def change
    create_table :sample_recepies do |t|
      t.string :name
      t.string :summary
      t.string :description
      t.integer :chef_id
      t.string :picture
      t.timestamps
    end
  end
end
