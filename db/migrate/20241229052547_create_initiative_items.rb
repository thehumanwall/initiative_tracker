class CreateInitiativeItems < ActiveRecord::Migration[8.0]
  def change
    create_table :initiative_items do |t|
      t.string :name
      t.references :initiative, null: false, foreign_key: true

      t.timestamps
    end
  end
end