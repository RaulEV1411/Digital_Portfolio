class AddSocialLinksRefToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :social_links, null: false, foreign_key: true
  end
end
