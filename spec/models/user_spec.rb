require 'rails_helper'

RSpec.describe User, type: :model do
	describe "Validations testing" do
		it "Validates the presence of email" do
			user = build(:user, email: nil)

			expect(user.valid?).to be false
			expect(user.errors[:email].present?).to be true
		end
		
		it "Validates the presence of username" do
			user = build(:user, username: nil)

			expect(user.valid?).to be false
			expect(user.errors[:username].present?).to be true
		end
		
		it "Validates the presence of birthday" do
			user = build(:user, born: nil)

			expect(user.valid?).to be false
			expect(user.errors[:born].present?).to be true
		end
	end

	# TODO: Tests aren't working!!
	describe "On user creation" do
		it "Validates creation of empty project (Portfolio) for all individual media" do
			user = build(:user)
			project = User.projects.first

			expect(user.projects.empty?).to be false
			expect(project).to eq(project.name)
		end
	end
end
