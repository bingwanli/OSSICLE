class SetDefaultToPortfolio < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :portfolio, :string, default: nil
  end
end
