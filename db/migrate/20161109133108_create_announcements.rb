class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :title
      t.string :description
      t.datetime :addedDate
      t.integer :idUsers
      t.integer :idCategory
      t.string :idSubcategory

      t.timestamps null: false
    end
  end
end
