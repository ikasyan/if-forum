class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :partition_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
