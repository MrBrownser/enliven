class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
    	t.string 	:type
    	t.string 	:description, default: ""
    	t.string 	:link
    	t.integer	:project_id
		t.timestamps null: false
    end
  end
end