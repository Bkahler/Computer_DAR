class ChangeSaleItemToSaleItemId < ActiveRecord::Migration
  def up
    remove_column :sale_items, :item_image
  end

  def down
    add_column :sale_items, :item_image_id, :string
  end
end
