class UsersUsersType < ActiveRecord::Migration[7.0]
  def change
    create_table :users_users_type, id: false do |t|
      t.belongs_to :users
      t.belongs_to :user_types
    end
  end
end
