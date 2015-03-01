class ChangeNameOfMediumLinkField < ActiveRecord::Migration
  def up
  	add_column :media, :mediatype, :string
  	remove_column :media, :type, :string
  end

  def down
	add_column :media, :type, :string
  	remove_column :media, :mediatype, :string
  end
end
