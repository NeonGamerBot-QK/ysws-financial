class CreateRsvps < ActiveRecord::Migration[8.1]
  def change
    create_table :rsvps do |t|
      t.string :email
      t.string :user_agent
      t.string :ip_address
      t.string :referrer

      t.timestamps
    end

    add_index :rsvps, :email, unique: true
  end
end
