class CreateTablePosts < ActiveRecord::Migration
  def change
    create_table :posts do |post|
      post.string :title
      post.string :body
      post.belongs_to :user

      post.timestamps
    end
  end
end
