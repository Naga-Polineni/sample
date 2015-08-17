class PurgeTokens < ActiveRecord::Migration
  def change
    create_table :purge_tokens do |t|
      t.string :field
      t.timestamps
    end
  end
end
