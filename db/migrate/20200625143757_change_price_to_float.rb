class ChangePriceToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :ducks, :price, :float
  end
end
