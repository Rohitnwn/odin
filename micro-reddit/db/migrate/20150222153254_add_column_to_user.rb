class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :image_filename, :string
    add_column :users, :image_content_type, :string
  end
end
