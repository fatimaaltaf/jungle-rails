require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    before(:each) do
      @user = User.new(first_name: "Polly", last_name: "Parrot", email: 'polly.parrot@gmail.com', password: 'qwerty123', password_confirmation: 'qwerty123')
    end 

    it "is valid when all fields are filled" do
      expect(@user).to be_valid
    end
  end
end
