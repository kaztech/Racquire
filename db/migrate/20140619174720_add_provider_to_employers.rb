class AddProviderToEmployers < ActiveRecord::Migration
  def change
    add_column :employers, :provider, :string
    add_column :employers, :uid, :string
    add_column :employers, :company_name, :string
    add_column :employers, :contact_name, :string
    add_column :employers, :contact_phone, :string
    add_column :employers, :current_employer, :string
    add_column :employers, :current_job_title, :string
    add_column :employers, :skills, :string
  end
end
