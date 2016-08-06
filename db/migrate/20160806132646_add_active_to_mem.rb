class AddActiveToMem < ActiveRecord::Migration
  def change
    add_column :mems, :active, :boolean, default: false
  end
end
