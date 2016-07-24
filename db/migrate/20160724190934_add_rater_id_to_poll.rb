class AddRaterIdToPoll < ActiveRecord::Migration[5.0]
  def change
    add_column :polls, :rater_id, :integer
  end
end
