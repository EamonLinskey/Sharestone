class FixColumnNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :Users, :hpwn, :Hearthpwn_Name
    rename_column :Users, :bliz, :Blizzard_ID
  end
end
