class ChangePageOrderDefaultTo1 < ActiveRecord::Migration
  def up
    change_column_default(Page, :page_order, 1)
  end
end
