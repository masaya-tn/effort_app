class AddStartTimeToResult < ActiveRecord::Migration[5.2]
  def change
    add_column :results, :start_time, :datetime
  end
end
