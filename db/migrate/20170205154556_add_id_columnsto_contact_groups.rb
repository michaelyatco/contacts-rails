class AddIdColumnstoContactGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :contact_groups, :contact_id, :integer
    add_column :contact_groups, :group_id, :integer
  end
end
