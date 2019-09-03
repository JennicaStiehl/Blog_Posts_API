class CreateBlogPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :description
      t.text :requirements
      t.text :instructions
      t.string :references
      t.datetime :published
      t.timestamps
    end
  end
end
