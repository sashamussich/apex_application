class ChangeColumnDefaultValueMembers < ActiveRecord::Migration
  def change
    change_column_default :members, :admin, false
  end
end
