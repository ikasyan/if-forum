class CreatePartitions < ActiveRecord::Migration
  def change
    create_table :partitions do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
