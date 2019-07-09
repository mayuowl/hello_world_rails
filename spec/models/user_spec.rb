require 'rails_helper'

RSpec.describe User, type: :model do
  context "accountを指定している時" do
    it "ユーザーが作られる" do
      user = User.new(name: "mayu", account: "mayu", email: "mayu@koko.jp")
      expect(user).to be_valid
    end
  end

  context "accountを指定していない時" do
    it "エラーになる" do
      user = User.new(name: "mayu", account: nil, email: "mayu@hoho.jp")
      expect(user.errors.messages[:account]).to include "can't be blank"
    end
  end

  context "同じaccountが存在している時" do
    it "エラーになる" do
      User.create!(name: "mayu", account: "mayu", email: "mayu@pp.jp")
      user = User.new(name: "mayu", account: "mayu", email: "mayu@pp.jp")
      expect(user.errors.messages[:account]).to include "has already been taken"
    end
  end
end
