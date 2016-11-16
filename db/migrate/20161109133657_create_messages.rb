class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :text
      t.integer :idUserSender
      t.integer :idUserRecipient
      t.datetime :sendTime
      t.datetime :timeReceive
      t.boolean :deleteSender
      t.boolean :deleteRecipient

      t.timestamps null: false
    end
  end
end
