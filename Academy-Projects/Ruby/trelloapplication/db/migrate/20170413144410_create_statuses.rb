class CreateStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :statuses do |t|
      t.string :title
      t.string :description
      t.string :text

      t.timestamps
    end
  end
end
