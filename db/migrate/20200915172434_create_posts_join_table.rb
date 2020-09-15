class CreatePostsJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :posts do |t|
      # t.index [:user_id, :post_id]
      t.index [:post_id, :user_id], unique: true
    end
  end
end
