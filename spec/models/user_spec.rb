require 'rails_helper'

RSpec.describe User, type: :model do
  context "accountを指定している時" do
    it "ユーザーが作られる" do
      user = create(:user)
      expect(user).to be_valid
    end
  end

  context "accountを指定していない時" do
    it "エラーになる" do
      user = build(:user, account: nil)
      user.valid?

      expect(user.errors.messages[:account]).to include "can't be blank"
    end
  end

  context "同じaccountが存在している時" do
    it "エラーになる" do
      create(:user, account: "mayu")
      user = build(:user, account: "mayu")
      user.valid?

      expect(user.errors.messages[:account]).to include "has already been taken"
    end
  end
end
