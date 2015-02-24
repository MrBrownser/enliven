class AddDefaultValueToTotalLikesAndIndexInProjectsModel < ActiveRecord::Migration
	def change
		change_column_default :projects, :total_likes, 0
		add_index :projects, :user_id
	end
end
