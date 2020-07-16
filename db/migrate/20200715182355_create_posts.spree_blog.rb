# This migration comes from spree_blog (originally 20200214000000)
class CreatePosts < SpreeExtension::Migration[5.2]

  def change
    create_table :spree_posts do |t|
      t.string :title
      t.text :body
      t.string :slug
      t.string :meta_keywords
      t.string :meta_description
      t.string :meta_title
      t.integer :user_id
      t.boolean :published

      t.timestamps null: false
    end
  end

end
