class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	# Intro data
    	t.string 	:username
    	t.string 	:fullname
    	t.text		:styles
    	t.text		:summary
    	# Origin data 
    	t.date		:born
		t.string	:nationality
		t.string	:ethnicity
		t.string	:languages
		# Measures
		t.decimal	:height
		t.decimal	:chest
		t.decimal	:waist
		t.decimal	:hips
		t.string	:suit
		t.string	:shirt
		t.string	:pants
		t.decimal	:shoes
		t.string	:eyes
		t.string	:hair
		# Extended info
		t.text		:actingexp
		t.text		:battleexp
		t.text		:adsexp
		t.text		:teachingexp

    	t.timestamps null: false
    end
  end
end