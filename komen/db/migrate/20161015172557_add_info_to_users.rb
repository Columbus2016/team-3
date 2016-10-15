class AddInfoToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :anonymous, :boolean, default: false
    add_column :users, :cancer_type, :string
    add_column :users, :status, :string
    add_column :users, :stage, :integer
    add_column :users, :gender, :string
    add_column :users, :lat, :flaot
    add_column :users, :long, :float
  end
end
