class CreateLike < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.boolean :like
      t.integer :chef_id , :recepie_id
      t.timestamps
    end
  end
end
