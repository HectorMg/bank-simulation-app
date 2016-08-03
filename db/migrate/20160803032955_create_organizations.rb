class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :market
      t.integer :numerator
      t.string :type
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
