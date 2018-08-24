class AddKiToStories < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :daimei, :string
    add_column :stories, :ki, :string
    add_column :stories, :shou, :string
    add_column :stories, :ten, :string
    add_column :stories, :ketsu, :string
  end
end
