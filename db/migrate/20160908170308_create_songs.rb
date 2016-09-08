class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.column :title, :string
      t.column :album_id, :integer
      t.column :musician_id, :integer

      t.timestamps
    end
  end
end
