class CreateRecepies < ActiveRecord::Migration
  def change
    create_table :recepies do |t|
      t.string :name
      t.string :summary
      t.string :description
      t.timestamps
    end
  end
end
