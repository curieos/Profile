class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :slug
      t.string :image_url
      t.text :body
      t.boolean :published

      t.timestamps
    end
    add_index :posts, :slug, unique: true
  end
end
