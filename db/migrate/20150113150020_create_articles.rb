class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :about
      t.string :user_picture_link
      t.string :user_name
      t.string :country

      t.timestamps
    end
  end
end
