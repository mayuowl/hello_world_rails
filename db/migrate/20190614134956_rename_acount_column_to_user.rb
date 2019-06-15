class RenameAcountColumnToUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :acount, :account
  end
end
