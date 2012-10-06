class AddPageOrderToPages < ActiveRecord::Migration
  def change
    add_column :pages, :page_order, :integer
  end
end
