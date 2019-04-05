class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title, null:false
      t.string :year, null:false
      t.string :band_id, null:false
      t.boolean :studio, null:false, default:true
      t.timestamps
    end
  end
end
