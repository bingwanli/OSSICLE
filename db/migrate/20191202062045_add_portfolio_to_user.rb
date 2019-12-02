class AddPortfolioToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :portfolio, :string
  end
end
