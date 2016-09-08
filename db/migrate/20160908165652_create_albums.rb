class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.column  :title, :string
      t.column :subgenre, :string
      t.column :rating, :integer
      t.column :musician_id, :integer

      t.timestamps
    end
  end
end
