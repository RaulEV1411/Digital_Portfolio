class AddUserRefToProjects < ActiveRecord::Migration[7.0]
  def change
    add_reference :projects, :users, null: false, foreign_key: true
  end
end
