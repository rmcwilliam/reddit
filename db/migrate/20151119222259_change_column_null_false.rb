class ChangeColumnNullFalse < ActiveRecord::Migration
  def change
    change_column_null(:users, :name, :email, false)
  end
end

 