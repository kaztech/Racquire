class AddProviderToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :full_name, :string
    add_column :users, :current_employer, :string
    add_column :users, :current_job_title, :string
    add_column :users, :skills, :string
  end
end