require 'rails_helper'

describe User do
  it { should validate_presence_of :email }

  it "should have a email" do
    user = FactoryBot.create(:user)
    expect(user.email).to eq "testemail@gmail.com"
  end

  it "should have a password" do
    user = FactoryBot.create(:user)
    expect(user.password).to eq "password"
  end
end
