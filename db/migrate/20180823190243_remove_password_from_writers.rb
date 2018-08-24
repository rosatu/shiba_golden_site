class RemovePasswordFromWriters < ActiveRecord::Migration[5.2]
  def change
    remove_column :writers, :password, :string
  end
end
