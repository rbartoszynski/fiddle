class CreateGadgets < ActiveRecord::Migration
  def change
    create_table :gadgets do |t|
      t.string :name
      t.string :description
      t.float :cost

      t.timestamps null: false
    end
  end
end
