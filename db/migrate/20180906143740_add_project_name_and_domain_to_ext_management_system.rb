class AddProjectNameAndDomainToExtManagementSystem < ActiveRecord::Migration[5.0]
  def change
    add_column :ext_management_systems, :project_name, :string
    add_column :ext_management_systems, :domain_name, :string
  end
end
