class AddOmniauthToAdvisors < ActiveRecord::Migration[6.1]
  def change
    add_column :advisors, :provider, :string
    add_column :advisors, :uid, :string
  end
end
