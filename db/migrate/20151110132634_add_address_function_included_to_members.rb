class AddAddressFunctionIncludedToMembers < ActiveRecord::Migration
  def change
    add_column :members, :address, :string
    add_column :members, :function, :string
    add_column :members, :included, :boolean
  end
end
