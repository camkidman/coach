class CreatePolls < ActiveRecord::Migration[5.0]
  def change
    create_table :polls do |t|
      t.text :improvement_recommendation
      t.boolean :helpful

      t.timestamps
    end
  end
end
