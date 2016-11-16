class CreateAccountTypes < ActiveRecord::Migration
  def change
    create_table :account_types do |t|
      t.string :type
      t.boolean :permission1
      t.boolean :permission2
      t.boolean :permission3

      t.timestamps null: false
    end
  end
end
