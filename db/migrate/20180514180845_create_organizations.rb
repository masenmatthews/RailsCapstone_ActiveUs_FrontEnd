class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.column :name, :string
      t.column :category, :string
      t.column :description, :string
      t.column :address, :string
      t.column :phone, :string
      t.column :email, :string

      t.timestamps
    end
  end
end
