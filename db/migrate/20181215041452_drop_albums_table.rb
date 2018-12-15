class DropAlbumsTable < ActiveRecord::Migration[5.2]
    def up
      drop_table :albums
    end

    def down
      raise ActiveRecord::IrreversibleMigration
    end
end
