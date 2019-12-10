class AddPriceToTeddies < ActiveRecord::Migration[5.2]
  def change
    add_monetize :teddies, :price, currency: { present: false }
    # add_column :teddies, :price_cents, :integer, default: 0, null: false
  end
end
