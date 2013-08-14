class CreateTableComments < ActiveRecord::Migration
  def change
    create_table :comments do |comment|
      comment.text :body
      comment.belongs_to :post
      comment.belongs_to :user

      comment.timestamps
    end
  end
end
