class RemoveSquadron < ActiveRecord::Migration[6.0]
  def change
    remove_column :staff_members, :squadron
  end
end
