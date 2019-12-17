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

    it "is invalid without email" do
      @user.email = nil
      expect(@user).to_not be_valid
    end

    it "is invalid without email" do
      @user.email = nil
      expect(@user).to_not be_valid
    end

    it "is invalid without email" do
      @user.email = nil
      expect(@user).to_not be_valid
    end

    it "is invalid without password" do
      @user.password = nil
      expect(@user).to_not be_valid
    end

    it "is invalid with a password with a length less than 5 characters" do
      @user.password = "abcd"
      expect(@user).to_not be_valid
    end

    it "is invalid with a case sensitive password" do
      @user.password = "aAA"
      expect(@user).to_not be_valid
    end

    it "only allows one email address to register" do
      @user.save
      @user1 = User.new(first_name: "Polly", last_name: "Parrot", email: @user.email, password: "abcde", password_confirmation: "abcde")
      @user1.save
      expect(@user1.errors.messages[:email][0]).to eq("has already been taken")
    end

    it "is invalid when user tries to sign up with case sensitive email" do
      @user.save
      @user1 = User.new(first_name: "Polly", last_name: "Parrot", email: "POLLY.PARROT@gmail.com", password: "abcde", password_confirmation: "abcde")
      @user1.save
      expect(@user1.errors.messages[:email][0]).to eq("has already been taken")
    end
  end

  # describe '.authenticate_with_credentials' do
  #   before(:each) do
  #     @user = User.create(id: 1, first_name: "homer", last_name: "simpson", email: "homer@simpson.com", password: "aaa", password_confirmation: "aaa")
  #   end
end
