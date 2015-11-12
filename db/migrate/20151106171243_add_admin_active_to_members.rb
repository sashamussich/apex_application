class AddAdminActiveToMembers < ActiveRecord::Migration
  def change
    add_column :members, :cpf, :integer
    add_column :members, :admin, :boolean
    add_column :members, :active, :boolean
  end
end
