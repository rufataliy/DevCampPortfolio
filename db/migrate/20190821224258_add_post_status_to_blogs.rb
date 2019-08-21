class AddPostStatusToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :status, :integer, after_initialize default:0
  end
end
