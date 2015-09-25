class CreateCapabilitiesGadgets < ActiveRecord::Migration
  def change
    create_table :capabilities_gadgets do |t|
      t.references :capability, index: true, foreign_key: true
      t.references :gadget, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
