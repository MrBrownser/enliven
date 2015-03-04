class AddProjectImageToProjects < ActiveRecord::Migration
  def up
  	add_attachment :projects, :main_picture

  end

  def down
  	remove_attachment :projects, :main_picture
  end
end