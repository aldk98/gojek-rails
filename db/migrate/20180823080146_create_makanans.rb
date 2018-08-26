class CreateMakanans < ActiveRecord::Migration[5.2]
  def change
    create_table :makanans do |t|

      t.timestamps
    end
  end
end
