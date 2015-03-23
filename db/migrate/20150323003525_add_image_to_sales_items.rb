class AddImageToSalesItems < ActiveRecord::Migration
  def change
    add_column :sale_items, :image_id, :string
  end
end
