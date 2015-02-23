class AddUserHandlingFieldsToUserModel < ActiveRecord::Migration
  def up
  	change_table(:users, bulk: true) do |t|
  		t.string	:email
  		t.text		:password_digest

  		t.index		:email, unique: true
  	end
  end

  def down
  	remove_column	:users, :email
  	remove_column	:users, :password_digest
  end
end