class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string 	:name
      t.string	:company
      t.text		:description
      t.integer	:user_id
      t.integer	:total_likes
      t.timestamps null: false
    end
  end
end
