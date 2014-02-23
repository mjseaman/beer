class RenameLevelInItem < ActiveRecord::Migration
  def change
  	rename_column :items, :level, :level_id
  end
end
