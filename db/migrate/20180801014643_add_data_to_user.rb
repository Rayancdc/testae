class AddDataToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address_field_1, :string
    add_column :users, :address_field_2, :string
    add_column :users, :address_city, :string
    add_column :users, :address_state, :string
    add_column :users, :address_country, :string
    add_column :users, :zipcode, :string
    add_column :users, :cellphone, :string
  end
end
