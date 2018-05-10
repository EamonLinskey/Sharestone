class AddTagsToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :collection, :string, array: true, default: "{}"
  end
end
