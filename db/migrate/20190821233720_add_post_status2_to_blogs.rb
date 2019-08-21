class AddPostStatus2ToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :status2, :integer, default:0
  end
end
