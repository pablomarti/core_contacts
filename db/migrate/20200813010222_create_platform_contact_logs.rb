class CreatePlatformContactLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :platform_contact_logs, id: :uuid do |t|
      t.uuid :contact_id, null: false
      t.integer :kind, default: 0
      t.text :comment

      t.timestamps
    end
  end
end
