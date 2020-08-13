class CreatePlatformCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :platform_countries, id: :uuid do |t|
      t.string :name, null: false
      t.string :code, null: false

      t.timestamps
    end

    add_index :platform_countries, :code, unique: true
  end
end
