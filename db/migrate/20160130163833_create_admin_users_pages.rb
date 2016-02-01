class CreateAdminUsersPages < ActiveRecord::Migration
  def change
    create_table :admin_users_pages, :id => false do |t|
    	t.integer :admin_user_id
    	t.integer :page_id
    end
  end
end