class EditOrganizationsTable < ActiveRecord::Migration[5.2]
  def change
    add_column(:organizations, :website, :string)
    remove_column(:organizations, :email, :string)
  end
end
