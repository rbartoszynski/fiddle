class CreateCapabilities < ActiveRecord::Migration
  def change
    create_table :capabilities do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
