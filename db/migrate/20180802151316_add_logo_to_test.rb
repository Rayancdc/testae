class AddLogoToTest < ActiveRecord::Migration[5.2]
  def change
    change_column :tests, :status, :boolean, default: false
    add_column :tests, :logo, :string
    add_column :tests, :company, :string
    add_column :tests, :name, :string
    add_column :tests, :intro, :string
    rename_column :reviews, :image, :screenshot
  end
end
