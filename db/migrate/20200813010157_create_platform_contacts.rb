class CreatePlatformContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :platform_contacts, id: :uuid do |t|
      t.uuid :country_id, null: false
      t.string :first_name, default: ''
      t.string :last_name, default: ''
      t.string :email, default: ''
      t.string :mobile, default: ''
      t.datetime :birth_date
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
