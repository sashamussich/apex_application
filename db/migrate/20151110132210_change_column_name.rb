class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :members, :first_name, :name
    rename_column :members, :last_name, :phone

  end
end
