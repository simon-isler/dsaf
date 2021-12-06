class CreateStaffMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :staff_members do |t|
      t.string :birthday
      t.string :squadron
      t.string :member_since
      t.string :favourite_aircraft
      t.string :responsibilities
      t.timestamps
    end
  end
end
