class CreateSampleChefs < ActiveRecord::Migration
  def change
    create_table :sample_chefs do |t|
      t.string :name
      t.string :email
      t.datetime :original_created_at
      t.datetime :original_updated_at
      t.string :password_digest
      t.timestamps
    end
  end
end
