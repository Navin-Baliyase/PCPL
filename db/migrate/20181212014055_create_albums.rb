class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :owner
      t.date :created_date

      t.timestamps
    end
  end
end
