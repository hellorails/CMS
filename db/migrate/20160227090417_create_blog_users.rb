class CreateBlogUsers < ActiveRecord::Migration
  def change
    create_table :blog_users do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
