class AddHpwnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :hpwn, :string
    add_column :users, :bliz, :string
  end
end
