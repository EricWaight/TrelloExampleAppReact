class AddBoardIdToStatuses < ActiveRecord::Migration[5.0]
  def change
    add_column :statuses, :board_id, :integer
  end
end
