require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    before(:each) do
      @user = User.new(id: 1, first_name: "Polly", last_name: "Parrot", email: 'polly.parrot@gmail.com', password: 'qwerty123', password_confirmation: 'qwerty123')
    end 

    it "is valid when all fields are filled" do
      expect(@user).to be_valid
    end

    it "is invalid without first_name" do
      @user.first_name = nil
      expect(@user).to_not be_valid
    end

    it "is invalid without last_name" do
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end
end
