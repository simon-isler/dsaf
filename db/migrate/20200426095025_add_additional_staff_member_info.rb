class AddAdditionalStaffMemberInfo < ActiveRecord::Migration[6.0]
  def change
    add_column :staff_members, :first_name, :string, null: false
    add_column :staff_members, :last_name, :string,  null: false
    add_column :staff_members, :nickname, :string, null: false
  end
end
