require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
  subject { get(users_path) }
  before do
    create_list(:user, 3)
  end

  it "ユーザの一覧が取得できる" do
    subject
    res = JSON.parse(response.body)
    expect(res.length).to eq 3
    expect(res[0].keys).to eq ["account", "name", "email"]
    expect(response).to have_http_status(200)
  end
  end

  describe "GET /users/:id" do
    it "任意のユーザーの値が取得できる" do
    end
  end

  describe "POST /users" do
    it "ユーザーのレコードが作成できる" do
    end
  end

  describe "PATCH /users/:id" do
    it "任意のユーザーのレコードを更新できる" do
    end
  end

  describe "DELETE /users/:id" do
    it "任意のユーザーのレコードを削除できる" do
    end
  end
end
