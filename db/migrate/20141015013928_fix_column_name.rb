class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :encypted_password, :encrypted_password
  end
end
