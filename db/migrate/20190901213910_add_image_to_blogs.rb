class AddImageToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :main_image, :text
    add_column :blogs, :thumb_image, :text
  end
end
