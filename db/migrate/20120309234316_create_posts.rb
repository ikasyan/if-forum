class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :topic_id
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
